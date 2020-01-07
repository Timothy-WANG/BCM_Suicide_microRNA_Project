#!/usr/bin/perl

use strict;
use warnings;

my $matrix = shift;

die "\n\tperl $0 <Matrix>\n\n" unless $matrix;

open(FI, $matrix) or die "Can't open for $!\n";
my $title = <FI>;
print "$title";
while(<FI>){
	chomp;

	my $p=0;
	my $q=0;

	my @a = split /\s/;

	for(my $i=1; $i<=80; $i+=2){
		if ($a[$i] < 1){
			$p++;
			}
		}

	for(my $j=2; $j<=80; $j+=2){
		if ( $a[$j] < 1){
			$q++;
			}
                }

#	print "$p\t$q\n";

	if($p < 20 && $q < 20 ){
		print "$_\n";
	}

}

close FI;
