#!/usr/bin/perl

use strict;
use warnings;

# The folder contain the whole fastq file of the raw fastq reads after gunzip the original file.
# This script is used to merge the fastq file, 4 file merge into one according the name.

my @a;

my $file = shift;

die "\n\tperl $0 <file>\n\n" unless $file;

open(FI, $file) or die "Can't open for $!\n";
while(<FI>){
	chomp;
	if ($_){
	@a = split /\s/;
}
}
close FI;


my $length = @a;

#print "$length\n";

open(ID, ">myID") or die "Can't open for $!\n";

for( my $i=0; $i<$length/4; $i++ ) {

	my $one = shift @a;
	my $two = shift @a;
	my $three = shift @a;
	my $four = shift @a;

	$one =~ /(^.*L00)(\d)(.*?)$/;
	my $one_1 = $1;
	my $one_2 = $2;
	my $one_3 = $3;

	$two =~ /^(.*L00)(\d)(.*?)$/;
	my $two_1 = $1;
	my $two_2 = $2;
	my $two_3 = $3;

	$three =~ /^(.*L00)(\d)(.*?)$/;
	my $three_1 = $1;
	my $three_2 = $2;
	my $three_3 = $3;

	$four =~ /^(.*L00)(\d)(.*?)$/;
	my $four_1 = $1;
	my $four_2 = $2;
	my $four_3 = $3;

	$one_1 =~ /(^.*)_L00/;

	print ID "$1\tP$i.fastq\n";

	if ( ($one_1 eq $two_1) && ( $two_1 eq $three_1) && ($three_1 eq $four_1) && ($one_2 ==1) && ($two_2==2) && ($three_2 ==3) && ($four_2==4) ) {
	
		system "cat $one $two $three $four >> P$i.fastq &";
#		print "$one\n$two\n$three\n$four\n";
	}
}
close ID;
