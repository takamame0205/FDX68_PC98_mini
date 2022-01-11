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

#define timer_enable() (TIMSK0 |= _BV(OCIE0A))		// OCR0A ���荞�݋���
#define timer_disable() (TIMSK0 &= ~_BV(OCIE0A))	// OCR0A ���荞�݋֎~
#define int0_enable() (GIMSK |= _BV(INT0))			// INT0 ���荞�݋���
#define int0_disable() (GIMSK &= ~_BV(INT0))		// INT0 ���荞�݋֎~
#define pcint_enable() (GIMSK |= _BV(PCIE))			// PCINT ���荞�݋���
#define pcint_disable() (GIMSK &= ~_BV(PCIE))		// PCINT ���荞�݋֎~
#if OUT_LOGIC										// �o�̓s������
#define set(pin) (dio_dwrite1(pin));
#define reset(pin) (dio_dwrite0(pin));
#else
#define set(pin) (dio_dwrite0(pin));
#define reset(pin) (dio_dwrite1(pin));
#endif

uint8_t cmode = DEFAULT_MODE;		// ���݂̃��[�h
uint8_t pins[] = OUT_PINS;			// �o�̓s���w��
uint8_t ledout[] = LED_LOGIC;		// LED�o�͎w��
uint8_t intf = 0;					// ���荞�݃t���O(INT0:1-2, PCINT:4)
uint8_t rpowerf = 0;				// RasPi�d���t���O
uint16_t tcount = 0;				// �^�C�}���荞�݃J�E���^

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
			// ���[�h�ؑ֏���
			switch(f & 3) {
				case 1:
					// �Z����
					if(++cmode >= MODES) {
						cmode = 0;
					}
					break;
				case 2:
					// ������
					#if LONGPRESS >	0
						cmode = MODES;
					#endif
					break;
				default:
					break;
			}
			if(f & 4) {
				// �d�����m����
				if(rpowerf) {
					// �d��ON
					cmode = PWRON;
				}
				else {
					// �d��OFF
					cmode = PWROFF;
				}
			}
			setmode(cmode);
			intf = 0;
		}
		
		#ifndef PWRSENS
			// ���荞�݂�҂�
			while(!intf) {
				sleep_enable();
				sei();
				sleep_cpu();	// PWRSENS�����p�� �҂����Ԃ�IDLE���[�h��
				cli();
				sleep_disable();
			}
		#else
			_delay_ms(1);		// PWRSENS���p�� ���荞�݂��󂯕t���鎞�Ԃ��m��
		#endif
	}
}

void init(void)
{
	// �����ݒ�(���荞�݂͂��ׂċ֎~�ɐݒ肳���)
	uint8_t i, p;
	
	cli();
	WDTCR = 0;				// WDT������
	TIMSK0 = 0;				// Timer0 ���荞�݋֎~
	TCCR0A = 0b00000010;	// CTC���[�h
	TCCR0B = 0b00000011;	// �v���X�P�[���ݒ� 1/64
	OCR0A = 46;				// �C���^�[�o���ݒ�(5ms)
	GIMSK = 0;				// �O�������݋֎~
	DDRB = 0;				// �S�|�[�g����́A�v���A�b�v�L���ɐݒ�
	PORTB = 0xff;
	MCUCR &= ~_BV(PUD);		// �v���A�b�v����
	ACSR = 0;				// �A�i���O��HOFF
	intf = 0;
	MCUCR &= ( ~_BV(ISC01) & ~_BV(ISC00));	// INT0(PB1) L���x���g���K�ɐݒ�
	set_sleep_mode(SLEEP_MODE_IDLE);		// �X���[�v���[�h��Idle�ɐݒ�
	#ifdef PWRSENS							// PCINT�g�p�s���w��
		PCMSK = _BV(PWRSENS);
	#endif

	cmode = DEFAULT_MODE;
	dio_ddrout(DDRB,LED_PIN);			// LED�s�����o�͂ɐݒ�
	for(i=0; i<MODES+LONGPRESS; i++) {	// ���[�h�o�̓s���̏�����
		p = pins[i];		
		if(p < 8) {
			dio_ddrout(DDRB, p);
			reset(p);
		}
	}
}

void setall(uint8_t flag)
{
	// �S�Ă�PIN��ON/OFF�ɐݒ肷��
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
	// �w��̃��[�h�ɐ؂�ւ���

	// LED�o��
	if(LED_PIN < 8) {
		timer_disable();	// �_�ł��~�߂�
		switch(ledout[mode]) {
			case 0:
				dio_dwrite0(LED_PIN);
				break;
			case 1:
				dio_dwrite1(LED_PIN);
				break;
			default:
				timer_enable();		//�@�_�ŊJ�n
				break;
		}
	}

	// GPIO�o�͂�؂�ւ���
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
			// �ʐ���
			set(pins[cmode]);
			break;
		}
}

ISR(INT0_vect)
{
	// INT0 ���荞�ݏ��� (���[�h�X�C�b�`���o)
	// �X�C�b�`���������Ɩ߂�
	// ���荞�݃t���Ointf:1�̂Ƃ��Z�����A2�̂Ƃ�������
	uint16_t i;
	uint8_t f;
	
	int0_disable();
	_delay_ms(15);
	#if LONGPRESS > 0
		f = 2;
		for(i=0; i<LPTIME; i++ ) {
			if(dio_read(PINB,1)) {
				// �w�莞�Ԉȓ��ɗ������ꍇ
				f = 1;
				break;
			}
			_delay_ms(10);
		}
		if(f == 2) {
			// ���������m��LED����u�_��
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
	// Timer0 ���荞�ݏ��� (5ms�Ԋu)
	
	if(tcount++==BLTIME) {
		PINB |= _BV(LED_PIN);
		tcount = 0;
	}
}

ISR(PCINT0_vect)
{
	// PCINT ���荞�ݏ��� (RasPi Power Sens)
	#ifdef PWRSENS
		rpowerf = PINB & _BV(PWRSENS);
		intf |= 4;
	#endif
}