/**  デジタルI/Oライブラリ　ヘッダファイル
           Revision	0.20
		Programmed by Kyoro
				2019.7.1.                   **/

#ifndef DIO_H_
#define DIO_H_

#include <avr/io.h>

// ポートの指定
#define DIO_PNUM 1			// 制御ポートの数(1-2)
#define DIO_PORT1 PORTB			// 制御ポート1
// #define DIO_PORT2 PORTC			// 制御ポート2(オプション)
#define DIO_DDR1 DDRB			// 制御ポートDDR 1
// #define DIO_DDR2 DDRC			// 制御ポートDDR 2(オプション)	

// 関数マクロ
#define dio_ddrout( ddr, bit ) ( ddr |= ( 1 << bit ) )
#define dio_ddrin( ddr, bit ) ( ddr &= ~( 1 << bit ) ) )
#define dio_write1( port, bit ) ( port |= ( 1 << bit ) )
#define dio_write0( port, bit ) ( port &= ~( 1 << bit ) )
#define dio_read( pin, bit ) ( ( pin >> bit ) & 1 )

// ライブラリ関数
#if DIO_PNUM == 2
void dio_dwrite0( uint8_t num );
void dio_dwrite1( uint8_t num );
#else
#define dio_dwrite0( num ) ( dio_write0( DIO_PORT1, num ) )
#define dio_dwrite1( num ) ( dio_write1( DIO_PORT1, num ) )
#endif

/* 使用方法：

マクロ関数群は、ArduinoのDigitalWrite関数に近い機能を低いオーバーヘッドで提供します

dio_ddrout( DDRレジスタ, bit )
　指定のGPIO(DDRレジスタで指定)の指定のビット(bitで指定)を出力モードに設定する
dio_ddrin( DDRレジスタ, bit )
　指定のGPIO(DDRレジスタで指定)の指定のビット(bitで指定)を入力モードに設定する
dio_write1( PORTレジスタ, bit )
　指定のGPIO(PORTレジスタで指定)の指定のビット(bitで指定)に1を出力する
dio_write0( PORTレジスタ, bit )
　指定のGPIO(PORTレジスタで指定)の指定のビット(bitで指定)に0を出力する
dio_read( PINレジスタ, bit )
　指定のGPIO(PINレジスタで指定)の指定のビット(bitで指定)の内容を読み取り0または1の値を返す

2組のポートを同列に扱いたい場合は以下の関数を使用してください
(num=0-7 で DIO_PORT1, num=8-15 で DIO_PORT2 が指定されます)

dio_dwrite1( num )
　指定のGPIOの指定のビット(numで指定)に1を出力する
dio_dwrite1( num )
　指定のGPIOの指定のビット(numで指定)に0を出力する

*/

#endif /* DIO_H_ */