/**			�f�W�^��I/O���C�u����
           Revision	0.20
		Programmed by Kyoro
				2019.7.1.                   **/

#include "dio.h"

#if DIO_PNUM == 2

void dio_dwrite0( uint8_t num ) {
	// �w��̐���|�[�g��0���o�͂���
	// num = �|�[�g�ԍ�(0-15)
	if( num > 7 ) {
		num -= 8;
		dio_write0( DIO_PORT2, num );
	}
	else {
		dio_write0( DIO_PORT1 num );
	}
}

void dio_dwrite1( uint8_t num ) {
	// �w��̐���|�[�g��0���o�͂���
	// num = �|�[�g�ԍ�(0-15)
	if( num > 7 ) {
		num -= 8;
		dio_write1( DIO_PORT2, num );
	}
	else {
		dio_write1( DIO_PORT1, num );
	}
}

#endif