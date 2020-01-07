#!/usr/bin/perl

use strict;
use warnings;

my $fq_name = shift;
die "\n\n\tperl $0 <FQ_NAME>\n\n" unless $fq_name;
open(FN, $fq_name) or die "Can't open for $!\n";
while(<FN>){
	chomp;
	my @a = split /\s/;
	foreach my $file (@a){
		$file =~ /(.*)\.fq/;
#		print "$1\n";

		print "perl 059_adaptor_data.pl $file > $1_adaptor_number &\n";
		
	}


}
close FN;
