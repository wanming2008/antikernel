EESchema Schematic File Version 2
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:device
LIBS:conn
LIBS:marblewalrus-backplane-cache
EELAYER 25 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 3 7
Title "MARBLEWALRUS Backplane"
Date "2015-11-15"
Rev "$Rev: 2241 $"
Comp "Andrew Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_MW_COMPUTE_BACKPLANE J1
U 2 1 564513DC
P 6500 5000
F 0 "J1" H 6500 4950 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 6500 4850 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 6500 5000 60  0001 C CNN
F 3 "" H 6500 5000 60  0000 C CNN
	2    6500 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_MW_COMPUTE_BACKPLANE J2
U 2 1 564514CD
P 6500 7350
F 0 "J2" H 6500 7300 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 6500 7200 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 6500 7350 60  0001 C CNN
F 3 "" H 6500 7350 60  0000 C CNN
	2    6500 7350
	1    0    0    -1  
$EndComp
$Comp
L CONN_MW_COMPUTE_BACKPLANE J3
U 2 1 5645184F
P 6500 9700
F 0 "J3" H 6500 9650 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 6500 9550 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 6500 9700 60  0001 C CNN
F 3 "" H 6500 9700 60  0000 C CNN
	2    6500 9700
	1    0    0    -1  
$EndComp
$Comp
L CONN_MW_COMPUTE_BACKPLANE J4
U 2 1 56451855
P 6500 12050
F 0 "J4" H 6500 12000 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 6500 11900 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 6500 12050 60  0001 C CNN
F 3 "" H 6500 12050 60  0000 C CNN
	2    6500 12050
	1    0    0    -1  
$EndComp
$Comp
L CONN_MW_COMPUTE_BACKPLANE J5
U 2 1 56451D1F
P 12600 5000
F 0 "J5" H 12600 4950 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 12600 4850 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 12600 5000 60  0001 C CNN
F 3 "" H 12600 5000 60  0000 C CNN
	2    12600 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_MW_COMPUTE_BACKPLANE J6
U 2 1 56451D25
P 12600 7350
F 0 "J6" H 12600 7300 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 12600 7200 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 12600 7350 60  0001 C CNN
F 3 "" H 12600 7350 60  0000 C CNN
	2    12600 7350
	1    0    0    -1  
$EndComp
$Comp
L CONN_MW_COMPUTE_BACKPLANE J7
U 2 1 56451D2B
P 12600 9700
F 0 "J7" H 12600 9650 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 12600 9550 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 12600 9700 60  0001 C CNN
F 3 "" H 12600 9700 60  0000 C CNN
	2    12600 9700
	1    0    0    -1  
$EndComp
$Comp
L CONN_MW_COMPUTE_BACKPLANE J8
U 2 1 56451D31
P 12600 12050
F 0 "J8" H 12600 12000 60  0000 L CNN
F 1 "CONN_MW_COMPUTE_BACKPLANE" H 12600 11900 60  0000 L CNN
F 2 "azonenberg_pcb:CONN_PCIE_X4_FCI_10018783_10201TLF" H 12600 12050 60  0001 C CNN
F 3 "" H 12600 12050 60  0000 C CNN
	2    12600 12050
	1    0    0    -1  
$EndComp
Text Label 8600 3350 0    60   ~ 0
CB0_TX_RIGHT_P
Text Label 8600 3450 0    60   ~ 0
CB0_TX_RIGHT_N
Text Label 6200 3350 2    60   ~ 0
CB0_TX_LEFT_P
Text Label 6200 3450 2    60   ~ 0
CB0_TX_LEFT_N
Text Label 8600 3650 0    60   ~ 0
CB1_TX_LEFT_P
Text Label 8600 3750 0    60   ~ 0
CB1_TX_LEFT_N
Wire Wire Line
	6200 3350 6300 3350
Wire Wire Line
	6200 3450 6300 3450
Wire Wire Line
	8400 3350 8600 3350
Wire Wire Line
	8600 3450 8400 3450
Wire Wire Line
	8400 3650 8600 3650
Wire Wire Line
	8600 3750 8400 3750
Text Label 6200 3650 2    60   ~ 0
CB7_TX_RIGHT_P
Text Label 6200 3750 2    60   ~ 0
CB7_TX_RIGHT_N
Wire Wire Line
	6200 3750 6300 3750
Wire Wire Line
	6200 3650 6300 3650
Text Label 6200 5700 2    60   ~ 0
CB1_TX_LEFT_P
Text Label 6200 5800 2    60   ~ 0
CB1_TX_LEFT_N
Wire Wire Line
	6200 5700 6300 5700
Wire Wire Line
	6200 5800 6300 5800
Text Label 6200 6000 2    60   ~ 0
CB0_TX_RIGHT_P
Text Label 6200 6100 2    60   ~ 0
CB0_TX_RIGHT_N
Wire Wire Line
	6200 6100 6300 6100
Wire Wire Line
	6200 6000 6300 6000
Text Label 8600 5700 0    60   ~ 0
CB1_TX_RIGHT_P
Text Label 8600 5800 0    60   ~ 0
CB1_TX_RIGHT_N
Text Label 8600 6000 0    60   ~ 0
CB2_TX_LEFT_P
Text Label 8600 6100 0    60   ~ 0
CB2_TX_LEFT_N
Wire Wire Line
	8400 5700 8600 5700
Wire Wire Line
	8600 5800 8400 5800
Wire Wire Line
	8400 6000 8600 6000
Wire Wire Line
	8600 6100 8400 6100
Text Label 6200 8050 2    60   ~ 0
CB2_TX_LEFT_P
Text Label 6200 8150 2    60   ~ 0
CB2_TX_LEFT_N
Wire Wire Line
	6200 8050 6300 8050
Wire Wire Line
	6200 8150 6300 8150
Text Label 6200 8350 2    60   ~ 0
CB1_TX_RIGHT_P
Text Label 6200 8450 2    60   ~ 0
CB1_TX_RIGHT_N
Wire Wire Line
	6200 8450 6300 8450
Wire Wire Line
	6200 8350 6300 8350
Text Label 8600 8050 0    60   ~ 0
CB2_TX_RIGHT_P
Text Label 8600 8150 0    60   ~ 0
CB2_TX_RIGHT_N
Text Label 8600 8350 0    60   ~ 0
CB3_TX_LEFT_P
Text Label 8600 8450 0    60   ~ 0
CB3_TX_LEFT_N
Wire Wire Line
	8400 8050 8600 8050
Wire Wire Line
	8600 8150 8400 8150
Wire Wire Line
	8400 8350 8600 8350
Wire Wire Line
	8600 8450 8400 8450
Text Label 6200 10400 2    60   ~ 0
CB3_TX_LEFT_P
Text Label 6200 10500 2    60   ~ 0
CB3_TX_LEFT_N
Wire Wire Line
	6200 10400 6300 10400
Wire Wire Line
	6200 10500 6300 10500
Text Label 6200 10700 2    60   ~ 0
CB2_TX_RIGHT_P
Text Label 6200 10800 2    60   ~ 0
CB2_TX_RIGHT_N
Wire Wire Line
	6200 10800 6300 10800
Wire Wire Line
	6200 10700 6300 10700
Text Label 8600 10400 0    60   ~ 0
CB3_TX_RIGHT_P
Text Label 8600 10500 0    60   ~ 0
CB3_TX_RIGHT_N
Text Label 8600 10700 0    60   ~ 0
CB4_TX_LEFT_P
Text Label 8600 10800 0    60   ~ 0
CB4_TX_LEFT_N
Wire Wire Line
	8400 10400 8600 10400
Wire Wire Line
	8600 10500 8400 10500
Wire Wire Line
	8400 10700 8600 10700
Wire Wire Line
	8600 10800 8400 10800
Text Label 12300 3350 2    60   ~ 0
CB4_TX_LEFT_P
Text Label 12300 3450 2    60   ~ 0
CB4_TX_LEFT_N
Wire Wire Line
	12300 3350 12400 3350
Wire Wire Line
	12300 3450 12400 3450
Text Label 12300 3650 2    60   ~ 0
CB3_TX_RIGHT_P
Text Label 12300 3750 2    60   ~ 0
CB3_TX_RIGHT_N
Wire Wire Line
	12300 3750 12400 3750
Wire Wire Line
	12300 3650 12400 3650
Text Label 14700 3350 0    60   ~ 0
CB4_TX_RIGHT_P
Text Label 14700 3450 0    60   ~ 0
CB4_TX_RIGHT_N
Text Label 14700 3650 0    60   ~ 0
CB5_TX_LEFT_P
Text Label 14700 3750 0    60   ~ 0
CB5_TX_LEFT_N
Wire Wire Line
	14500 3350 14700 3350
Wire Wire Line
	14700 3450 14500 3450
Wire Wire Line
	14500 3650 14700 3650
Wire Wire Line
	14700 3750 14500 3750
Text Label 14700 5700 0    60   ~ 0
CB5_TX_RIGHT_P
Text Label 14700 5800 0    60   ~ 0
CB5_TX_RIGHT_N
Text Label 14700 6000 0    60   ~ 0
CB6_TX_LEFT_P
Text Label 14700 6100 0    60   ~ 0
CB6_TX_LEFT_N
Wire Wire Line
	14500 5700 14700 5700
Wire Wire Line
	14700 5800 14500 5800
Wire Wire Line
	14500 6000 14700 6000
Wire Wire Line
	14700 6100 14500 6100
Text Label 12300 5700 2    60   ~ 0
CB5_TX_LEFT_P
Text Label 12300 5800 2    60   ~ 0
CB5_TX_LEFT_N
Wire Wire Line
	12300 5700 12400 5700
Wire Wire Line
	12300 5800 12400 5800
Text Label 12300 6000 2    60   ~ 0
CB4_TX_RIGHT_P
Text Label 12300 6100 2    60   ~ 0
CB4_TX_RIGHT_N
Wire Wire Line
	12300 6100 12400 6100
Wire Wire Line
	12300 6000 12400 6000
Text Label 14700 8050 0    60   ~ 0
CB6_TX_RIGHT_P
Text Label 14700 8150 0    60   ~ 0
CB6_TX_RIGHT_N
Text Label 14700 8350 0    60   ~ 0
CB7_TX_LEFT_P
Text Label 14700 8450 0    60   ~ 0
CB7_TX_LEFT_N
Wire Wire Line
	14500 8050 14700 8050
Wire Wire Line
	14700 8150 14500 8150
Wire Wire Line
	14500 8350 14700 8350
Wire Wire Line
	14700 8450 14500 8450
Text Label 12300 8050 2    60   ~ 0
CB6_TX_LEFT_P
Text Label 12300 8150 2    60   ~ 0
CB6_TX_LEFT_N
Wire Wire Line
	12300 8050 12400 8050
Wire Wire Line
	12300 8150 12400 8150
Text Label 12300 8350 2    60   ~ 0
CB5_TX_RIGHT_P
Text Label 12300 8450 2    60   ~ 0
CB5_TX_RIGHT_N
Wire Wire Line
	12300 8450 12400 8450
Wire Wire Line
	12300 8350 12400 8350
Text Label 12300 10400 2    60   ~ 0
CB7_TX_LEFT_P
Text Label 12300 10500 2    60   ~ 0
CB7_TX_LEFT_N
Wire Wire Line
	12300 10400 12400 10400
Wire Wire Line
	12300 10500 12400 10500
Text Label 12300 10700 2    60   ~ 0
CB6_TX_RIGHT_P
Text Label 12300 10800 2    60   ~ 0
CB6_TX_RIGHT_N
Wire Wire Line
	12300 10800 12400 10800
Wire Wire Line
	12300 10700 12400 10700
Text Label 14700 10400 0    60   ~ 0
CB7_TX_RIGHT_P
Text Label 14700 10500 0    60   ~ 0
CB7_TX_RIGHT_N
Text Label 14700 10700 0    60   ~ 0
CB0_TX_LEFT_P
Text Label 14700 10800 0    60   ~ 0
CB0_TX_LEFT_N
Wire Wire Line
	14500 10400 14700 10400
Wire Wire Line
	14700 10500 14500 10500
Wire Wire Line
	14500 10700 14700 10700
Wire Wire Line
	14700 10800 14500 10800
Text Label 6200 3950 2    60   ~ 0
CB0_GPIO_LEFT_0
Text Label 6200 4050 2    60   ~ 0
CB0_GPIO_LEFT_1
Text Label 6200 4150 2    60   ~ 0
CB0_GPIO_LEFT_2
Text Label 6200 4250 2    60   ~ 0
CB0_GPIO_LEFT_3
Text Label 8600 3950 0    60   ~ 0
CB1_GPIO_LEFT_0
Text Label 8600 4050 0    60   ~ 0
CB1_GPIO_LEFT_1
Text Label 8600 4150 0    60   ~ 0
CB1_GPIO_LEFT_2
Text Label 8600 4250 0    60   ~ 0
CB1_GPIO_LEFT_3
Wire Wire Line
	8600 3950 8400 3950
Wire Wire Line
	8400 4050 8600 4050
Wire Wire Line
	8600 4150 8400 4150
Wire Wire Line
	8400 4250 8600 4250
Wire Wire Line
	6200 3950 6300 3950
Wire Wire Line
	6300 4050 6200 4050
Wire Wire Line
	6200 4150 6300 4150
Wire Wire Line
	6300 4250 6200 4250
Text Label 6200 6300 2    60   ~ 0
CB1_GPIO_LEFT_0
Text Label 6200 6400 2    60   ~ 0
CB1_GPIO_LEFT_1
Text Label 6200 6500 2    60   ~ 0
CB1_GPIO_LEFT_2
Text Label 6200 6600 2    60   ~ 0
CB1_GPIO_LEFT_3
Wire Wire Line
	6200 6300 6300 6300
Wire Wire Line
	6300 6400 6200 6400
Wire Wire Line
	6200 6500 6300 6500
Wire Wire Line
	6300 6600 6200 6600
Text Label 8600 6300 0    60   ~ 0
CB2_GPIO_LEFT_0
Text Label 8600 6400 0    60   ~ 0
CB2_GPIO_LEFT_1
Text Label 8600 6500 0    60   ~ 0
CB2_GPIO_LEFT_2
Text Label 8600 6600 0    60   ~ 0
CB2_GPIO_LEFT_3
Wire Wire Line
	8600 6300 8400 6300
Wire Wire Line
	8400 6400 8600 6400
Wire Wire Line
	8600 6500 8400 6500
Wire Wire Line
	8400 6600 8600 6600
Text Label 6200 8650 2    60   ~ 0
CB2_GPIO_LEFT_0
Text Label 6200 8750 2    60   ~ 0
CB2_GPIO_LEFT_1
Text Label 6200 8850 2    60   ~ 0
CB2_GPIO_LEFT_2
Text Label 6200 8950 2    60   ~ 0
CB2_GPIO_LEFT_3
Wire Wire Line
	6200 8650 6300 8650
Wire Wire Line
	6300 8750 6200 8750
Wire Wire Line
	6200 8850 6300 8850
Wire Wire Line
	6300 8950 6200 8950
Text Label 8600 8650 0    60   ~ 0
CB3_GPIO_LEFT_0
Text Label 8600 8750 0    60   ~ 0
CB3_GPIO_LEFT_1
Text Label 8600 8850 0    60   ~ 0
CB3_GPIO_LEFT_2
Text Label 8600 8950 0    60   ~ 0
CB3_GPIO_LEFT_3
Wire Wire Line
	8600 8650 8400 8650
Wire Wire Line
	8400 8750 8600 8750
Wire Wire Line
	8600 8850 8400 8850
Wire Wire Line
	8400 8950 8600 8950
Text Label 6200 11000 2    60   ~ 0
CB3_GPIO_LEFT_0
Text Label 6200 11100 2    60   ~ 0
CB3_GPIO_LEFT_1
Text Label 6200 11200 2    60   ~ 0
CB3_GPIO_LEFT_2
Text Label 6200 11300 2    60   ~ 0
CB3_GPIO_LEFT_3
Wire Wire Line
	6200 11000 6300 11000
Wire Wire Line
	6300 11100 6200 11100
Wire Wire Line
	6200 11200 6300 11200
Wire Wire Line
	6300 11300 6200 11300
Text Label 8600 11000 0    60   ~ 0
CB4_GPIO_LEFT_0
Text Label 8600 11100 0    60   ~ 0
CB4_GPIO_LEFT_1
Text Label 8600 11200 0    60   ~ 0
CB4_GPIO_LEFT_2
Text Label 8600 11300 0    60   ~ 0
CB4_GPIO_LEFT_3
Wire Wire Line
	8600 11000 8400 11000
Wire Wire Line
	8400 11100 8600 11100
Wire Wire Line
	8600 11200 8400 11200
Wire Wire Line
	8400 11300 8600 11300
Text Label 12300 3950 2    60   ~ 0
CB4_GPIO_LEFT_0
Text Label 12300 4050 2    60   ~ 0
CB4_GPIO_LEFT_1
Text Label 12300 4150 2    60   ~ 0
CB4_GPIO_LEFT_2
Text Label 12300 4250 2    60   ~ 0
CB4_GPIO_LEFT_3
Wire Wire Line
	12300 3950 12400 3950
Wire Wire Line
	12400 4050 12300 4050
Wire Wire Line
	12300 4150 12400 4150
Wire Wire Line
	12400 4250 12300 4250
Text Label 14700 3950 0    60   ~ 0
CB5_GPIO_LEFT_0
Text Label 14700 4050 0    60   ~ 0
CB5_GPIO_LEFT_1
Text Label 14700 4150 0    60   ~ 0
CB5_GPIO_LEFT_2
Text Label 14700 4250 0    60   ~ 0
CB5_GPIO_LEFT_3
Wire Wire Line
	14700 3950 14500 3950
Wire Wire Line
	14500 4050 14700 4050
Wire Wire Line
	14700 4150 14500 4150
Wire Wire Line
	14500 4250 14700 4250
Text Label 12300 6300 2    60   ~ 0
CB5_GPIO_LEFT_0
Text Label 12300 6400 2    60   ~ 0
CB5_GPIO_LEFT_1
Text Label 12300 6500 2    60   ~ 0
CB5_GPIO_LEFT_2
Text Label 12300 6600 2    60   ~ 0
CB5_GPIO_LEFT_3
Wire Wire Line
	12300 6300 12400 6300
Wire Wire Line
	12400 6400 12300 6400
Wire Wire Line
	12300 6500 12400 6500
Wire Wire Line
	12400 6600 12300 6600
Text Label 14700 6300 0    60   ~ 0
CB6_GPIO_LEFT_0
Text Label 14700 6400 0    60   ~ 0
CB6_GPIO_LEFT_1
Text Label 14700 6500 0    60   ~ 0
CB6_GPIO_LEFT_2
Text Label 14700 6600 0    60   ~ 0
CB6_GPIO_LEFT_3
Wire Wire Line
	14700 6300 14500 6300
Wire Wire Line
	14500 6400 14700 6400
Wire Wire Line
	14700 6500 14500 6500
Wire Wire Line
	14500 6600 14700 6600
Text Label 12300 8650 2    60   ~ 0
CB6_GPIO_LEFT_0
Text Label 12300 8750 2    60   ~ 0
CB6_GPIO_LEFT_1
Text Label 12300 8850 2    60   ~ 0
CB6_GPIO_LEFT_2
Text Label 12300 8950 2    60   ~ 0
CB6_GPIO_LEFT_3
Wire Wire Line
	12300 8650 12400 8650
Wire Wire Line
	12400 8750 12300 8750
Wire Wire Line
	12300 8850 12400 8850
Wire Wire Line
	12400 8950 12300 8950
Text Label 14700 8650 0    60   ~ 0
CB7_GPIO_LEFT_0
Text Label 14700 8750 0    60   ~ 0
CB7_GPIO_LEFT_1
Text Label 14700 8850 0    60   ~ 0
CB7_GPIO_LEFT_2
Text Label 14700 8950 0    60   ~ 0
CB7_GPIO_LEFT_3
Wire Wire Line
	14700 8650 14500 8650
Wire Wire Line
	14500 8750 14700 8750
Wire Wire Line
	14700 8850 14500 8850
Wire Wire Line
	14500 8950 14700 8950
Text Label 12300 11000 2    60   ~ 0
CB7_GPIO_LEFT_0
Text Label 12300 11100 2    60   ~ 0
CB7_GPIO_LEFT_1
Text Label 12300 11200 2    60   ~ 0
CB7_GPIO_LEFT_2
Text Label 12300 11300 2    60   ~ 0
CB7_GPIO_LEFT_3
Wire Wire Line
	12300 11000 12400 11000
Wire Wire Line
	12400 11100 12300 11100
Wire Wire Line
	12300 11200 12400 11200
Wire Wire Line
	12400 11300 12300 11300
Text Label 14700 11000 0    60   ~ 0
CB0_GPIO_LEFT_0
Text Label 14700 11100 0    60   ~ 0
CB0_GPIO_LEFT_1
Text Label 14700 11200 0    60   ~ 0
CB0_GPIO_LEFT_2
Text Label 14700 11300 0    60   ~ 0
CB0_GPIO_LEFT_3
Wire Wire Line
	14700 11000 14500 11000
Wire Wire Line
	14500 11100 14700 11100
Wire Wire Line
	14700 11200 14500 11200
Wire Wire Line
	14500 11300 14700 11300
Text Label 6200 4450 2    60   ~ 0
GND
Wire Wire Line
	6200 4450 6300 4450
Text Label 6200 4550 2    60   ~ 0
GND
Wire Wire Line
	6200 4550 6300 4550
Text Label 6200 4650 2    60   ~ 0
GND
Wire Wire Line
	6200 4650 6300 4650
Text Label 6200 4750 2    60   ~ 0
GND
Wire Wire Line
	6200 4750 6300 4750
Text Label 6200 4850 2    60   ~ 0
GND
Wire Wire Line
	6200 4850 6300 4850
Text Label 6200 4950 2    60   ~ 0
GND
Wire Wire Line
	6200 4950 6300 4950
Text Label 8600 4450 0    60   ~ 0
GND
Text Label 8600 4550 0    60   ~ 0
GND
Text Label 8600 4650 0    60   ~ 0
GND
Text Label 8600 4750 0    60   ~ 0
GND
Text Label 8600 4850 0    60   ~ 0
GND
Text Label 8600 4950 0    60   ~ 0
GND
Wire Wire Line
	8600 4450 8400 4450
Wire Wire Line
	8400 4550 8600 4550
Wire Wire Line
	8600 4650 8400 4650
Wire Wire Line
	8400 4750 8600 4750
Wire Wire Line
	8600 4850 8400 4850
Wire Wire Line
	8400 4950 8600 4950
Text Label 8600 6800 0    60   ~ 0
GND
Text Label 8600 6900 0    60   ~ 0
GND
Text Label 8600 7000 0    60   ~ 0
GND
Text Label 8600 7100 0    60   ~ 0
GND
Text Label 8600 7200 0    60   ~ 0
GND
Text Label 8600 7300 0    60   ~ 0
GND
Wire Wire Line
	8600 6800 8400 6800
Wire Wire Line
	8400 6900 8600 6900
Wire Wire Line
	8600 7000 8400 7000
Wire Wire Line
	8400 7100 8600 7100
Wire Wire Line
	8600 7200 8400 7200
Wire Wire Line
	8400 7300 8600 7300
Text Label 8600 9150 0    60   ~ 0
GND
Text Label 8600 9250 0    60   ~ 0
GND
Text Label 8600 9350 0    60   ~ 0
GND
Text Label 8600 9450 0    60   ~ 0
GND
Text Label 8600 9550 0    60   ~ 0
GND
Text Label 8600 9650 0    60   ~ 0
GND
Wire Wire Line
	8600 9150 8400 9150
Wire Wire Line
	8400 9250 8600 9250
Wire Wire Line
	8600 9350 8400 9350
Wire Wire Line
	8400 9450 8600 9450
Wire Wire Line
	8600 9550 8400 9550
Wire Wire Line
	8400 9650 8600 9650
Text Label 8600 11500 0    60   ~ 0
GND
Text Label 8600 11600 0    60   ~ 0
GND
Text Label 8600 11700 0    60   ~ 0
GND
Text Label 8600 11800 0    60   ~ 0
GND
Text Label 8600 11900 0    60   ~ 0
GND
Text Label 8600 12000 0    60   ~ 0
GND
Wire Wire Line
	8600 11500 8400 11500
Wire Wire Line
	8400 11600 8600 11600
Wire Wire Line
	8600 11700 8400 11700
Wire Wire Line
	8400 11800 8600 11800
Wire Wire Line
	8600 11900 8400 11900
Wire Wire Line
	8400 12000 8600 12000
Text Label 6200 6800 2    60   ~ 0
GND
Wire Wire Line
	6200 6800 6300 6800
Text Label 6200 6900 2    60   ~ 0
GND
Wire Wire Line
	6200 6900 6300 6900
Text Label 6200 7000 2    60   ~ 0
GND
Wire Wire Line
	6200 7000 6300 7000
Text Label 6200 7100 2    60   ~ 0
GND
Wire Wire Line
	6200 7100 6300 7100
Text Label 6200 7200 2    60   ~ 0
GND
Wire Wire Line
	6200 7200 6300 7200
Text Label 6200 7300 2    60   ~ 0
GND
Wire Wire Line
	6200 7300 6300 7300
Text Label 6200 9150 2    60   ~ 0
GND
Wire Wire Line
	6200 9150 6300 9150
Text Label 6200 9250 2    60   ~ 0
GND
Wire Wire Line
	6200 9250 6300 9250
Text Label 6200 9350 2    60   ~ 0
GND
Wire Wire Line
	6200 9350 6300 9350
Text Label 6200 9450 2    60   ~ 0
GND
Wire Wire Line
	6200 9450 6300 9450
Text Label 6200 9550 2    60   ~ 0
GND
Wire Wire Line
	6200 9550 6300 9550
Text Label 6200 9650 2    60   ~ 0
GND
Wire Wire Line
	6200 9650 6300 9650
Text Label 6200 11500 2    60   ~ 0
GND
Wire Wire Line
	6200 11500 6300 11500
Text Label 6200 11600 2    60   ~ 0
GND
Wire Wire Line
	6200 11600 6300 11600
Text Label 6200 11700 2    60   ~ 0
GND
Wire Wire Line
	6200 11700 6300 11700
Text Label 6200 11800 2    60   ~ 0
GND
Wire Wire Line
	6200 11800 6300 11800
Text Label 6200 11900 2    60   ~ 0
GND
Wire Wire Line
	6200 11900 6300 11900
Text Label 6200 12000 2    60   ~ 0
GND
Wire Wire Line
	6200 12000 6300 12000
Text Label 12300 11500 2    60   ~ 0
GND
Wire Wire Line
	12300 11500 12400 11500
Text Label 12300 11600 2    60   ~ 0
GND
Wire Wire Line
	12300 11600 12400 11600
Text Label 12300 11700 2    60   ~ 0
GND
Wire Wire Line
	12300 11700 12400 11700
Text Label 12300 11800 2    60   ~ 0
GND
Wire Wire Line
	12300 11800 12400 11800
Text Label 12300 11900 2    60   ~ 0
GND
Wire Wire Line
	12300 11900 12400 11900
Text Label 12300 12000 2    60   ~ 0
GND
Wire Wire Line
	12300 12000 12400 12000
Text Label 14700 11500 0    60   ~ 0
GND
Text Label 14700 11600 0    60   ~ 0
GND
Text Label 14700 11700 0    60   ~ 0
GND
Text Label 14700 11800 0    60   ~ 0
GND
Text Label 14700 11900 0    60   ~ 0
GND
Text Label 14700 12000 0    60   ~ 0
GND
Wire Wire Line
	14700 11500 14500 11500
Wire Wire Line
	14500 11600 14700 11600
Wire Wire Line
	14700 11700 14500 11700
Wire Wire Line
	14500 11800 14700 11800
Wire Wire Line
	14700 11900 14500 11900
Wire Wire Line
	14500 12000 14700 12000
Text HLabel 14700 12150 2    60   Input ~ 0
GND
Wire Wire Line
	14700 12000 14700 12150
Text Label 14700 9150 0    60   ~ 0
GND
Text Label 14700 9250 0    60   ~ 0
GND
Text Label 14700 9350 0    60   ~ 0
GND
Text Label 14700 9450 0    60   ~ 0
GND
Text Label 14700 9550 0    60   ~ 0
GND
Text Label 14700 9650 0    60   ~ 0
GND
Wire Wire Line
	14700 9150 14500 9150
Wire Wire Line
	14500 9250 14700 9250
Wire Wire Line
	14700 9350 14500 9350
Wire Wire Line
	14500 9450 14700 9450
Wire Wire Line
	14700 9550 14500 9550
Wire Wire Line
	14500 9650 14700 9650
Text Label 12300 9150 2    60   ~ 0
GND
Wire Wire Line
	12300 9150 12400 9150
Text Label 12300 9250 2    60   ~ 0
GND
Wire Wire Line
	12300 9250 12400 9250
Text Label 12300 9350 2    60   ~ 0
GND
Wire Wire Line
	12300 9350 12400 9350
Text Label 12300 9450 2    60   ~ 0
GND
Wire Wire Line
	12300 9450 12400 9450
Text Label 12300 9550 2    60   ~ 0
GND
Wire Wire Line
	12300 9550 12400 9550
Text Label 12300 9650 2    60   ~ 0
GND
Wire Wire Line
	12300 9650 12400 9650
Text Label 12300 6800 2    60   ~ 0
GND
Wire Wire Line
	12300 6800 12400 6800
Text Label 12300 6900 2    60   ~ 0
GND
Wire Wire Line
	12300 6900 12400 6900
Text Label 12300 7000 2    60   ~ 0
GND
Wire Wire Line
	12300 7000 12400 7000
Text Label 12300 7100 2    60   ~ 0
GND
Wire Wire Line
	12300 7100 12400 7100
Text Label 12300 7200 2    60   ~ 0
GND
Wire Wire Line
	12300 7200 12400 7200
Text Label 12300 7300 2    60   ~ 0
GND
Wire Wire Line
	12300 7300 12400 7300
Text Label 14700 6800 0    60   ~ 0
GND
Text Label 14700 6900 0    60   ~ 0
GND
Text Label 14700 7000 0    60   ~ 0
GND
Text Label 14700 7100 0    60   ~ 0
GND
Text Label 14700 7200 0    60   ~ 0
GND
Text Label 14700 7300 0    60   ~ 0
GND
Wire Wire Line
	14700 6800 14500 6800
Wire Wire Line
	14500 6900 14700 6900
Wire Wire Line
	14700 7000 14500 7000
Wire Wire Line
	14500 7100 14700 7100
Wire Wire Line
	14700 7200 14500 7200
Wire Wire Line
	14500 7300 14700 7300
Text Label 14700 4450 0    60   ~ 0
GND
Text Label 14700 4550 0    60   ~ 0
GND
Text Label 14700 4650 0    60   ~ 0
GND
Text Label 14700 4750 0    60   ~ 0
GND
Text Label 14700 4850 0    60   ~ 0
GND
Text Label 14700 4950 0    60   ~ 0
GND
Wire Wire Line
	14700 4450 14500 4450
Wire Wire Line
	14500 4550 14700 4550
Wire Wire Line
	14700 4650 14500 4650
Wire Wire Line
	14500 4750 14700 4750
Wire Wire Line
	14700 4850 14500 4850
Wire Wire Line
	14500 4950 14700 4950
Text Label 12300 4450 2    60   ~ 0
GND
Wire Wire Line
	12300 4450 12400 4450
Text Label 12300 4550 2    60   ~ 0
GND
Wire Wire Line
	12300 4550 12400 4550
Text Label 12300 4650 2    60   ~ 0
GND
Wire Wire Line
	12300 4650 12400 4650
Text Label 12300 4750 2    60   ~ 0
GND
Wire Wire Line
	12300 4750 12400 4750
Text Label 12300 4850 2    60   ~ 0
GND
Wire Wire Line
	12300 4850 12400 4850
Text Label 12300 4950 2    60   ~ 0
GND
Wire Wire Line
	12300 4950 12400 4950
Text Notes 6500 12500 0    60   ~ 0
GPIO pins are all LVCMOS18 regardless of normal GPIO voltage
$EndSCHEMATC
