#!/usr/bin/perl

use strict;
use warnings;

# I need to prepare a id file at first

my @a;
my $title = "miRNA";

for (my $i=1; $i<=70; $i++) {
	my $a= $i."A";
	my $b= $i."B";
	my $file_a = $i."A.csv";
	my $file_b = $i."B.csv";
	$title = $title." "."$a"." "."$b";
	
	system "cut -f2 $file_a > count_a";
	system "cut -f2 $file_b > count_b";
	system "paste id count_a count_b > matrix";
	system "mv matrix id";
}

open(ID, "<id") or die "Can't open for $!\n";
<ID>;
print "$title\n";
while(<ID>){
	chomp;
	my @b = split /\s/;
	print "@b\n";
}
close ID;
