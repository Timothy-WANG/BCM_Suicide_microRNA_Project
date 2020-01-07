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

	for(my $i=1; $i<=30; $i++){
		if ($a[$i] < 1){
			$p++;
			}
		}

	for(my $j=31; $j<=70; $j++){
		if ( $a[$j] < 1){
			$q++;
			}
                }

#	print "$p\t$q\n";

	if($p < 15 && $q < 20 ){
		print "$_\n";
	}

}

close FI;
