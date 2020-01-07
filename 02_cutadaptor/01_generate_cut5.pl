#!/usr/bin/perl

use strict;
use warnings;

my @a = qw ( P0.fastq P100.fastq P101.fastq P102.fastq P103.fastq P104.fastq P105.fastq P106.fastq P107.fastq P108.fastq P109.fastq P10.fastq P110.fastq P111.fastq P112.fastq P113.fastq P114.fastq P115.fastq P116.fastq P117.fastq P118.fastq P119.fastq P11.fastq P120.fastq P121.fastq P122.fastq P123.fastq P124.fastq P125.fastq P126.fastq P127.fastq P128.fastq P129.fastq P12.fastq P130.fastq P131.fastq P132.fastq P133.fastq P134.fastq P135.fastq P136.fastq P137.fastq P138.fastq P139.fastq P13.fastq P14.fastq P15.fastq P16.fastq P17.fastq P18.fastq P19.fastq P1.fastq P20.fastq P21.fastq P22.fastq P23.fastq P24.fastq P25.fastq P26.fastq P27.fastq P28.fastq P29.fastq P2.fastq P30.fastq P31.fastq P32.fastq P33.fastq P34.fastq P35.fastq P36.fastq P37.fastq P38.fastq P39.fastq P3.fastq P40.fastq P41.fastq P42.fastq P43.fastq P44.fastq P45.fastq P46.fastq P47.fastq P48.fastq P49.fastq P4.fastq P50.fastq P51.fastq P52.fastq P53.fastq P54.fastq P55.fastq P56.fastq P57.fastq P58.fastq P59.fastq P5.fastq P60.fastq P61.fastq P62.fastq P63.fastq P64.fastq P65.fastq P66.fastq P67.fastq P68.fastq P69.fastq P6.fastq P70.fastq P71.fastq P72.fastq P73.fastq P74.fastq P75.fastq P76.fastq P77.fastq P78.fastq P79.fastq P7.fastq P80.fastq P81.fastq P82.fastq P83.fastq P84.fastq P85.fastq P86.fastq P87.fastq P88.fastq P89.fastq P8.fastq P90.fastq P91.fastq P92.fastq P93.fastq P94.fastq P95.fastq P96.fastq P97.fastq P98.fastq P99.fastq P9.fastq );

foreach my $file (@a) {

	$file =~ /(^P\d+).fastq/;
	
        print "cutadapt -g GTTCAGAGTTCTACAGTCCGACGATC -o $1_five.fq $file &\n";

}

