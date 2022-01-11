/**			デジタルI/Oライブラリ
           Revision	0.20
		Programmed by Kyoro
				2019.7.1.                   **/

#include "dio.h"

#if DIO_PNUM == 2

void dio_dwrite0( uint8_t num ) {
	// 指定の制御ポートに0を出力する
	// num = ポート番号(0-15)
	if( num > 7 ) {
		num -= 8;
		dio_write0( DIO_PORT2, num );
	}
	else {
		dio_write0( DIO_PORT1 num );
	}
}

void dio_dwrite1( uint8_t num ) {
	// 指定の制御ポートに0を出力する
	// num = ポート番号(0-15)
	if( num > 7 ) {
		num -= 8;
		dio_write1( DIO_PORT2, num );
	}
	else {
		dio_write1( DIO_PORT1, num );
	}
}

#endif