EESchema Schematic File Version 4
LIBS:acoustic_levitation_main-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
Title "Acoustic levitation"
Date "2018-03-24"
Rev "1.0"
Comp "Léa Strobino"
Comment1 "Main PCB"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L acoustic_levitation_main-rescue:GND #PWR064
U 1 1 5AAB1DD3
P 5125 3700
F 0 "#PWR064" H 5125 3450 50  0001 C CNN
F 1 "GND" H 5125 3550 50  0000 C CNN
F 2 "" H 5125 3700 50  0001 C CNN
F 3 "" H 5125 3700 50  0001 C CNN
	1    5125 3700
	1    0    0    -1  
$EndComp
$Comp
L acoustic_levitation_main-rescue:+12V #PWR065
U 1 1 5AAB1DEA
P 5725 3050
AR Path="/5AAB1DEA" Ref="#PWR065"  Part="1" 
AR Path="/5AAB6D26/5AAB1DEA" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 5725 2900 50  0001 C CNN
F 1 "+12V" H 5725 3200 50  0000 C CNN
F 2 "" H 5725 3050 50  0001 C CNN
F 3 "" H 5725 3050 50  0001 C CNN
	1    5725 3050
	1    0    0    -1  
$EndComp
$Comp
L acoustic_levitation_main-rescue:GND #PWR066
U 1 1 5AAA7C9E
P 6325 3700
F 0 "#PWR066" H 6325 3450 50  0001 C CNN
F 1 "GND" H 6325 3550 50  0000 C CNN
F 2 "" H 6325 3700 50  0001 C CNN
F 3 "" H 6325 3700 50  0001 C CNN
	1    6325 3700
	1    0    0    -1  
$EndComp
$Comp
L acoustic_levitation_main-rescue:Barrel_Jack J10
U 1 1 5AAAC0A9
P 4725 3350
F 0 "J10" H 4725 3560 50  0000 C CNN
F 1 "PJ-102AH" H 4725 3175 50  0000 C CNN
F 2 "footprints:CUI_PJ-102AH" H 4775 3310 50  0001 C CNN
F 3 "" H 4775 3310 50  0001 C CNN
F 4 "CUI Inc." H 4725 3350 60  0001 C CNN "Manufacturer"
F 5 "PJ-102AH" H 4725 3350 60  0001 C CNN "ManufacturerPartNumber"
F 6 "Digi-Key" H 4725 3350 60  0001 C CNN "Supplier1"
F 7 "CP-102AH-ND" H 4725 3350 60  0001 C CNN "Supplier1PartNumber"
	1    4725 3350
	1    0    0    -1  
$EndComp
$Comp
L acoustic_levitation_main-rescue:+5V #PWR067
U 1 1 5AABB86C
P 6925 3050
F 0 "#PWR067" H 6925 2900 50  0001 C CNN
F 1 "+5V" H 6925 3200 50  0000 C CNN
F 2 "" H 6925 3050 50  0001 C CNN
F 3 "" H 6925 3050 50  0001 C CNN
	1    6925 3050
	1    0    0    -1  
$EndComp
$Comp
L acoustic_levitation_main-rescue:GND #PWR068
U 1 1 5AB62943
P 5425 3700
F 0 "#PWR068" H 5425 3450 50  0001 C CNN
F 1 "GND" H 5425 3550 50  0000 C CNN
F 2 "" H 5425 3700 50  0001 C CNN
F 3 "" H 5425 3700 50  0001 C CNN
	1    5425 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 3250 5725 3250
Wire Wire Line
	5725 3250 5725 3050
Wire Wire Line
	5025 3350 5125 3350
Wire Wire Line
	5125 3350 5125 3450
Connection ~ 5725 3250
Wire Wire Line
	6825 3250 6925 3250
Wire Wire Line
	6925 3250 6925 3050
Wire Wire Line
	5025 3450 5125 3450
Connection ~ 5125 3450
Wire Wire Line
	5025 3250 5125 3250
Wire Wire Line
	5425 3550 5425 3700
$Comp
L acoustic_levitation_main-rescue:+VDC #PWR069
U 1 1 5AB6380E
P 5125 3150
F 0 "#PWR069" H 5125 3050 50  0001 C CNN
F 1 "+VDC" H 5125 3400 50  0000 C CNN
F 2 "" H 5125 3150 50  0001 C CNN
F 3 "" H 5125 3150 50  0001 C CNN
	1    5125 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 3150 5125 3250
Connection ~ 5125 3250
$Comp
L acoustic_levitation_main-rescue:Si3421DV Q1
U 1 1 5AC4DD7C
P 5425 3350
F 0 "Q1" H 5625 3400 50  0000 L CNN
F 1 "Si3421DV" H 5625 3300 50  0000 L CNN
F 2 "footprints:TSOP-6_2.9x1.5mm_Pitch0.95mm" H 5625 3200 50  0001 L CNN
F 3 "http://www.vishay.com/docs/62921/si3421dv.pdf" H 5625 3100 50  0001 L CNN
F 4 "Digi-Key" H 5625 2900 50  0001 L CNN "Supplier1"
F 5 "SI3421DV-T1-GE3" H 6275 3000 50  0001 L CNN "ManufacturerPartNumber"
F 6 "SI3421DV-T1-GE3CT-ND" H 6025 2900 50  0001 L CNN "Supplier1PartNumber"
F 7 "Vishay Siliconix" H 5625 3000 50  0001 L CNN "Manufacturer"
	1    5425 3350
	0    -1   -1   0   
$EndComp
$Comp
L acoustic_levitation_main-rescue:TSR2-2450 U7
U 1 1 5AC4DDD8
P 6325 3350
F 0 "U7" H 6025 3600 60  0000 L CNN
F 1 "TSR2-2450" H 6375 3100 60  0000 L CNN
F 2 "footprints:Traco_TSR2" H 6375 3000 50  0001 L CNN
F 3 "https://assets.tracopower.com/TSR2/documents/tsr2-datasheet.pdf" H 6375 2900 50  0001 L CNN
F 4 "300-67-301" H 6775 2600 50  0001 L CNN "Supplier2PartNumber"
F 5 "495-TSR2-2450" H 6675 2700 50  0001 L CNN "Supplier1PartNumber"
F 6 "Distrelec" H 6375 2600 50  0001 L CNN "Supplier2"
F 7 "Mouser" H 6375 2700 50  0001 L CNN "Supplier1"
F 8 "Traco Power" H 6375 2800 50  0001 L CNN "Manufacturer"
F 9 "TSR 2-2450" H 6875 2800 50  0001 L CNN "ManufacturerPartNumber"
	1    6325 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 3250 5825 3250
Wire Wire Line
	5125 3450 5125 3700
Wire Wire Line
	5125 3250 5225 3250
$EndSCHEMATC
