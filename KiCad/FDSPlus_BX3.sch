EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J3
U 1 1 619E8C39
P 7250 3750
F 0 "J3" H 7300 4767 50  0000 C CNN
F 1 "FDX68" H 7300 4676 50  0000 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-3434_2x17x2.54mm_Straight" H 7250 3750 50  0001 C CNN
F 3 "~" H 7250 3750 50  0001 C CNN
	1    7250 3750
	1    0    0    -1  
$EndComp
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U2
U 1 1 619EC3F3
P 8450 5950
F 0 "U2" H 8794 5996 50  0000 L CNN
F 1 "74HC4066" H 8794 5905 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8450 5950 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 8450 5950 60  0001 C CNN
	1    8450 5950
	0    -1   -1   0   
$EndComp
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U1
U 3 1 619ED282
P 3800 5800
F 0 "U1" H 4144 5846 50  0000 L CNN
F 1 "74HC4066" H 4144 5755 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 3800 5800 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3800 5800 60  0001 C CNN
	3    3800 5800
	1    0    0    -1  
$EndComp
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U1
U 4 1 619EDEA8
P 3200 5400
F 0 "U1" H 3544 5446 50  0000 L CNN
F 1 "74HC4066" H 3350 5300 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 3200 5400 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3200 5400 60  0001 C CNN
	4    3200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2800 3600 2800
Wire Wire Line
	3900 2900 3600 2900
Wire Wire Line
	3900 3000 3600 3000
Wire Wire Line
	3600 3700 3900 3700
Wire Wire Line
	3600 3800 3900 3800
Wire Wire Line
	3600 3900 3900 3900
Wire Wire Line
	3600 4000 3900 4000
Wire Wire Line
	3600 4100 3900 4100
Wire Wire Line
	3600 4200 3900 4200
Wire Wire Line
	4400 2800 4850 2800
Wire Wire Line
	4400 2900 4750 2900
Wire Wire Line
	4400 3000 4850 3000
Wire Wire Line
	4400 3100 4750 3100
Wire Wire Line
	4400 3300 4850 3300
Wire Wire Line
	4400 3400 4650 3400
Wire Wire Line
	4400 3700 4850 3700
Wire Wire Line
	4400 3800 4850 3800
Wire Wire Line
	4400 3900 4850 3900
Wire Wire Line
	4400 4000 4850 4000
Wire Wire Line
	4400 4100 4850 4100
Wire Wire Line
	4400 4200 4850 4200
Text Label 3650 2800 0    50   ~ 0
VCC
Text Label 3650 2900 0    50   ~ 0
VCC
Text Label 3650 3000 0    50   ~ 0
VCC
Wire Wire Line
	3600 3000 3600 2900
Connection ~ 3600 2800
Wire Wire Line
	3600 2800 3600 2500
Connection ~ 3600 2900
Wire Wire Line
	3600 2900 3600 2800
Text Label 4450 2800 0    50   ~ 0
IDX
Text Label 4450 2900 0    50   ~ 0
F_DS0
Text Label 4450 3000 0    50   ~ 0
DCHG
Text Label 4450 3100 0    50   ~ 0
F_RDY
Text Label 3650 3100 0    50   ~ 0
F_DS1
Text Label 3650 3200 0    50   ~ 0
F_HL
Text Label 4450 3200 0    50   ~ 0
F_MON
Text Label 3650 3300 0    50   ~ 0
DEN
Text Label 4450 3300 0    50   ~ 0
DIR
Text Label 3650 3400 0    50   ~ 0
F_MS0
Text Label 4450 3400 0    50   ~ 0
STEP
Text Label 3650 3700 0    50   ~ 0
GND
Text Label 3650 3800 0    50   ~ 0
GND
Text Label 3650 3900 0    50   ~ 0
GND
Text Label 3650 4000 0    50   ~ 0
GND
Text Label 3650 4100 0    50   ~ 0
GND
Text Label 3650 4200 0    50   ~ 0
GND
Wire Wire Line
	3600 3700 3600 3800
Connection ~ 3600 3800
Wire Wire Line
	3600 3800 3600 3900
Connection ~ 3600 3900
Wire Wire Line
	3600 3900 3600 4000
Connection ~ 3600 4000
Wire Wire Line
	3600 4000 3600 4100
Connection ~ 3600 4100
Wire Wire Line
	3600 4100 3600 4200
Connection ~ 3600 4200
Wire Wire Line
	3500 3300 3500 4350
Wire Wire Line
	3500 4350 4850 4350
Wire Wire Line
	3500 3300 3900 3300
Wire Bus Line
	4950 4900 3150 4900
Entry Wire Line
	4850 2800 4950 2900
Entry Wire Line
	4850 3000 4950 3100
Entry Wire Line
	4850 3300 4950 3400
Entry Wire Line
	4850 3400 4950 3500
Entry Wire Line
	4850 4350 4950 4450
Entry Wire Line
	4850 4200 4950 4300
Entry Wire Line
	4850 4100 4950 4200
Entry Wire Line
	4850 4000 4950 4100
Entry Wire Line
	4850 3900 4950 4000
Entry Wire Line
	4850 3800 4950 3900
Entry Wire Line
	4850 3700 4950 3800
Text Label 4450 3700 0    50   ~ 0
WD
Text Label 4450 3800 0    50   ~ 0
WG
Text Label 4450 3900 0    50   ~ 0
T00
Text Label 4450 4000 0    50   ~ 0
WP
Text Label 4450 4100 0    50   ~ 0
RD
Text Label 4450 4200 0    50   ~ 0
SIDE
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U1
U 1 1 61A5044C
P 2100 2200
F 0 "U1" H 2350 2300 50  0000 L CNN
F 1 "74HC4066" H 1600 2400 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2100 2200 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 2100 2200 60  0001 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U1
U 2 1 61A50808
P 3350 2200
F 0 "U1" H 3550 2050 50  0000 L CNN
F 1 "74HC4066" H 2500 2100 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 3350 2200 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 3350 2200 60  0001 C CNN
	2    3350 2200
	-1   0    0    -1  
$EndComp
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U2
U 3 1 61A50812
P 4550 900
F 0 "U2" H 4894 946 50  0000 L CNN
F 1 "74HC4066" H 4894 855 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 4550 900 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4550 900 60  0001 C CNN
	3    4550 900 
	1    0    0    -1  
$EndComp
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U2
U 4 1 61A5081C
P 5300 1950
F 0 "U2" H 5644 1996 50  0000 L CNN
F 1 "74HC4066" H 5644 1905 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5300 1950 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 5300 1950 60  0001 C CNN
	4    5300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3200 3900 3200
Wire Wire Line
	6700 3250 7050 3250
Wire Wire Line
	6700 3450 7050 3450
Wire Wire Line
	6700 3550 7050 3550
Wire Wire Line
	6700 3650 7050 3650
Wire Wire Line
	6700 3750 7050 3750
Wire Wire Line
	6700 3850 7050 3850
Wire Wire Line
	6700 3950 7050 3950
Wire Wire Line
	6700 4050 7050 4050
Wire Wire Line
	6700 4150 7050 4150
Wire Wire Line
	6700 4250 7050 4250
Wire Wire Line
	6700 4350 7050 4350
Wire Wire Line
	6700 4450 7050 4450
Wire Wire Line
	6700 4550 7050 4550
Wire Wire Line
	7550 3150 7950 3150
Wire Wire Line
	7550 3550 7950 3550
Wire Wire Line
	7550 4550 7950 4550
Text Label 6800 2950 0    50   ~ 0
X_MS0
Text Label 6800 3050 0    50   ~ 0
X_MS1
Text Label 7600 2950 0    50   ~ 0
DEN
Text Label 6800 3150 0    50   ~ 0
OPT2
Text Label 7600 3150 0    50   ~ 0
X_DS3
Text Label 6800 3250 0    50   ~ 0
OPT3
Text Label 7600 3250 0    50   ~ 0
IDX
Text Label 7600 3350 0    50   ~ 0
X_DS0
Text Label 7600 3450 0    50   ~ 0
X_DS1
Text Label 7600 3550 0    50   ~ 0
X_DS2
Text Label 7600 3650 0    50   ~ 0
X_MON
Text Label 7600 3750 0    50   ~ 0
DIR
Text Label 7600 3850 0    50   ~ 0
STEP
Text Label 6800 3950 0    50   ~ 0
GND
Text Label 7600 3950 0    50   ~ 0
WD
Text Label 7600 4050 0    50   ~ 0
WG
Text Label 7600 4150 0    50   ~ 0
T00
Text Label 7600 4250 0    50   ~ 0
WP
Text Label 7600 4350 0    50   ~ 0
RD
Text Label 7600 4450 0    50   ~ 0
SIDE
Text Label 7600 4550 0    50   ~ 0
X_RDY
Text Label 6800 4050 0    50   ~ 0
GND
Text Label 6800 4150 0    50   ~ 0
GND
Text Label 6800 4250 0    50   ~ 0
GND
Text Label 6800 4350 0    50   ~ 0
GND
Text Label 6800 4450 0    50   ~ 0
GND
Text Label 6800 4550 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J4
U 1 1 61AD78B2
P 9800 3750
F 0 "J4" H 9850 4767 50  0000 C CNN
F 1 "5FDD" H 9850 4676 50  0000 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-3434_2x17x2.54mm_Straight" H 9800 3750 50  0001 C CNN
F 3 "~" H 9800 3750 50  0001 C CNN
	1    9800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2950 9250 2950
Wire Wire Line
	9250 3150 9600 3150
Wire Wire Line
	9250 3350 9600 3350
Wire Wire Line
	9250 3550 9600 3550
Wire Wire Line
	9250 3850 9600 3850
Wire Wire Line
	9250 3950 9600 3950
Wire Wire Line
	9250 4050 9600 4050
Wire Wire Line
	9250 4150 9600 4150
Wire Wire Line
	9250 4250 9600 4250
Wire Wire Line
	9250 4350 9600 4350
Wire Wire Line
	9250 4450 9600 4450
Wire Wire Line
	10100 4550 10450 4550
Text Label 9350 2950 0    50   ~ 0
GND
Text Label 9350 3050 0    50   ~ 0
WIN
Text Label 10150 2950 0    50   ~ 0
DEN
Text Label 9350 3150 0    50   ~ 0
GND
Text Label 10150 3150 0    50   ~ 0
D_DS3
Text Label 9350 3250 0    50   ~ 0
MFM
Text Label 10150 3250 0    50   ~ 0
IDX
Text Label 10150 3350 0    50   ~ 0
D_DS0
Text Label 10150 3450 0    50   ~ 0
D_DS1
Text Label 10150 3550 0    50   ~ 0
D_DS2
Text Label 10150 3650 0    50   ~ 0
D_MON
Text Label 10150 3750 0    50   ~ 0
DIR
Text Label 10150 3850 0    50   ~ 0
STEP
Text Label 9350 3950 0    50   ~ 0
GND
Text Label 10150 3950 0    50   ~ 0
WD
Text Label 10150 4050 0    50   ~ 0
WG
Text Label 10150 4150 0    50   ~ 0
T00
Text Label 10150 4250 0    50   ~ 0
WP
Text Label 10150 4350 0    50   ~ 0
RD
Text Label 10150 4450 0    50   ~ 0
SIDE
Text Label 10150 4550 0    50   ~ 0
D_RDY
Text Label 9350 4050 0    50   ~ 0
GND
Text Label 9350 4150 0    50   ~ 0
GND
Text Label 9350 4250 0    50   ~ 0
GND
Text Label 9350 4350 0    50   ~ 0
GND
Text Label 9350 4450 0    50   ~ 0
GND
Text Label 10150 3050 0    50   ~ 0
D_HL
Text Label 9350 3350 0    50   ~ 0
GND
Text Label 9350 3450 0    50   ~ 0
SYNC
Text Label 9350 3550 0    50   ~ 0
GND
Text Label 9350 3650 0    50   ~ 0
GND
Text Label 9350 3750 0    50   ~ 0
DSED
Text Label 9350 3850 0    50   ~ 0
GND
Wire Wire Line
	10100 2950 10700 2950
Entry Wire Line
	10700 2950 10800 3050
Wire Wire Line
	10100 3250 10700 3250
Wire Wire Line
	10100 3750 10700 3750
Wire Wire Line
	10100 3850 10700 3850
Wire Wire Line
	10100 3950 10700 3950
Wire Wire Line
	10100 4050 10700 4050
Wire Wire Line
	10100 4150 10700 4150
Wire Wire Line
	10100 4250 10700 4250
Wire Wire Line
	10100 4450 10700 4450
Entry Wire Line
	10700 3250 10800 3350
Entry Wire Line
	10700 3750 10800 3850
Entry Wire Line
	10700 3850 10800 3950
Entry Wire Line
	10700 3950 10800 4050
Entry Wire Line
	10700 4050 10800 4150
Entry Wire Line
	10700 4150 10800 4250
Entry Wire Line
	10700 4250 10800 4350
Entry Wire Line
	10700 4350 10800 4450
Entry Wire Line
	10700 4450 10800 4550
Wire Wire Line
	10100 3650 10650 3650
Wire Wire Line
	9250 2950 9250 3150
Wire Wire Line
	9250 3150 9250 3350
Connection ~ 9250 3150
Wire Wire Line
	9250 3350 9250 3550
Connection ~ 9250 3350
Connection ~ 9250 3550
Connection ~ 9250 3850
Wire Wire Line
	9250 3850 9250 3950
Connection ~ 9250 3950
Wire Wire Line
	9250 3950 9250 4050
Connection ~ 9250 4050
Wire Wire Line
	9250 4050 9250 4150
Connection ~ 9250 4150
Wire Wire Line
	9250 4150 9250 4250
Connection ~ 9250 4250
Wire Wire Line
	9250 4250 9250 4350
Connection ~ 9250 4350
Wire Wire Line
	9250 4350 9250 4450
Connection ~ 9250 4450
Wire Wire Line
	8050 3650 8050 5200
Wire Wire Line
	8050 5200 10650 5200
Wire Wire Line
	7550 3650 8050 3650
Wire Wire Line
	8050 5200 5050 5200
Wire Wire Line
	5050 5200 5050 3200
Wire Wire Line
	4400 3200 5050 3200
Connection ~ 8050 5200
Wire Wire Line
	4750 3100 4750 5400
Wire Wire Line
	10450 4550 10450 5400
Wire Wire Line
	7950 4550 7950 5400
Connection ~ 7950 5400
Wire Wire Line
	7950 5400 10450 5400
Wire Wire Line
	3600 4200 3600 4650
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J1
U 1 1 619E6347
P 2100 3500
F 0 "J1" H 2150 4417 50  0000 C CNN
F 1 "M/B" H 2150 4326 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x15_Pitch2.54mm" H 2100 3500 50  0001 C CNN
F 3 "~" H 2100 3500 50  0001 C CNN
	1    2100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 619F9C74
P 1350 2250
F 0 "#PWR0101" H 1350 2100 50  0001 C CNN
F 1 "+5V" H 1365 2423 50  0000 C CNN
F 2 "" H 1350 2250 50  0001 C CNN
F 3 "" H 1350 2250 50  0001 C CNN
	1    1350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2250 1350 2500
Wire Wire Line
	1350 2800 1900 2800
Wire Wire Line
	1900 2900 1350 2900
Wire Wire Line
	1350 2900 1350 2800
Connection ~ 1350 2800
Wire Wire Line
	1900 3000 1350 3000
Wire Wire Line
	1350 3000 1350 2900
Connection ~ 1350 2900
Wire Wire Line
	1900 4200 1350 4200
Wire Wire Line
	1900 4100 1350 4100
Wire Wire Line
	1900 4000 1350 4000
Wire Wire Line
	1900 3900 1350 3900
Wire Wire Line
	1900 3800 1350 3800
Wire Wire Line
	1900 3700 1350 3700
$Comp
L power:GND #PWR0102
U 1 1 619FDDFD
P 1350 4800
F 0 "#PWR0102" H 1350 4550 50  0001 C CNN
F 1 "GND" H 1355 4627 50  0000 C CNN
F 2 "" H 1350 4800 50  0001 C CNN
F 3 "" H 1350 4800 50  0001 C CNN
	1    1350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4800 1350 4650
Connection ~ 1350 3800
Wire Wire Line
	1350 3800 1350 3700
Connection ~ 1350 3900
Wire Wire Line
	1350 3900 1350 3800
Connection ~ 1350 4000
Wire Wire Line
	1350 4000 1350 3900
Connection ~ 1350 4100
Wire Wire Line
	1350 4100 1350 4000
Connection ~ 1350 4200
Wire Wire Line
	1350 4200 1350 4100
Text Label 1650 2800 0    50   ~ 0
VCC
Text Label 1650 2900 0    50   ~ 0
VCC
Text Label 1650 3000 0    50   ~ 0
VCC
Wire Wire Line
	1900 3100 1600 3100
Wire Wire Line
	1600 3500 1900 3500
Wire Wire Line
	1900 3600 1600 3600
Text Label 1650 3100 0    50   ~ 0
M_DS1
Text Label 1650 3200 0    50   ~ 0
M_HL
Text Label 1650 3300 0    50   ~ 0
DEN
Text Label 1650 3400 0    50   ~ 0
M_MS0
NoConn ~ 1600 3500
Wire Wire Line
	2400 3500 2750 3500
Wire Wire Line
	2400 3600 2750 3600
Text Label 2450 2800 0    50   ~ 0
IDX
Text Label 2450 2900 0    50   ~ 0
M_DS0
Text Label 2450 3000 0    50   ~ 0
DCHG
Text Label 2450 3100 0    50   ~ 0
M_RDY
Text Label 2450 3200 0    50   ~ 0
M_MON
Text Label 2450 3300 0    50   ~ 0
DIR
Text Label 2450 3400 0    50   ~ 0
STEP
Text Label 1650 3600 0    50   ~ 0
M_MS1
Text Label 2450 3600 0    50   ~ 0
STEP1
Text Label 1650 3700 0    50   ~ 0
GND
Text Label 1650 3800 0    50   ~ 0
GND
Text Label 1650 3900 0    50   ~ 0
GND
Text Label 1650 4000 0    50   ~ 0
GND
Text Label 1650 4100 0    50   ~ 0
GND
Text Label 1650 4200 0    50   ~ 0
GND
Text Label 2450 3700 0    50   ~ 0
WD
Text Label 2450 3800 0    50   ~ 0
WG
Text Label 2450 3900 0    50   ~ 0
T00
Text Label 2450 4000 0    50   ~ 0
WP
Text Label 2450 4100 0    50   ~ 0
RD
Text Label 2450 4200 0    50   ~ 0
SIDE
Connection ~ 1350 2500
Wire Wire Line
	1350 2500 1350 2800
Wire Wire Line
	1250 3300 1250 4350
Wire Wire Line
	1250 3300 1900 3300
Connection ~ 1350 4650
Wire Wire Line
	1350 4650 1350 4200
Wire Wire Line
	1100 3200 1100 4550
Wire Wire Line
	1100 3200 1900 3200
Entry Wire Line
	3050 4350 3150 4450
Entry Wire Line
	3050 4200 3150 4300
Entry Wire Line
	3050 4100 3150 4200
Entry Wire Line
	3050 4000 3150 4100
Entry Wire Line
	3050 3900 3150 4000
Entry Wire Line
	3050 3800 3150 3900
Entry Wire Line
	3050 3700 3150 3800
NoConn ~ 2750 3600
Entry Wire Line
	3050 3400 3150 3500
Entry Wire Line
	3050 3300 3150 3400
Entry Wire Line
	3050 3000 3150 3100
Entry Wire Line
	3050 2800 3150 2900
NoConn ~ 2750 3500
Wire Wire Line
	3250 3200 3250 4550
Wire Wire Line
	1350 2500 3600 2500
Wire Wire Line
	2400 2800 3050 2800
Wire Wire Line
	2400 3000 3050 3000
Wire Wire Line
	2400 3300 3050 3300
Wire Wire Line
	2400 3400 3050 3400
Wire Wire Line
	2400 3700 3050 3700
Wire Wire Line
	2400 3800 3050 3800
Wire Wire Line
	2400 3900 3050 3900
Wire Wire Line
	2400 4000 3050 4000
Wire Wire Line
	2400 4100 3050 4100
Wire Wire Line
	2400 4200 3050 4200
Wire Wire Line
	1250 4350 3050 4350
Wire Wire Line
	1100 4550 3250 4550
Wire Wire Line
	1350 4650 3600 4650
Wire Wire Line
	2400 3200 2850 3200
Wire Wire Line
	2900 3100 2900 5400
Wire Wire Line
	2400 3100 2900 3100
Wire Wire Line
	2850 5800 3500 5800
Wire Wire Line
	2850 3200 2850 5800
Wire Wire Line
	3500 5400 4750 5400
Connection ~ 4750 5400
Wire Wire Line
	4100 5800 5050 5800
Wire Wire Line
	5050 5800 5050 5200
Connection ~ 5050 5200
$Comp
L power:+5V #PWR0103
U 1 1 61E66A08
P 3200 5150
F 0 "#PWR0103" H 3200 5000 50  0001 C CNN
F 1 "+5V" H 3150 5300 50  0000 C CNN
F 2 "" H 3200 5150 50  0001 C CNN
F 3 "" H 3200 5150 50  0001 C CNN
	1    3200 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61E825D5
P 3200 5950
F 0 "#PWR0104" H 3200 5700 50  0001 C CNN
F 1 "GND" H 3205 5777 50  0000 C CNN
F 2 "" H 3200 5950 50  0001 C CNN
F 3 "" H 3200 5950 50  0001 C CNN
	1    3200 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61E82A07
P 3800 6050
F 0 "#PWR0105" H 3800 5800 50  0001 C CNN
F 1 "GND" H 3805 5877 50  0000 C CNN
F 2 "" H 3800 6050 50  0001 C CNN
F 3 "" H 3800 6050 50  0001 C CNN
	1    3800 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 61E82D7C
P 3800 5350
F 0 "#PWR0106" H 3800 5200 50  0001 C CNN
F 1 "+5V" H 3750 5500 50  0000 C CNN
F 2 "" H 3800 5350 50  0001 C CNN
F 3 "" H 3800 5350 50  0001 C CNN
	1    3800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5350 3800 5550
Wire Wire Line
	3200 5650 3200 5750
Wire Wire Line
	3500 5950 3400 5950
Wire Wire Line
	3400 5950 3400 5850
Wire Wire Line
	3400 5850 2900 5850
Wire Wire Line
	2900 5850 2900 5550
Connection ~ 2900 5850
Text Label 2900 6200 1    50   ~ 0
EM_MODE
Wire Wire Line
	6700 3950 6700 4050
Connection ~ 6700 4050
Wire Wire Line
	6700 4050 6700 4150
Connection ~ 6700 4150
Wire Wire Line
	6700 4150 6700 4250
Connection ~ 6700 4250
Wire Wire Line
	6700 4250 6700 4350
Connection ~ 6700 4350
Wire Wire Line
	6700 4350 6700 4450
Connection ~ 6700 4450
Wire Wire Line
	6700 4450 6700 4550
Wire Wire Line
	7550 3750 8100 3750
Wire Wire Line
	7550 3850 8100 3850
Wire Wire Line
	7550 3950 8100 3950
Wire Wire Line
	7550 4050 8100 4050
Wire Wire Line
	7550 4150 8100 4150
Wire Wire Line
	7550 4250 8100 4250
Wire Wire Line
	7550 4350 8100 4350
Wire Wire Line
	7550 4450 8100 4450
Entry Wire Line
	8100 3750 8200 3850
Entry Wire Line
	8100 3850 8200 3950
Entry Wire Line
	8100 3950 8200 4050
Entry Wire Line
	8100 4050 8200 4150
Entry Wire Line
	8100 4150 8200 4250
Entry Wire Line
	8100 4250 8200 4350
Entry Wire Line
	8100 4350 8200 4450
Entry Wire Line
	8100 4450 8200 4550
Entry Wire Line
	8100 2950 8200 3050
Entry Wire Line
	8100 3250 8200 3350
Wire Wire Line
	7550 2950 8100 2950
Wire Wire Line
	7550 3250 8100 3250
Wire Bus Line
	8200 4900 4950 4900
Connection ~ 4950 4900
Wire Bus Line
	8200 4900 9400 4900
Wire Bus Line
	9400 4900 9400 4800
Wire Bus Line
	9400 4800 10800 4800
Connection ~ 8200 4900
Wire Wire Line
	3600 4650 6700 4650
Wire Wire Line
	6700 4650 6700 4550
Connection ~ 3600 4650
Connection ~ 6700 4550
Wire Wire Line
	6700 4650 9250 4650
Connection ~ 6700 4650
NoConn ~ 6700 3450
NoConn ~ 6700 3550
NoConn ~ 6700 3650
NoConn ~ 6700 3750
NoConn ~ 6700 3850
NoConn ~ 6700 3250
NoConn ~ 7950 3550
NoConn ~ 7950 3150
$Comp
L power:GND #PWR0107
U 1 1 62159E79
P 11100 2400
F 0 "#PWR0107" H 11100 2150 50  0001 C CNN
F 1 "GND" H 11105 2227 50  0000 C CNN
F 2 "" H 11100 2400 50  0001 C CNN
F 3 "" H 11100 2400 50  0001 C CNN
	1    11100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 2100 11100 2400
Wire Wire Line
	8050 3350 8050 3400
Wire Wire Line
	8050 3400 8550 3400
Wire Wire Line
	8550 3400 8550 3950
Wire Wire Line
	7550 3350 8050 3350
Wire Wire Line
	7550 3450 8450 3450
Wire Wire Line
	8450 3450 8450 5650
Wire Wire Line
	6350 2950 7050 2950
Wire Wire Line
	1450 3400 1900 3400
Wire Wire Line
	6450 6400 1600 6400
Wire Wire Line
	6450 3050 7050 3050
Wire Wire Line
	3400 3400 3900 3400
Wire Wire Line
	4750 5400 7950 5400
$Comp
L FDSPlus_BX3-rescue:4066-cmos4000 U2
U 2 1 619EC9EB
P 8550 4250
F 0 "U2" H 8894 4296 50  0000 L CNN
F 1 "74HC4066" H 8894 4205 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8550 4250 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 8550 4250 60  0001 C CNN
	2    8550 4250
	0    -1   1    0   
$EndComp
Wire Wire Line
	8550 4550 8550 5600
Wire Wire Line
	8450 6250 8450 6300
$Comp
L power:+5V #PWR0108
U 1 1 6235ACAA
P 8200 5950
F 0 "#PWR0108" H 8200 5800 50  0001 C CNN
F 1 "+5V" H 8150 6100 50  0000 C CNN
F 2 "" H 8200 5950 50  0001 C CNN
F 3 "" H 8200 5950 50  0001 C CNN
	1    8200 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 6235C2D0
P 8300 4250
F 0 "#PWR0109" H 8300 4100 50  0001 C CNN
F 1 "+5V" H 8300 4400 50  0000 C CNN
F 2 "" H 8300 4250 50  0001 C CNN
F 3 "" H 8300 4250 50  0001 C CNN
	1    8300 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6235CA7A
P 8800 4250
F 0 "#PWR0110" H 8800 4000 50  0001 C CNN
F 1 "GND" H 8805 4077 50  0000 C CNN
F 2 "" H 8800 4250 50  0001 C CNN
F 3 "" H 8800 4250 50  0001 C CNN
	1    8800 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6235D1A2
P 8700 5950
F 0 "#PWR0111" H 8700 5700 50  0001 C CNN
F 1 "GND" H 8705 5777 50  0000 C CNN
F 2 "" H 8700 5950 50  0001 C CNN
F 3 "" H 8700 5950 50  0001 C CNN
	1    8700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3950 9050 3950
Wire Wire Line
	9050 3950 9050 5300
Wire Wire Line
	9050 5300 9800 5300
Wire Wire Line
	9800 5300 9800 6450
Wire Wire Line
	9800 6450 8600 6450
Wire Wire Line
	8600 6450 8600 6250
Connection ~ 8600 6450
Text Label 8050 6450 0    50   ~ 0
CTL_MODE
Connection ~ 8550 3400
Wire Wire Line
	1800 2200 1600 2200
Wire Wire Line
	1600 2200 1600 3100
Wire Wire Line
	3050 2200 2800 2200
Wire Wire Line
	2800 2200 2800 2900
Wire Wire Line
	2400 2900 2800 2900
Wire Wire Line
	2100 2450 2650 2450
Wire Wire Line
	2100 1950 2650 1950
$Comp
L power:+5V #PWR0112
U 1 1 6243A7F0
P 2100 1950
F 0 "#PWR0112" H 2100 1800 50  0001 C CNN
F 1 "+5V" H 2115 2123 50  0000 C CNN
F 2 "" H 2100 1950 50  0001 C CNN
F 3 "" H 2100 1950 50  0001 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
Connection ~ 2100 1950
Wire Wire Line
	3350 2450 3350 2700
Connection ~ 3350 2450
$Comp
L power:GND #PWR0113
U 1 1 62454060
P 3350 2700
F 0 "#PWR0113" H 3350 2450 50  0001 C CNN
F 1 "GND" H 3355 2527 50  0000 C CNN
F 2 "" H 3350 2700 50  0001 C CNN
F 3 "" H 3350 2700 50  0001 C CNN
	1    3350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2350 3700 2350
Wire Wire Line
	3700 2350 3700 2650
Wire Wire Line
	3700 2650 1800 2650
Wire Wire Line
	1800 2650 1800 2350
Wire Wire Line
	1800 2350 1000 2350
Wire Wire Line
	1000 2350 1000 5850
Wire Wire Line
	1000 5850 2900 5850
Connection ~ 1800 2350
Wire Wire Line
	2550 2200 2550 1100
Wire Wire Line
	2550 1100 4000 1100
Wire Wire Line
	2400 2200 2550 2200
Wire Wire Line
	3650 2200 4000 2200
$Comp
L Jumper:Jumper_3_Bridged12 JP2
U 1 1 624C286C
P 4000 1600
F 0 "JP2" H 4150 1900 50  0000 C CNN
F 1 "DS0_SEL" H 3600 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4000 1600 50  0001 C CNN
F 3 "~" H 4000 1600 50  0001 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP3
U 1 1 624C2E04
P 4000 1400
F 0 "JP3" H 4150 1500 50  0000 C CNN
F 1 "DS1_SEL" H 3600 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4000 1400 50  0001 C CNN
F 3 "~" H 4000 1400 50  0001 C CNN
	1    4000 1400
	1    0    0    1   
$EndComp
Wire Wire Line
	3450 1600 3750 1600
Wire Wire Line
	4000 1100 4000 1250
Wire Wire Line
	4000 1750 4000 2200
Wire Wire Line
	3450 1600 3450 2050
Wire Wire Line
	3450 2050 4750 2050
Wire Wire Line
	4750 2050 4750 2900
Wire Wire Line
	3500 3100 3500 2550
Wire Wire Line
	3500 2550 3800 2550
Wire Wire Line
	3800 2550 3800 1850
Wire Wire Line
	3800 1850 3350 1850
Wire Wire Line
	3350 1850 3350 1400
Wire Wire Line
	3500 3100 3900 3100
Wire Wire Line
	3350 1400 3750 1400
Wire Wire Line
	4250 1400 4850 1400
Wire Wire Line
	4250 1600 5600 1600
Wire Wire Line
	8550 1600 8550 3400
Wire Wire Line
	3750 1600 3750 1800
Wire Wire Line
	3750 1800 5000 1800
Wire Wire Line
	5000 1800 5000 1950
Connection ~ 3750 1600
Wire Wire Line
	5600 1950 5600 1600
Connection ~ 5600 1600
Wire Wire Line
	5600 1600 8550 1600
Wire Wire Line
	3750 1400 3750 900 
Wire Wire Line
	3750 900  4250 900 
Connection ~ 3750 1400
Wire Wire Line
	4850 900  4850 1400
Wire Wire Line
	4250 1050 4250 1300
Wire Wire Line
	4250 1300 4950 1300
Wire Wire Line
	4950 1300 4950 2100
Wire Wire Line
	4950 2100 5000 2100
Wire Wire Line
	4950 2100 4950 2450
Wire Wire Line
	4950 2450 5950 2450
Wire Wire Line
	5950 2450 5950 6450
Wire Wire Line
	5950 6450 8600 6450
Connection ~ 4950 2100
Wire Wire Line
	4550 650  5300 650 
$Comp
L power:GND #PWR0114
U 1 1 62717478
P 5300 2200
F 0 "#PWR0114" H 5300 1950 50  0001 C CNN
F 1 "GND" H 5305 2027 50  0000 C CNN
F 2 "" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2200 4550 2200
Wire Wire Line
	4550 2200 4550 1150
Connection ~ 5300 2200
Wire Wire Line
	4550 650  3050 650 
Wire Wire Line
	3050 650  3050 1950
Connection ~ 4550 650 
Connection ~ 3050 1950
Wire Wire Line
	3050 1950 3350 1950
$Comp
L MCU_Microchip_ATtiny:ATtiny13A-PU U3
U 1 1 6275F8DE
P 4050 7100
F 0 "U3" H 3520 7146 50  0000 R CNN
F 1 "ATtiny13A-PU" H 3520 7055 50  0000 R CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 4050 7100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 4050 7100 50  0001 C CNN
	1    4050 7100
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 628348EC
P 4050 6200
F 0 "#PWR0115" H 4050 6050 50  0001 C CNN
F 1 "+5V" H 4000 6350 50  0000 C CNN
F 2 "" H 4050 6200 50  0001 C CNN
F 3 "" H 4050 6200 50  0001 C CNN
	1    4050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6200 4050 6350
$Comp
L power:GND #PWR0116
U 1 1 62857F40
P 5000 7550
F 0 "#PWR0116" H 5000 7300 50  0001 C CNN
F 1 "GND" H 5005 7377 50  0000 C CNN
F 2 "" H 5000 7550 50  0001 C CNN
F 3 "" H 5000 7550 50  0001 C CNN
	1    5000 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7700 4800 7700
Wire Wire Line
	4800 7700 4800 7550
Wire Wire Line
	4800 7550 5000 7550
Wire Wire Line
	2900 7100 3450 7100
Wire Wire Line
	5950 6450 3000 6450
Wire Wire Line
	3000 6450 3000 7200
Wire Wire Line
	3000 7200 3450 7200
Connection ~ 5950 6450
$Comp
L Device:R R1
U 1 1 628E9D86
P 2650 7300
F 0 "R1" V 2443 7300 50  0000 C CNN
F 1 "22k" V 2534 7300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2580 7300 50  0001 C CNN
F 3 "~" H 2650 7300 50  0001 C CNN
	1    2650 7300
	0    1    1    0   
$EndComp
Connection ~ 4050 6350
Wire Wire Line
	4050 6350 4050 6500
Wire Wire Line
	2500 6350 2500 7300
Wire Wire Line
	2500 6350 4050 6350
Wire Wire Line
	3450 6800 2350 6800
$Comp
L Device:R R2
U 1 1 62A166FE
P 2200 6800
F 0 "R2" V 1993 6800 50  0000 C CNN
F 1 "220" V 2084 6800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2130 6800 50  0001 C CNN
F 3 "~" H 2200 6800 50  0001 C CNN
	1    2200 6800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 62A3D049
P 2000 7500
F 0 "#PWR0117" H 2000 7250 50  0001 C CNN
F 1 "GND" H 2005 7327 50  0000 C CNN
F 2 "" H 2000 7500 50  0001 C CNN
F 3 "" H 2000 7500 50  0001 C CNN
	1    2000 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 62A63EA3
P 1750 6700
F 0 "#PWR0118" H 1750 6550 50  0001 C CNN
F 1 "+5V" H 1700 6850 50  0000 C CNN
F 2 "" H 1750 6700 50  0001 C CNN
F 3 "" H 1750 6700 50  0001 C CNN
	1    1750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6700 1750 6700
Wire Wire Line
	1350 6800 2050 6800
Wire Wire Line
	1350 6900 3450 6900
Wire Wire Line
	1350 7100 1750 7100
Text Label 1400 6700 0    50   ~ 0
VCC
Text Label 1400 6800 0    50   ~ 0
LED
Text Label 1400 6900 0    50   ~ 0
M_SW
Text Label 1400 7100 0    50   ~ 0
GND
$Comp
L Device:CP C1
U 1 1 61ACA00C
P 750 3400
F 0 "C1" H 868 3446 50  0000 L CNN
F 1 "47" H 800 3300 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 788 3250 50  0001 C CNN
F 3 "~" H 750 3400 50  0001 C CNN
	1    750  3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3000 750  3000
Wire Wire Line
	750  3000 750  3250
Connection ~ 1350 3000
Wire Wire Line
	750  3550 750  3700
Wire Wire Line
	750  3700 1350 3700
Connection ~ 1350 3700
$Comp
L Device:C C2
U 1 1 61B1BB08
P 2650 2200
F 0 "C2" H 2700 2300 50  0000 L CNN
F 1 "0.1" H 2450 2100 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2688 2050 50  0001 C CNN
F 3 "~" H 2650 2200 50  0001 C CNN
	1    2650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2050 2650 1950
Connection ~ 2650 1950
Wire Wire Line
	2650 1950 3050 1950
Wire Wire Line
	2650 2350 2650 2450
Connection ~ 2650 2450
Wire Wire Line
	2650 2450 3350 2450
$Comp
L Device:C C3
U 1 1 61B6DF97
P 2700 5450
F 0 "C3" H 2750 5550 50  0000 L CNN
F 1 "0.1" H 2500 5350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2738 5300 50  0001 C CNN
F 3 "~" H 2700 5450 50  0001 C CNN
	1    2700 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61B6E57A
P 5250 6950
F 0 "C4" H 5050 7050 50  0000 L CNN
F 1 "0.1" H 5050 6850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5288 6800 50  0001 C CNN
F 3 "~" H 5250 6950 50  0001 C CNN
	1    5250 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5300 2700 5150
Wire Wire Line
	2700 5150 3200 5150
Connection ~ 3200 5150
Wire Wire Line
	2700 5600 2700 5750
Wire Wire Line
	2700 5750 3200 5750
Connection ~ 3200 5750
Wire Wire Line
	3200 5750 3200 5950
Wire Wire Line
	4050 6350 5250 6350
Wire Wire Line
	5250 6350 5250 6800
Wire Wire Line
	5250 7100 5250 7550
Wire Wire Line
	5250 7550 5000 7550
Connection ~ 5000 7550
Wire Wire Line
	1450 6250 6350 6250
Wire Wire Line
	2900 5850 2900 7100
Text Notes 7400 7500 0    59   ~ 12
FDX68 / FDD Selector for PC-98
Connection ~ 4850 1400
Wire Wire Line
	4850 1400 8450 1400
Connection ~ 8450 3450
Wire Wire Line
	8450 1400 8450 3450
Wire Wire Line
	10100 4350 10700 4350
Wire Wire Line
	6450 3050 6450 6400
Wire Wire Line
	10100 3150 10500 3150
Wire Wire Line
	10100 3050 10500 3050
NoConn ~ 10500 3150
NoConn ~ 10500 3550
Wire Wire Line
	10100 3550 10500 3550
Wire Wire Line
	10650 5200 10650 3650
Wire Wire Line
	10700 3350 10700 3450
Wire Wire Line
	10700 3450 10900 3450
Wire Wire Line
	10900 3450 10900 5600
Wire Wire Line
	10100 3350 10700 3350
Wire Wire Line
	10600 3450 10600 3550
Wire Wire Line
	10600 3550 11000 3550
Wire Wire Line
	11000 3550 11000 6300
Wire Wire Line
	10100 3450 10600 3450
Wire Wire Line
	8550 5600 10900 5600
Wire Wire Line
	8450 6300 11000 6300
Wire Wire Line
	5300 650  5300 1700
Wire Wire Line
	5600 4550 5700 4550
$Comp
L Diode:BAT43 D5
U 1 1 620B4235
P 5450 4550
F 0 "D5" H 5600 4600 50  0000 C CNN
F 1 "BAT43" H 5450 4450 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5450 4375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85660/bat42.pdf" H 5450 4550 50  0001 C CNN
	1    5450 4550
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAT43 D6
U 1 1 61CC1122
P 9950 2650
F 0 "D6" H 10100 2700 50  0000 C CNN
F 1 "BAT43" H 9950 2776 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9950 2475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85660/bat42.pdf" H 9950 2650 50  0001 C CNN
	1    9950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2650 10500 3050
Wire Wire Line
	10100 2650 10500 2650
$Comp
L Jumper:Jumper_2_Open JP4
U 1 1 61D50E1B
P 6200 2650
F 0 "JP4" H 6200 2885 50  0000 C CNN
F 1 "P4_TO_MS" H 6200 2794 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6200 2650 50  0001 C CNN
F 3 "~" H 6200 2650 50  0001 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP6
U 1 1 61D519A9
P 9400 2650
F 0 "JP6" H 9400 2885 50  0000 C CNN
F 1 "P4_TO_HL" H 9400 2794 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9400 2650 50  0001 C CNN
F 3 "~" H 9400 2650 50  0001 C CNN
	1    9400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2650 6000 2650
Wire Wire Line
	9600 2650 9800 2650
Text Label 7600 3050 0    50   ~ 0
X_PIN4
Wire Wire Line
	7550 3050 7950 3050
Wire Wire Line
	6400 2650 7600 2650
Wire Wire Line
	7600 2650 7600 2750
Wire Wire Line
	7600 2750 7950 2750
Connection ~ 7950 2750
Wire Wire Line
	7950 2750 7950 3050
Wire Wire Line
	7950 2750 9200 2750
Wire Wire Line
	9200 2750 9200 2650
Wire Wire Line
	10500 2650 10500 2600
Connection ~ 10500 2650
Wire Wire Line
	10500 2200 10500 2100
Wire Wire Line
	10500 2100 11100 2100
$Comp
L Jumper:Jumper_2_Open JP7
U 1 1 61F92C97
P 10500 2400
F 0 "JP7" V 10454 2498 50  0000 L CNN
F 1 "FORCE_HL" V 10545 2498 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10500 2400 50  0001 C CNN
F 3 "~" H 10500 2400 50  0001 C CNN
	1    10500 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 4450 9250 4650
Text Label 9350 4550 0    50   ~ 0
NC
Wire Wire Line
	9250 3650 9250 3550
Connection ~ 9250 3650
Wire Wire Line
	9250 3650 9600 3650
Wire Wire Line
	9250 3650 9250 3850
NoConn ~ 9300 4550
NoConn ~ 9300 3750
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J2
U 1 1 61D66719
P 4100 3500
F 0 "J2" H 4150 4417 50  0000 C CNN
F 1 "3.5FDD" H 4150 4326 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x15_Pitch2.54mm" H 4100 3500 50  0001 C CNN
F 3 "~" H 4100 3500 50  0001 C CNN
	1    4100 3500
	1    0    0    -1  
$EndComp
Connection ~ 3400 4550
Wire Wire Line
	3400 4550 3400 4800
Wire Wire Line
	3400 3400 3400 4550
Wire Wire Line
	5700 2650 5700 4550
Wire Wire Line
	3400 4550 5300 4550
Wire Wire Line
	4400 3600 4650 3600
Wire Wire Line
	4650 3600 4650 3400
Connection ~ 4650 3400
Wire Wire Line
	4650 3400 4850 3400
Text Label 4450 3600 0    50   ~ 0
STEP
NoConn ~ 4400 3500
NoConn ~ 3900 3500
Wire Wire Line
	1450 3400 1450 4800
Wire Wire Line
	1600 3600 1600 4750
Text Label 3650 3600 0    50   ~ 0
F_MS1
Wire Wire Line
	3400 4800 1450 4800
Connection ~ 1450 4800
Wire Wire Line
	1450 4800 1450 6250
Wire Wire Line
	3900 3600 3350 3600
Wire Wire Line
	3350 3600 3350 4750
Wire Wire Line
	3350 4750 1600 4750
Connection ~ 1600 4750
Wire Wire Line
	1600 4750 1600 6400
Text Notes 4250 1700 0    50   ~ 0
FDX
Text Notes 3450 1700 0    50   ~ 0
3.5FDD
Wire Wire Line
	9300 3750 9600 3750
Wire Wire Line
	9300 4550 9600 4550
NoConn ~ 9300 3050
NoConn ~ 9300 3250
NoConn ~ 9300 3450
Wire Wire Line
	9300 3050 9600 3050
Wire Wire Line
	9300 3250 9600 3250
Wire Wire Line
	9300 3450 9600 3450
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 620AF721
P 1150 6900
F 0 "J5" H 1068 7317 50  0000 C CNN
F 1 "SW" H 1068 7226 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.54mm" H 1150 6900 50  0001 C CNN
F 3 "~" H 1150 6900 50  0001 C CNN
	1    1150 6900
	-1   0    0    -1  
$EndComp
Text Label 1400 7000 0    50   ~ 0
DS1INH
Wire Wire Line
	2800 7300 3450 7300
Wire Wire Line
	1350 7000 2000 7000
Wire Wire Line
	6350 2950 6350 6250
Wire Wire Line
	2000 7000 2000 4850
Wire Wire Line
	2000 4850 6150 4850
Wire Wire Line
	6150 4850 6150 4150
Connection ~ 2000 7000
Wire Wire Line
	2000 7000 3450 7000
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 6225BA17
P 6150 3950
F 0 "JP1" H 6150 3850 50  0000 C CNN
F 1 "PWR_SENS" H 6150 4094 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6150 3950 50  0001 C CNN
F 3 "~" H 6150 3950 50  0001 C CNN
	1    6150 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3350 7050 3350
NoConn ~ 6700 3350
Wire Wire Line
	6150 3150 7050 3150
Wire Wire Line
	6150 3150 6150 3750
$Comp
L Device:R R3
U 1 1 622EE6F3
P 2000 7250
F 0 "R3" V 1793 7250 50  0000 C CNN
F 1 "22k" V 1884 7250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1930 7250 50  0001 C CNN
F 3 "~" H 2000 7250 50  0001 C CNN
	1    2000 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 7100 2000 7000
Wire Wire Line
	2000 7500 2000 7450
Wire Wire Line
	1750 7100 1750 7450
Wire Wire Line
	1750 7450 2000 7450
Connection ~ 2000 7450
Wire Wire Line
	2000 7450 2000 7400
Wire Bus Line
	8200 3050 8200 4900
Wire Bus Line
	10800 3050 10800 4800
Wire Bus Line
	4950 2900 4950 4900
Wire Bus Line
	3150 2900 3150 4900
$EndSCHEMATC
