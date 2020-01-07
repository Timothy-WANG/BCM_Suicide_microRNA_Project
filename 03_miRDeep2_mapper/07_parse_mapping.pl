#!/usr/bin/perl

use strict;
use warnings;

my @file = qw( map10A_log.err map10B_log.err map11A_log.err map11B_log.err map12A_log.err map12B_log.err map13A_log.err map13B_log.err map14A_log.err map14B_log.err map15A_log.err map15B_log.err map16A_log.err map16B_log.err map17A_log.err map17B_log.err map18A_log.err map18B_log.err map19A_log.err map19B_log.err map1A_log.err map1B_log.err map20A_log.err map20B_log.err map21A_log.err map21B_log.err map22A_log.err map22B_log.err map23A_log.err map23B_log.err map24A_log.err map24B_log.err map25A_log.err map25B_log.err map26A_log.err map26B_log.err map27A_log.err map27B_log.err map28A_log.err map28B_log.err map29A_log.err map29B_log.err map2A_log.err map2B_log.err map30A_log.err map30B_log.err map31A_log.err map31B_log.err map32A_log.err map32B_log.err map33A_log.err map33B_log.err map34A_log.err map34B_log.err map35A_log.err map35B_log.err map36A_log.err map36B_log.err map37A_log.err map37B_log.err map38A_log.err map38B_log.err map39A_log.err map39B_log.err map3A_log.err map3B_log.err map40A_log.err map40B_log.err map41A_log.err map41B_log.err map42A_log.err map42B_log.err map43A_log.err map43B_log.err map44A_log.err map44B_log.err map45A_log.err map45B_log.err map46A_log.err map46B_log.err map47A_log.err map47B_log.err map48A_log.err map48B_log.err map49A_log.err map49B_log.err map4A_log.err map4B_log.err map50A_log.err map50B_log.err map51A_log.err map51B_log.err map52A_log.err map52B_log.err map53A_log.err map53B_log.err map54A_log.err map54B_log.err map55A_log.err map55B_log.err map56A_log.err map56B_log.err map57A_log.err map57B_log.err map58A_log.err map58B_log.err map59A_log.err map59B_log.err map5A_log.err map5B_log.err map60A_log.err map60B_log.err map61A_log.err map61B_log.err map62A_log.err map62B_log.err map63A_log.err map63B_log.err map64A_log.err map64B_log.err map65A_log.err map65B_log.err map66A_log.err map66B_log.err map67A_log.err map67B_log.err map68A_log.err map68B_log.err map69A_log.err map69B_log.err map6A_log.err map6B_log.err map70A_log.err map70B_log.err map7A_log.err map7B_log.err map8A_log.err map8B_log.err map9A_log.err map9B_log.err );

my %hash;

foreach my $name (@file){
	$name =~ /map(.*)_log\.err/;	
#	print "$1\n";
	my $id = $1;
	open(LO, $name) or die "Can't open for $!\n";
	while(<LO>){
		if(/^total/){
		chomp;
		my @a = split /\s/;
#		print "$a[4]\n";
#		print "$id\t$a[4]\n";
		$hash{$id}=$a[4];
		}
	}
	close LO;
}

for (my $i=1;$i<=70;$i++){
	my $a = $i."A";
	my $b = $i."B";
	print "$a\t$hash{$a}\n";
	print "$b\t$hash{$b}\n";
}
