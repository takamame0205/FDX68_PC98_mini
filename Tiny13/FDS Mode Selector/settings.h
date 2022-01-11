/*
 * FDX Mode Selector (Minimum Ver)
 * Settings
 *
 * Created: 2021/11/28 10:22:46
 *  Author: Kyoro
 */ 

/*
Pin configurations:
PB0 : LED Out (Active Low)
PB1 : Mode SW (Momentary:INT0, Active Low)
PB2 : Power Sense (Actove High)
PB3 : Emulation Mode Out (Active High)
PB4 : Controller Mode Out (Active High)
PB5 : Reset

Mode 0:エミュレーションモード(3.5FDD+FDX, LED点灯)
Mode 1:コントローラモード(3.5FDD+5FDD), LED点滅
Mode 2:ノンエミュレーションモード(3.5FDD+5FDD, LED消灯, 長押しで遷移)

起動時はMode 2
RasPi電源状態にて Mode 2 ⇔ Mode 0 (LED点灯) 自動切換え
Mode SW短押しにて Mode 0 ⇔ Mode 1 (LED点滅) トグル

*/

#ifndef DEFINITIONS_H_
#define DEFINITIONS_H_

#define F_CPU 600000UL		// CPUクロック 600KHz

// 設定
#define DEFAULT_MODE 2				// 起動時のモード
#define MODES 2						// 基本モードの数
#define OUT_PINS {3, 4, 0xfe}		// モード別の出力ピン(PBn, 0xfeですべてON, 0xffですべてOFF)
#define OUT_LOGIC 1					// 出力論理(1:Active High, 0:Active Low)
#define LED_PIN 0					// LED出力ピン(0xffで未使用)
#define LED_LOGIC {0, 2, 1}			// モード別のLED出力論理(0:Low, 1:High, 2:Blink)
#define LONGPRESS 1					// 長押しにて特別モードに入る機能(0:未使用, 1:使用)
#define PWRSENS 2					// RasPi電源検知利用(未定義:未使用, 0-5:使用するPCINT番号)
#define PWRON 0						// RasPi電源ON検知後に遷移するモード
#define PWROFF 2					// RasPi電源OFF検知後に遷移するモード
#define LPTIME 300					// 長押し判定時間(×10ms)
#define BLTIME 50					// LED点滅周期(x10ms)

#endif /* DEFINITIONS_H_ */