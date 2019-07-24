EESchema Schematic File Version 4
LIBS:cpu_luefter_ansteuerung-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Lüftersteuerung"
Date "2019-06-20"
Rev "2.5"
Comp "Thorsten Kattanek"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8500 650  0    60   ~ 0
Für BC817-40 kann auch BC337-25 verwendet werden.
$Comp
L power:+5V #PWR012
U 1 1 56E565E0
P 4900 3500
F 0 "#PWR012" H 4900 3350 50  0001 C CNN
F 1 "+5V" H 4918 3674 50  0000 C CNN
F 2 "" H 4900 3500 50  0000 C CNN
F 3 "" H 4900 3500 50  0000 C CNN
	1    4900 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 56FFA22A
P 2200 7450
F 0 "#PWR06" H 2200 7200 50  0001 C CNN
F 1 "GND" H 2208 7276 50  0000 C CNN
F 2 "" H 2200 7450 50  0000 C CNN
F 3 "" H 2200 7450 50  0000 C CNN
	1    2200 7450
	1    0    0    -1  
$EndComp
Text Notes 1650 6350 0    60   ~ 0
5V Spannungsversorgung
Text Notes 1050 4750 0    60   ~ 0
12V Anschluss\n
$Comp
L power:GND #PWR04
U 1 1 56FFF5F3
P 1100 5200
F 0 "#PWR04" H 1100 4950 50  0001 C CNN
F 1 "GND" H 1108 5026 50  0000 C CNN
F 2 "" H 1100 5200 50  0000 C CNN
F 3 "" H 1100 5200 50  0000 C CNN
	1    1100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 56FFF641
P 950 5000
F 0 "#PWR01" H 950 4850 50  0001 C CNN
F 1 "+12V" V 968 5127 50  0000 L CNN
F 2 "" H 950 5000 50  0000 C CNN
F 3 "" H 950 5000 50  0000 C CNN
	1    950  5000
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR020
U 1 1 575A7B6E
P 8800 4550
F 0 "#PWR020" H 8800 4400 50  0001 C CNN
F 1 "+12V" V 8818 4677 50  0000 L CNN
F 2 "" H 8800 4550 50  0000 C CNN
F 3 "" H 8800 4550 50  0000 C CNN
	1    8800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 575A7E09
P 8800 5650
F 0 "#PWR021" H 8800 5400 50  0001 C CNN
F 1 "GND" V 8808 5522 50  0000 R CNN
F 2 "" H 8800 5650 50  0000 C CNN
F 3 "" H 8800 5650 50  0000 C CNN
	1    8800 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5350 8500 5350
Wire Wire Line
	2500 6900 2750 6900
Wire Wire Line
	2750 7350 2750 7300
Connection ~ 2200 7350
Wire Wire Line
	1550 7300 1550 7350
Connection ~ 1550 6900
Connection ~ 2750 6900
Wire Wire Line
	950  5000 1200 5000
Wire Wire Line
	1200 5100 1100 5100
Wire Wire Line
	1100 5100 1100 5200
Wire Wire Line
	8500 4650 8800 4650
Wire Wire Line
	8800 5650 8800 5550
Wire Wire Line
	8800 5150 8800 5050
Wire Wire Line
	8800 4550 8800 4650
Connection ~ 8800 4650
Wire Wire Line
	8500 5050 8800 5050
Connection ~ 8800 5050
Wire Wire Line
	9050 4650 9400 4900
Wire Wire Line
	9400 4900 9700 4900
Wire Wire Line
	9700 4800 9400 4800
Wire Wire Line
	9400 4800 9050 5050
Wire Wire Line
	8500 4650 8500 4700
Wire Wire Line
	8500 5000 8500 5050
NoConn ~ 9700 5000
$Comp
L power:GND #PWR013
U 1 1 575F900F
P 5050 5300
F 0 "#PWR013" H 5050 5050 50  0001 C CNN
F 1 "GND" H 5058 5126 50  0000 C CNN
F 2 "" H 5050 5300 50  0000 C CNN
F 3 "" H 5050 5300 50  0000 C CNN
	1    5050 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 5300 5050 5300
Text Notes 3150 4750 0    60   ~ 0
Taster zum umschalten der Geschwindigkeit\n0 - AUS\n1 - 5 Stufen
$Comp
L power:+5V #PWR014
U 1 1 575FF801
P 5900 6950
F 0 "#PWR014" H 5900 6800 50  0001 C CNN
F 1 "+5V" H 5918 7124 50  0000 C CNN
F 2 "" H 5900 6950 50  0000 C CNN
F 3 "" H 5900 6950 50  0000 C CNN
	1    5900 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 6950 5900 6950
$Comp
L power:GND #PWR015
U 1 1 575FFA1E
P 5900 7150
F 0 "#PWR015" H 5900 6900 50  0001 C CNN
F 1 "GND" V 5908 7022 50  0000 R CNN
F 2 "" H 5900 7150 50  0000 C CNN
F 3 "" H 5900 7150 50  0000 C CNN
	1    5900 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 7150 5900 7150
$Comp
L power:+12V #PWR03
U 1 1 5761AD56
P 1000 6900
F 0 "#PWR03" H 1000 6750 50  0001 C CNN
F 1 "+12V" V 1018 7027 50  0000 L CNN
F 2 "" H 1000 6900 50  0000 C CNN
F 3 "" H 1000 6900 50  0000 C CNN
	1    1000 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5761B121
P 3250 6900
F 0 "#PWR07" H 3250 6750 50  0001 C CNN
F 1 "+5V" H 3268 7074 50  0000 C CNN
F 2 "" H 3250 6900 50  0000 C CNN
F 3 "" H 3250 6900 50  0000 C CNN
	1    3250 6900
	0    1    1    0   
$EndComp
Text Notes 10100 4800 0    60   ~ 0
1 GND\n2 12V\n4 PWM
Wire Wire Line
	2200 7350 2200 7450
Wire Wire Line
	2200 7350 2750 7350
Wire Wire Line
	1550 6900 1900 6900
Wire Wire Line
	1550 6900 1550 7000
Wire Wire Line
	2750 6900 2750 7000
Wire Wire Line
	1550 7350 2200 7350
Wire Wire Line
	8800 4650 9050 4650
Wire Wire Line
	8800 5050 9050 5050
Wire Wire Line
	3950 3250 3950 3450
$Comp
L power:GND #PWR09
U 1 1 56E5623D
P 3950 3450
F 0 "#PWR09" H 3950 3200 50  0001 C CNN
F 1 "GND" H 3958 3276 50  0000 C CNN
F 2 "" H 3950 3450 50  0000 C CNN
F 3 "" H 3950 3450 50  0000 C CNN
	1    3950 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 56E5654A
P 3950 1250
F 0 "#PWR08" H 3950 1100 50  0001 C CNN
F 1 "+5V" V 3968 1378 50  0000 L CNN
F 2 "" H 3950 1250 50  0000 C CNN
F 3 "" H 3950 1250 50  0000 C CNN
	1    3950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5350 8050 5350
$Comp
L Device:C C3
U 1 1 5CE2892D
P 1550 7150
F 0 "C3" H 1665 7196 50  0000 L CNN
F 1 "0,33u" H 1665 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1588 7000 50  0001 C CNN
F 3 "~" H 1550 7150 50  0001 C CNN
	1    1550 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5CE28F79
P 2750 7150
F 0 "C4" H 2865 7196 50  0000 L CNN
F 1 "0,1u" H 2865 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2788 7000 50  0001 C CNN
F 3 "~" H 2750 7150 50  0001 C CNN
	1    2750 7150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 5CE6C7E8
P 8500 4850
F 0 "D1" V 8454 4929 50  0000 L CNN
F 1 "1N4001" V 8545 4929 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8500 4675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8500 4850 50  0001 C CNN
	1    8500 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 7050 5050 7050
Wire Wire Line
	4800 6950 5050 6950
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5D07EEBE
P 5250 7050
F 0 "J2" H 5300 7367 50  0000 C CNN
F 1 "ISP" H 5300 7276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 5250 7050 50  0001 C CNN
F 3 "~" H 5250 7050 50  0001 C CNN
	1    5250 7050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5D089BED
P 9900 4900
F 0 "J3" H 9980 4892 50  0000 L CNN
F 1 "CPU Lüfter" H 9980 4801 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9900 4900 50  0001 C CNN
F 3 "~" H 9900 4900 50  0001 C CNN
	1    9900 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5D0926DE
P 1400 5000
F 0 "J1" H 1480 4992 50  0000 L CNN
F 1 "Power 12V DC" H 1480 4901 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1400 5000 50  0001 C CNN
F 3 "~" H 1400 5000 50  0001 C CNN
	1    1400 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D099371
P 4900 3250
F 0 "R2" V 4693 3250 50  0000 C CNN
F 1 "10k" V 4784 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4830 3250 50  0001 C CNN
F 3 "~" H 4900 3250 50  0001 C CNN
	1    4900 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5D09C2EE
P 8200 5350
F 0 "R3" V 7993 5350 50  0000 C CNN
F 1 "220" V 8084 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8130 5350 50  0001 C CNN
F 3 "~" H 8200 5350 50  0001 C CNN
	1    8200 5350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D0A777D
P 4650 5300
F 0 "SW1" H 4650 5585 50  0000 C CNN
F 1 "SW_Push" H 4650 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 4650 5500 50  0001 C CNN
F 3 "~" H 4650 5500 50  0001 C CNN
	1    4650 5300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 5D0D1B89
P 8700 5350
F 0 "Q1" H 8891 5396 50  0000 L CNN
F 1 "BC337" H 8891 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8900 5275 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 8700 5350 50  0001 L CNN
	1    8700 5350
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny24A-PU U2
U 1 1 5CD22565
P 3950 2350
F 0 "U2" H 3600 3400 50  0000 R CNN
F 1 "ATtiny24A-PU" H 3750 3250 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3950 2350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2950 4900 2950
Wire Wire Line
	4900 2950 4900 3100
Wire Wire Line
	4900 3400 4900 3500
Wire Wire Line
	4800 7150 5050 7150
Wire Wire Line
	2750 6900 3250 6900
Wire Wire Line
	1000 6900 1550 6900
$Comp
L Device:C C1
U 1 1 5CE6BCFE
P 1250 1150
F 0 "C1" V 998 1150 50  0000 C CNN
F 1 "100n" V 1089 1150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1288 1000 50  0001 C CNN
F 3 "~" H 1250 1150 50  0001 C CNN
	1    1250 1150
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5CE71335
P 1250 1600
F 0 "C2" V 998 1600 50  0000 C CNN
F 1 "100n" V 1089 1600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1288 1450 50  0001 C CNN
F 3 "~" H 1250 1600 50  0001 C CNN
	1    1250 1600
	0    1    1    0   
$EndComp
Text Notes 800  750  0    60   ~ 0
Stützkondensatoren\nU1, U3
Wire Wire Line
	1100 1150 1100 1350
Wire Wire Line
	1400 1150 1400 1350
$Comp
L power:GND #PWR02
U 1 1 5CE7F231
P 1000 1350
F 0 "#PWR02" H 1000 1100 50  0001 C CNN
F 1 "GND" V 1008 1222 50  0000 R CNN
F 2 "" H 1000 1350 50  0000 C CNN
F 3 "" H 1000 1350 50  0000 C CNN
	1    1000 1350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5CE7F5B2
P 1500 1350
F 0 "#PWR05" H 1500 1200 50  0001 C CNN
F 1 "+5V" V 1518 1478 50  0000 L CNN
F 2 "" H 1500 1350 50  0000 C CNN
F 3 "" H 1500 1350 50  0000 C CNN
	1    1500 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 1350 1100 1350
Connection ~ 1100 1350
Wire Wire Line
	1100 1350 1100 1600
Wire Wire Line
	1400 1350 1500 1350
Connection ~ 1400 1350
Wire Wire Line
	1400 1350 1400 1600
Wire Wire Line
	3950 1250 3950 1450
$Comp
L power:+5V #PWR016
U 1 1 5CEBDA62
P 6600 2300
F 0 "#PWR016" H 6600 2150 50  0001 C CNN
F 1 "+5V" H 6618 2474 50  0000 C CNN
F 2 "" H 6600 2300 50  0000 C CNN
F 3 "" H 6600 2300 50  0000 C CNN
	1    6600 2300
	0    -1   -1   0   
$EndComp
NoConn ~ 4550 2450
Wire Wire Line
	6600 2300 7450 2300
Wire Wire Line
	7250 2600 7250 2700
Wire Wire Line
	7450 2600 7250 2600
$Comp
L power:GND #PWR017
U 1 1 5CEB5FDB
P 7250 2700
F 0 "#PWR017" H 7250 2450 50  0001 C CNN
F 1 "GND" V 7258 2572 50  0000 R CNN
F 2 "" H 7250 2700 50  0000 C CNN
F 3 "" H 7250 2700 50  0000 C CNN
	1    7250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1700 7850 1800
NoConn ~ 8250 2900
Wire Wire Line
	7850 3200 7850 3100
$Comp
L power:GND #PWR019
U 1 1 5CE4DCB9
P 7850 3200
F 0 "#PWR019" H 7850 2950 50  0001 C CNN
F 1 "GND" V 7858 3072 50  0000 R CNN
F 2 "" H 7850 3200 50  0000 C CNN
F 3 "" H 7850 3200 50  0000 C CNN
	1    7850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5CE4D667
P 7850 1700
F 0 "#PWR018" H 7850 1550 50  0001 C CNN
F 1 "+5V" H 7868 1874 50  0000 C CNN
F 2 "" H 7850 1700 50  0000 C CNN
F 3 "" H 7850 1700 50  0000 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSA02-123 U4
U 1 1 5CE45062
P 9600 2300
F 0 "U4" H 9600 2967 50  0000 C CNN
F 1 "KCSA02-123" H 9600 2876 50  0000 C CNN
F 2 "Display_7Segment:HDSP-7801" H 9600 1700 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-123(Ver.9A).pdf" H 9100 2775 50  0001 L CNN
	1    9600 2300
	1    0    0    -1  
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R11
U 1 1 5CE1873B
P 8750 2700
F 0 "R11" V 8700 2550 50  0000 C CNN
F 1 "560" V 8750 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2700 50  0001 C CNN
F 3 "" H 8750 2700 50  0000 C CNN
	1    8750 2700
	0    1    1    0   
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R10
U 1 1 5CE18461
P 8750 2600
F 0 "R10" V 8700 2450 50  0000 C CNN
F 1 "560" V 8750 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2600 50  0001 C CNN
F 3 "" H 8750 2600 50  0000 C CNN
	1    8750 2600
	0    1    1    0   
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R9
U 1 1 5CE18115
P 8750 2500
F 0 "R9" V 8700 2350 50  0000 C CNN
F 1 "560" V 8750 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2500 50  0001 C CNN
F 3 "" H 8750 2500 50  0000 C CNN
	1    8750 2500
	0    1    1    0   
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R8
U 1 1 5CE17EB1
P 8750 2400
F 0 "R8" V 8700 2250 50  0000 C CNN
F 1 "560" V 8750 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2400 50  0001 C CNN
F 3 "" H 8750 2400 50  0000 C CNN
	1    8750 2400
	0    1    1    0   
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R7
U 1 1 5CE17B9D
P 8750 2300
F 0 "R7" V 8700 2150 50  0000 C CNN
F 1 "560" V 8750 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2300 50  0001 C CNN
F 3 "" H 8750 2300 50  0000 C CNN
	1    8750 2300
	0    1    1    0   
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R6
U 1 1 5CE17947
P 8750 2200
F 0 "R6" V 8700 2050 50  0000 C CNN
F 1 "560" V 8750 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2200 50  0001 C CNN
F 3 "" H 8750 2200 50  0000 C CNN
	1    8750 2200
	0    1    1    0   
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R5
U 1 1 5CE1771C
P 8750 2100
F 0 "R5" V 8700 1950 50  0000 C CNN
F 1 "560" V 8750 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2100 50  0001 C CNN
F 3 "" H 8750 2100 50  0000 C CNN
	1    8750 2100
	0    1    1    0   
$EndComp
$Comp
L cpu_luefter_ansteuerung-rescue:R R4
U 1 1 5CE13939
P 8750 2000
F 0 "R4" V 8700 1850 50  0000 C CNN
F 1 "560" V 8750 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8680 2000 50  0001 C CNN
F 3 "" H 8750 2000 50  0000 C CNN
	1    8750 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2000 9300 2000
Wire Wire Line
	8250 2700 8600 2700
Wire Wire Line
	8250 2600 8600 2600
Wire Wire Line
	8250 2500 8600 2500
Wire Wire Line
	8250 2400 8600 2400
Wire Wire Line
	8250 2300 8600 2300
Wire Wire Line
	8250 2200 8600 2200
Wire Wire Line
	8250 2100 8600 2100
Wire Wire Line
	8250 2000 8600 2000
Wire Wire Line
	8900 2600 9300 2600
Wire Wire Line
	9300 2500 8900 2500
Wire Wire Line
	8900 2400 9300 2400
Wire Wire Line
	9300 2300 8900 2300
Wire Wire Line
	8900 2200 9300 2200
Wire Wire Line
	9300 2100 8900 2100
Wire Wire Line
	8900 2700 9300 2700
Wire Wire Line
	9950 2650 9950 2700
Connection ~ 9950 2650
Wire Wire Line
	10000 2650 9950 2650
Wire Wire Line
	9950 2700 9900 2700
Wire Wire Line
	9950 2600 9950 2650
Wire Wire Line
	9900 2600 9950 2600
$Comp
L power:+5V #PWR022
U 1 1 575F2D5B
P 10000 2650
F 0 "#PWR022" H 10000 2500 50  0001 C CNN
F 1 "+5V" V 10018 2778 50  0000 L CNN
F 2 "" H 10000 2650 50  0000 C CNN
F 3 "" H 10000 2650 50  0000 C CNN
	1    10000 2650
	0    1    1    0   
$EndComp
Text GLabel 4650 1750 2    60   Input ~ 0
7_SEG_SER
Text GLabel 7300 2000 0    60   Input ~ 0
7_SEG_SER
Text GLabel 4650 1850 2    60   Input ~ 0
7_SEG_SRCLK
Text GLabel 7300 2200 0    60   Input ~ 0
7_SEG_SRCLK
Text GLabel 4650 1950 2    60   Input ~ 0
7_SEG_RCLK
Text GLabel 7300 2500 0    60   Input ~ 0
7_SEG_RCLK
Wire Wire Line
	7300 2000 7450 2000
Wire Wire Line
	7300 2200 7450 2200
Wire Wire Line
	7300 2500 7450 2500
Wire Wire Line
	4550 1750 4650 1750
Wire Wire Line
	4550 1850 4650 1850
Wire Wire Line
	4550 1950 4650 1950
NoConn ~ 4550 2050
Text GLabel 4650 2650 2    60   Input ~ 0
PUSH_BUTTON1
Text GLabel 3650 5300 0    60   Input ~ 0
PUSH_BUTTON1
Wire Wire Line
	4550 2650 4650 2650
Text GLabel 4650 2750 2    60   Input ~ 0
FAN_POWER
Text GLabel 4650 2850 2    60   Input ~ 0
FAN_PWM
Text GLabel 9600 5100 0    60   Input ~ 0
FAN_PWM
Wire Wire Line
	9600 5100 9700 5100
Text GLabel 7900 5350 0    60   Input ~ 0
FAN_POWER
Wire Wire Line
	4550 2750 4650 2750
Wire Wire Line
	4550 2850 4650 2850
Text GLabel 5300 2950 2    60   Input ~ 0
RESET
Wire Wire Line
	4900 2950 5300 2950
Connection ~ 4900 2950
Text GLabel 4800 7150 0    60   Input ~ 0
RESET
Text GLabel 4650 2150 2    60   Input ~ 0
SCK
Text GLabel 4650 2250 2    60   Input ~ 0
MISO
Text GLabel 4650 2350 2    60   Input ~ 0
MOSI
Text GLabel 4800 7050 0    60   Input ~ 0
SCK
Wire Wire Line
	4550 2150 4650 2150
Text GLabel 4800 6950 0    60   Input ~ 0
MISO
Wire Wire Line
	4550 2250 4650 2250
Text GLabel 5650 7050 2    60   Input ~ 0
MOSI
Wire Wire Line
	5550 7050 5650 7050
Wire Wire Line
	4550 2350 4650 2350
Text Notes 5000 6450 0    60   ~ 0
ISP Schnittstelle
Text Notes 3450 750  0    60   ~ 0
Microkontroller Attiny24a
Text Notes 8250 1300 0    60   ~ 0
7 Segment Anzeige
Text Notes 8400 4000 0    60   ~ 0
Lüfteransteuerung
$Comp
L 74xx:74HC595 U3
U 1 1 5CDC9C41
P 7850 2400
F 0 "U3" H 7500 3150 50  0000 C CNN
F 1 "74HC595" H 7600 3050 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 7850 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7850 2400 50  0001 C CNN
	1    7850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5300 4450 5300
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5D0DDDB7
P 2200 6900
F 0 "U1" H 2200 7142 50  0000 C CNN
F 1 "L7805" H 2200 7051 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2225 6750 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2200 6850 50  0001 C CNN
	1    2200 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7200 2200 7350
$EndSCHEMATC
