/*
 * FDX Mode Selector (Minimum Ver)
 *
 * Created: 2021/11/28 11:05:12
 * Author : Kyoro
 */ 

/* 
FUSE settings:
CKSEL = 01 (4.8MHz)
CKDIV8 = 0 (600KHz)
SUT = 10 (Slow Start)
WDTON = 1 (WDT OFF)
*/

#include "settings.h"

#include <avr/io.h>
#include <avr/interrupt.h>
// #include <avr/power.h>
#include <avr/sleep.h>
#include <avr/sfr_defs.h>
#include <util/delay.h>
#include "dio.h"

void init(void);
void setall(uint8_t flag);
void setmode(uint8_t mode);
ISR(INT0_vect);
ISR(TIM0_COMPA_vect);
ISR(PCINT0_vect);

#define timer_enable() (TIMSK0 |= _BV(OCIE0A))		// OCR0A 割り込み許可
#define timer_disable() (TIMSK0 &= ~_BV(OCIE0A))	// OCR0A 割り込み禁止
#define int0_enable() (GIMSK |= _BV(INT0))			// INT0 割り込み許可
#define int0_disable() (GIMSK &= ~_BV(INT0))		// INT0 割り込み禁止
#define pcint_enable() (GIMSK |= _BV(PCIE))			// PCINT 割り込み許可
#define pcint_disable() (GIMSK &= ~_BV(PCIE))		// PCINT 割り込み禁止
#if OUT_LOGIC										// 出力ピン操作
#define set(pin) (dio_dwrite1(pin));
#define reset(pin) (dio_dwrite0(pin));
#else
#define set(pin) (dio_dwrite0(pin));
#define reset(pin) (dio_dwrite1(pin));
#endif

uint8_t cmode = DEFAULT_MODE;		// 現在のモード
uint8_t pins[] = OUT_PINS;			// 出力ピン指定
uint8_t ledout[] = LED_LOGIC;		// LED出力指定
uint8_t intf = 0;					// 割り込みフラグ(INT0:1-2, PCINT:4)
uint8_t rpowerf = 0;				// RasPi電源フラグ
uint16_t tcount = 0;				// タイマ割り込みカウンタ

int main(void)
{	
	uint8_t f;
	
	init();
	#ifdef PWRSENS
		if(PINB & _BV(PWRSENS))
			setmode(PWRON);
		else
			setmode(DEFAULT_MODE);
		pcint_enable();
		sei();
	#else
		setmode(DEFAULT_MODE);
	#endif
	int0_enable();
	
    while(1) {
		if(f = intf) {
			// モード切替処理
			switch(f & 3) {
				case 1:
					// 短押し
					if(++cmode >= MODES) {
						cmode = 0;
					}
					break;
				case 2:
					// 長押し
					#if LONGPRESS >	0
						cmode = MODES;
					#endif
					break;
				default:
					break;
			}
			if(f & 4) {
				// 電源検知処理
				if(rpowerf) {
					// 電源ON
					cmode = PWRON;
				}
				else {
					// 電源OFF
					cmode = PWROFF;
				}
			}
			setmode(cmode);
			intf = 0;
		}
		
		#ifndef PWRSENS
			// 割り込みを待つ
			while(!intf) {
				sleep_enable();
				sei();
				sleep_cpu();	// PWRSENS未利用時 待ち時間はIDLEモードに
				cli();
				sleep_disable();
			}
		#else
			_delay_ms(1);		// PWRSENS利用時 割り込みを受け付ける時間を確保
		#endif
	}
}

void init(void)
{
	// 初期設定(割り込みはすべて禁止に設定される)
	uint8_t i, p;
	
	cli();
	WDTCR = 0;				// WDT無効化
	TIMSK0 = 0;				// Timer0 割り込み禁止
	TCCR0A = 0b00000010;	// CTCモード
	TCCR0B = 0b00000011;	// プリスケーラ設定 1/64
	OCR0A = 46;				// インターバル設定(5ms)
	GIMSK = 0;				// 外部割込み禁止
	DDRB = 0;				// 全ポートを入力、プルアップ有効に設定
	PORTB = 0xff;
	MCUCR &= ~_BV(PUD);		// プルアップ許可
	ACSR = 0;				// アナログ回路OFF
	intf = 0;
	MCUCR &= ( ~_BV(ISC01) & ~_BV(ISC00));	// INT0(PB1) Lレベルトリガに設定
	set_sleep_mode(SLEEP_MODE_IDLE);		// スリープモードをIdleに設定
	#ifdef PWRSENS							// PCINT使用ピン指定
		PCMSK = _BV(PWRSENS);
	#endif

	cmode = DEFAULT_MODE;
	dio_ddrout(DDRB,LED_PIN);			// LEDピンを出力に設定
	for(i=0; i<MODES+LONGPRESS; i++) {	// モード出力ピンの初期化
		p = pins[i];		
		if(p < 8) {
			dio_ddrout(DDRB, p);
			reset(p);
		}
	}
}

void setall(uint8_t flag)
{
	// 全てのPINをON/OFFに設定する
	uint8_t i, p;
	
	for(i=0; i<MODES+LONGPRESS; i++) {
		p = pins[i];
		if(p < 8) {
			if(flag) {
				set(p);
			}
			else {
				reset(p);
			}
		}
	}	 
	 
}

void setmode(uint8_t mode)
{
	// 指定のモードに切り替える

	// LED出力
	if(LED_PIN < 8) {
		timer_disable();	// 点滅を止める
		switch(ledout[mode]) {
			case 0:
				dio_dwrite0(LED_PIN);
				break;
			case 1:
				dio_dwrite1(LED_PIN);
				break;
			default:
				timer_enable();		//　点滅開始
				break;
		}
	}

	// GPIO出力を切り替える
	setall(0);
	switch(pins[cmode]){
		case 0xfe:
			// All ON
			setall(1);
			break;
		case 0xff:
			// All OFF
			setall(0);
			break;
		default:
			// 個別制御
			set(pins[cmode]);
			break;
		}
}

ISR(INT0_vect)
{
	// INT0 割り込み処理 (モードスイッチ検出)
	// スイッチが離されると戻る
	// 割り込みフラグintf:1のとき短押し、2のとき長押し
	uint16_t i;
	uint8_t f;
	
	int0_disable();
	_delay_ms(15);
	#if LONGPRESS > 0
		f = 2;
		for(i=0; i<LPTIME; i++ ) {
			if(dio_read(PINB,1)) {
				// 指定時間以内に離した場合
				f = 1;
				break;
			}
			_delay_ms(10);
		}
		if(f == 2) {
			// 長押し検知でLEDを一瞬点滅
			PINB |= _BV(LED_PIN);
			_delay_ms(100);
			PINB |= _BV(LED_PIN);
		}
	#else
		f = 1;
	#endif
	while(!dio_read(PINB,1));
	intf |= f;
	
	int0_enable();
}

ISR(TIM0_COMPA_vect)
{
	// Timer0 割り込み処理 (5ms間隔)
	
	if(tcount++==BLTIME) {
		PINB |= _BV(LED_PIN);
		tcount = 0;
	}
}

ISR(PCINT0_vect)
{
	// PCINT 割り込み処理 (RasPi Power Sens)
	#ifdef PWRSENS
		rpowerf = PINB & _BV(PWRSENS);
		intf |= 4;
	#endif
}