EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3100 1800 2    50   Input ~ 0
EN
Text HLabel 1650 2100 0    50   Input ~ 0
V+
Text HLabel 1950 2100 2    50   Output ~ 0
LED_A
Text HLabel 2600 2100 0    50   Output ~ 0
LED_K
$Comp
L Transistor_BJT:MMBT5551L Q?
U 1 1 61D2781A
P 2800 2000
AR Path="/6202E846/61D2781A" Ref="Q?"  Part="1" 
AR Path="/620593AE/61D2781A" Ref="Q?"  Part="1" 
AR Path="/61D2781A" Ref="Q?"  Part="1" 
AR Path="/61D242FF/61D2781A" Ref="Q9"  Part="1" 
AR Path="/61D33B82/61D2781A" Ref="Q10"  Part="1" 
F 0 "Q10" V 3035 2000 50  0000 C CNN
F 1 "MMBT5551" V 3126 2000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3000 1925 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 2800 2000 50  0001 L CNN
F 4 "C2145" H 2800 2000 50  0001 C CNN "JLC"
	1    2800 2000
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61D27821
P 2950 1800
AR Path="/61B5C5B6/61D27821" Ref="R?"  Part="1" 
AR Path="/61C03040/61D27821" Ref="R?"  Part="1" 
AR Path="/61C031A1/61D27821" Ref="R?"  Part="1" 
AR Path="/61C031A3/61D27821" Ref="R?"  Part="1" 
AR Path="/61D27821" Ref="R?"  Part="1" 
AR Path="/61D242FF/61D27821" Ref="R12"  Part="1" 
AR Path="/61D33B82/61D27821" Ref="R14"  Part="1" 
F 0 "R14" V 3157 1800 50  0000 C CNN
F 1 "4.7k" V 3066 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2880 1800 50  0001 C CNN
F 3 "~" H 2950 1800 50  0001 C CNN
F 4 "C25900" H 2950 1800 50  0001 C CNN "JLC"
	1    2950 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D27827
P 3000 2100
AR Path="/61B5C5B6/61D27827" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D27827" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D27827" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D27827" Ref="#PWR?"  Part="1" 
AR Path="/61D27827" Ref="#PWR?"  Part="1" 
AR Path="/61D242FF/61D27827" Ref="#PWR035"  Part="1" 
AR Path="/61D33B82/61D27827" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 3000 1850 50  0001 C CNN
F 1 "GND" V 3005 1972 50  0000 R CNN
F 2 "" H 3000 2100 50  0001 C CNN
F 3 "" H 3000 2100 50  0001 C CNN
	1    3000 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61D28FF4
P 1800 2100
AR Path="/61B5C5B6/61D28FF4" Ref="R?"  Part="1" 
AR Path="/61C03040/61D28FF4" Ref="R?"  Part="1" 
AR Path="/61C031A1/61D28FF4" Ref="R?"  Part="1" 
AR Path="/61C031A3/61D28FF4" Ref="R?"  Part="1" 
AR Path="/61D28FF4" Ref="R?"  Part="1" 
AR Path="/61D242FF/61D28FF4" Ref="R13"  Part="1" 
AR Path="/61D33B82/61D28FF4" Ref="R15"  Part="1" 
F 0 "R15" V 1593 2100 50  0000 C CNN
F 1 "220" V 1684 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1730 2100 50  0001 C CNN
F 3 "~" H 1800 2100 50  0001 C CNN
F 4 "C25091" H 1800 2100 50  0001 C CNN "JLC"
	1    1800 2100
	0    1    1    0   
$EndComp
$EndSCHEMATC
