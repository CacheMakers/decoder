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
L Switch:SW_Push SW1
U 1 1 60756FA2
P 3700 1650
F 0 "SW1" H 3700 1935 50  0000 C CNN
F 1 "up" H 3700 1844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3700 1850 50  0001 C CNN
F 3 "~" H 3700 1850 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 607577BB
P 3700 2050
F 0 "SW2" H 3700 2335 50  0000 C CNN
F 1 "down" H 3700 2244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3700 2250 50  0001 C CNN
F 3 "~" H 3700 2250 50  0001 C CNN
	1    3700 2050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 60757F0B
P 3700 2450
F 0 "SW3" H 3700 2735 50  0000 C CNN
F 1 "sel" H 3700 2644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3700 2650 50  0001 C CNN
F 3 "~" H 3700 2650 50  0001 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV1
U 1 1 60758708
P 1550 1400
F 0 "RV1" V 1343 1400 50  0000 C CNN
F 1 "contrast" V 1434 1400 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_T73YP_Vertical" H 1550 1400 50  0001 C CNN
F 3 "~" H 1550 1400 50  0001 C CNN
	1    1550 1400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 6075927E
P 1050 2100
F 0 "J2" H 1158 2281 50  0000 C CNN
F 1 "Power Connector" H 1158 2190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 1050 2100 50  0001 C CNN
F 3 "~" H 1050 2100 50  0001 C CNN
	1    1050 2100
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_Every A1
U 1 1 6075A11B
P 5100 1950
F 0 "A1" H 5100 861 50  0000 C CNN
F 1 "Arduino_Nano_Every" H 5100 770 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5100 1950 50  0001 C CIN
F 3 "https://content.arduino.cc/assets/NANOEveryV3.0_sch.pdf" H 5100 1950 50  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
Text GLabel 2150 1500 0    50   Input ~ 0
RS
Text GLabel 2150 2500 0    50   Input ~ 0
D7
Text GLabel 2150 2400 0    50   Input ~ 0
D6
Text GLabel 2150 2300 0    50   Input ~ 0
D5
Text GLabel 2150 2200 0    50   Input ~ 0
D4
Text GLabel 2150 1300 0    50   Input ~ 0
Enable
$Comp
L power:GND #PWR0101
U 1 1 6076F199
P 2550 2750
F 0 "#PWR0101" H 2550 2500 50  0001 C CNN
F 1 "GND" H 2555 2577 50  0000 C CNN
F 2 "" H 2550 2750 50  0001 C CNN
F 3 "" H 2550 2750 50  0001 C CNN
	1    2550 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60770154
P 2550 1100
F 0 "#PWR0102" H 2550 950 50  0001 C CNN
F 1 "+5V" H 2565 1273 50  0000 C CNN
F 2 "" H 2550 1100 50  0001 C CNN
F 3 "" H 2550 1100 50  0001 C CNN
	1    2550 1100
	1    0    0    -1  
$EndComp
Text GLabel 1450 1650 0    50   Input ~ 0
Contrast
$Comp
L power:GND #PWR0105
U 1 1 6077341D
P 1550 2250
F 0 "#PWR0105" H 1550 2000 50  0001 C CNN
F 1 "GND" H 1555 2077 50  0000 C CNN
F 2 "" H 1550 2250 50  0001 C CNN
F 3 "" H 1550 2250 50  0001 C CNN
	1    1550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2250 1550 2200
Wire Wire Line
	1550 2200 1250 2200
Wire Wire Line
	1250 2100 1550 2100
Text GLabel 4550 2550 0    50   Input ~ 0
RS
Text GLabel 4550 2450 0    50   Input ~ 0
Enable
Text GLabel 4550 1750 0    50   Input ~ 0
D4
Text GLabel 4550 1650 0    50   Input ~ 0
D5
Text GLabel 4550 1550 0    50   Input ~ 0
D6
Text GLabel 4550 1450 0    50   Input ~ 0
D7
Wire Wire Line
	4600 2550 4550 2550
Wire Wire Line
	4550 2450 4600 2450
Wire Wire Line
	4600 1750 4550 1750
Wire Wire Line
	4550 1650 4600 1650
Wire Wire Line
	4600 1550 4550 1550
Wire Wire Line
	4550 1450 4600 1450
Text GLabel 1550 2100 2    50   Input ~ 0
VIN
Text GLabel 4900 850  0    50   Input ~ 0
VIN
Wire Wire Line
	5000 950  5000 850 
Wire Wire Line
	5000 850  4900 850 
$Comp
L power:+5V #PWR0106
U 1 1 60776D93
P 5300 850
F 0 "#PWR0106" H 5300 700 50  0001 C CNN
F 1 "+5V" H 5315 1023 50  0000 C CNN
F 2 "" H 5300 850 50  0001 C CNN
F 3 "" H 5300 850 50  0001 C CNN
	1    5300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 950  5300 850 
$Comp
L power:GND #PWR0107
U 1 1 60777672
P 5100 3050
F 0 "#PWR0107" H 5100 2800 50  0001 C CNN
F 1 "GND" H 5105 2877 50  0000 C CNN
F 2 "" H 5100 3050 50  0001 C CNN
F 3 "" H 5100 3050 50  0001 C CNN
	1    5100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3050 5100 2950
Wire Wire Line
	4600 2050 3900 2050
Wire Wire Line
	4600 1950 4000 1950
Wire Wire Line
	4000 1950 4000 1650
Wire Wire Line
	4000 1650 3900 1650
Wire Wire Line
	4600 2150 4000 2150
Wire Wire Line
	4000 2150 4000 2450
Wire Wire Line
	4000 2450 3900 2450
Wire Wire Line
	3500 1650 3400 1650
Wire Wire Line
	3400 1650 3400 2050
Wire Wire Line
	3400 2450 3500 2450
Wire Wire Line
	3500 2050 3400 2050
Connection ~ 3400 2050
Wire Wire Line
	3400 2050 3400 2450
$Comp
L power:GND #PWR0108
U 1 1 6077F835
P 3400 2450
F 0 "#PWR0108" H 3400 2200 50  0001 C CNN
F 1 "GND" H 3405 2277 50  0000 C CNN
F 2 "" H 3400 2450 50  0001 C CNN
F 3 "" H 3400 2450 50  0001 C CNN
	1    3400 2450
	1    0    0    -1  
$EndComp
Connection ~ 3400 2450
$Comp
L Display_Character:WC1602A DS1
U 1 1 607807D0
P 2550 1900
F 0 "DS1" H 2550 2881 50  0000 C CNN
F 1 "WC1602A" H 2550 2790 50  0000 C CNN
F 2 "Display:WC1602A" H 2550 1000 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 3250 1900 50  0001 C CNN
	1    2550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2700 2550 2750
Text GLabel 2950 1300 2    50   Input ~ 0
Contrast
$Comp
L power:GND #PWR0103
U 1 1 60786847
P 1850 1450
F 0 "#PWR0103" H 1850 1200 50  0001 C CNN
F 1 "GND" H 1855 1277 50  0000 C CNN
F 2 "" H 1850 1450 50  0001 C CNN
F 3 "" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1400 1850 1400
Wire Wire Line
	1850 1400 1850 1450
$Comp
L power:GND #PWR0104
U 1 1 607879E5
P 3000 2050
F 0 "#PWR0104" H 3000 1800 50  0001 C CNN
F 1 "GND" H 3005 1877 50  0000 C CNN
F 2 "" H 3000 2050 50  0001 C CNN
F 3 "" H 3000 2050 50  0001 C CNN
	1    3000 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 60787F07
P 3000 1550
F 0 "#PWR0109" H 3000 1400 50  0001 C CNN
F 1 "+5V" H 3015 1723 50  0000 C CNN
F 2 "" H 3000 1550 50  0001 C CNN
F 3 "" H 3000 1550 50  0001 C CNN
	1    3000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1550 3000 1600
Wire Wire Line
	3000 1600 2950 1600
Wire Wire Line
	2950 1700 3000 1700
Wire Wire Line
	3000 1700 3000 1750
Wire Wire Line
	1850 1400 1700 1400
Connection ~ 1850 1400
$Comp
L power:+5V #PWR0110
U 1 1 6079401D
P 1250 1350
F 0 "#PWR0110" H 1250 1200 50  0001 C CNN
F 1 "+5V" H 1265 1523 50  0000 C CNN
F 2 "" H 1250 1350 50  0001 C CNN
F 3 "" H 1250 1350 50  0001 C CNN
	1    1250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1650 1550 1650
Wire Wire Line
	1550 1650 1550 1550
$Comp
L Switch:SW_Push SW4
U 1 1 6075582A
P 3700 1250
F 0 "SW4" H 3700 1535 50  0000 C CNN
F 1 "line" H 3700 1444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3700 1450 50  0001 C CNN
F 3 "~" H 3700 1450 50  0001 C CNN
	1    3700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1250 3400 1250
Wire Wire Line
	3400 1250 3400 1650
Connection ~ 3400 1650
Wire Wire Line
	4600 1850 4100 1850
Wire Wire Line
	4100 1850 4100 1250
Wire Wire Line
	3900 1250 4100 1250
$Comp
L Device:R R1
U 1 1 6076EE42
P 3000 1900
F 0 "R1" H 3070 1946 50  0000 L CNN
F 1 "220" H 3070 1855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2930 1900 50  0001 C CNN
F 3 "~" H 3000 1900 50  0001 C CNN
	1    3000 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 608BA39A
P 1400 900
F 0 "J1" V 1462 944 50  0000 L CNN
F 1 "Conn_01x01_Male" V 1553 944 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1400 900 50  0001 C CNN
F 3 "~" H 1400 900 50  0001 C CNN
	1    1400 900 
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 608BCD02
P 1700 900
F 0 "J3" V 1762 944 50  0000 L CNN
F 1 "Conn_01x01_Male" V 1853 944 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1700 900 50  0001 C CNN
F 3 "~" H 1700 900 50  0001 C CNN
	1    1700 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 1400 1250 1350
Wire Wire Line
	1250 1400 1400 1400
Wire Wire Line
	1400 1100 1400 1400
Connection ~ 1400 1400
Connection ~ 1700 1400
Wire Wire Line
	1700 1100 1700 1400
$EndSCHEMATC
