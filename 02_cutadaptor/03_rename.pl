#!/usr/bin/perl

use strict;
use warnings;

my $re = shift;
die "\n\n\tperl $0 <Relation>\n\n" unless $re;
open(RE, $re) or die "Can't open for $!\n";
while(<RE>){
	chomp;
	my @a = split /\s/;

	print "cp $a[1].fastq $a[0].fq &\n";
		
	}
close RE;
