#!/usr/bin/perl

use strict;
use warnings;

my @a = qw ( P0_five.fq P100_five.fq P101_five.fq P102_five.fq P103_five.fq P104_five.fq P105_five.fq P106_five.fq P107_five.fq P108_five.fq P109_five.fq P10_five.fq P110_five.fq P111_five.fq P112_five.fq P113_five.fq P114_five.fq P115_five.fq P116_five.fq P117_five.fq P118_five.fq P119_five.fq P11_five.fq P120_five.fq P121_five.fq P122_five.fq P123_five.fq P124_five.fq P125_five.fq P126_five.fq P127_five.fq P128_five.fq P129_five.fq P12_five.fq P130_five.fq P131_five.fq P132_five.fq P133_five.fq P134_five.fq P135_five.fq P136_five.fq P137_five.fq P138_five.fq P139_five.fq P13_five.fq P14_five.fq P15_five.fq P16_five.fq P17_five.fq P18_five.fq P19_five.fq P1_five.fq P20_five.fq P21_five.fq P22_five.fq P23_five.fq P24_five.fq P25_five.fq P26_five.fq P27_five.fq P28_five.fq P29_five.fq P2_five.fq P30_five.fq P31_five.fq P32_five.fq P33_five.fq P34_five.fq P35_five.fq P36_five.fq P37_five.fq P38_five.fq P39_five.fq P3_five.fq P40_five.fq P41_five.fq P42_five.fq P43_five.fq P44_five.fq P45_five.fq P46_five.fq P47_five.fq P48_five.fq P49_five.fq P4_five.fq P50_five.fq P51_five.fq P52_five.fq P53_five.fq P54_five.fq P55_five.fq P56_five.fq P57_five.fq P58_five.fq P59_five.fq P5_five.fq P60_five.fq P61_five.fq P62_five.fq P63_five.fq P64_five.fq P65_five.fq P66_five.fq P67_five.fq P68_five.fq P69_five.fq P6_five.fq P70_five.fq P71_five.fq P72_five.fq P73_five.fq P74_five.fq P75_five.fq P76_five.fq P77_five.fq P78_five.fq P79_five.fq P7_five.fq P80_five.fq P81_five.fq P82_five.fq P83_five.fq P84_five.fq P85_five.fq P86_five.fq P87_five.fq P88_five.fq P89_five.fq P8_five.fq P90_five.fq P91_five.fq P92_five.fq P93_five.fq P94_five.fq P95_five.fq P96_five.fq P97_five.fq P98_five.fq P99_five.fq P9_five.fq );

foreach my $file (@a) {

	$file =~ /(^P\d+)_five.fq/;
	
        print "cutadapt -a AACTGTAGGCACCATCAAT -m 15 -o $1_three.fq $file &\n";

}

