#!/usr/bin/perl

use strict;
use warnings;

my $file = shift;
die "\n\tperl $0 <FILE>\n\n" unless $file;
my $title;

open(FI, $file) or die "Can't open for $!\n";
while(<FI>){
	chomp;
	if ($_) {
	my @a = split /\s/;
#	$_ =~ s/miRNAs_expressed_//g;
	$_ =~ s/\.csv//g;
	$title = $_;
#	print "$title\n";
#	my @a = split /\s/;

	foreach my $file (@a){
		system "cut -f2 $file > count";
		system "paste id count > matrix";
		system "mv matrix id";
		}	
	}
}

open(ID, "<id") or die "Can't open for $!\n";
<ID>;
print "miRNA\t$title\n";
while(<ID>){
	chomp;
	my @b = split /\s/;
	print "@b\n";
}
close ID;
