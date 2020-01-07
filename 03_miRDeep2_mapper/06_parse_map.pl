#!/usr/bin/perl

use strict;
use warnings;

my $log = shift;

my $total=0;
my $map=0;
my $unmap=0;

die "\n\n\tperl $0 <Log>\n\n" unless $log;
open(LO, $log) or die "Can't open for $!\n";
while(<LO>){
	if(/^total/){
	chomp;
	my @a = split /\s/;
	$total += $a[1];
	$map   += $a[2];
	$unmap += $a[3];
}

}
close LO;

print "total:$total\nmap:$map\nunmap:$unmap\n";
