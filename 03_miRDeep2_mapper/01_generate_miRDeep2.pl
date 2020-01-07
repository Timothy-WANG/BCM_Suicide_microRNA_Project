#!/usr/bin/perl

use strict;
use warnings;


#my @a = qw( 10B.fq );

my @a = qw( 10A_trim.fq 10B_trim.fq 11A_trim.fq 11B_trim.fq 12A_trim.fq 12B_trim.fq 13A_trim.fq 13B_trim.fq 14A_trim.fq 14B_trim.fq 15A_trim.fq 15B_trim.fq 16A_trim.fq 16B_trim.fq 17A_trim.fq 17B_trim.fq 18A_trim.fq 18B_trim.fq 19A_trim.fq 19B_trim.fq 1A_trim.fq 1B_trim.fq 20A_trim.fq 20B_trim.fq 21A_trim.fq 21B_trim.fq 22A_trim.fq 22B_trim.fq 23A_trim.fq 23B_trim.fq 24A_trim.fq 24B_trim.fq 25A_trim.fq 25B_trim.fq 26A_trim.fq 26B_trim.fq 27A_trim.fq 27B_trim.fq 28A_trim.fq 28B_trim.fq 29A_trim.fq 29B_trim.fq 2A_trim.fq 2B_trim.fq 30A_trim.fq 30B_trim.fq 31A_trim.fq 31B_trim.fq 32A_trim.fq 32B_trim.fq 33A_trim.fq 33B_trim.fq 34A_trim.fq 34B_trim.fq 35A_trim.fq 35B_trim.fq 36A_trim.fq 36B_trim.fq 37A_trim.fq 37B_trim.fq 38A_trim.fq 38B_trim.fq 39A_trim.fq 39B_trim.fq 3A_trim.fq 3B_trim.fq 40A_trim.fq 40B_trim.fq 41A_trim.fq 41B_trim.fq 42A_trim.fq 42B_trim.fq 43A_trim.fq 43B_trim.fq 44A_trim.fq 44B_trim.fq 45A_trim.fq 45B_trim.fq 46A_trim.fq 46B_trim.fq 47A_trim.fq 47B_trim.fq 48A_trim.fq 48B_trim.fq 49A_trim.fq 49B_trim.fq 4A_trim.fq 4B_trim.fq 50A_trim.fq 50B_trim.fq 51A_trim.fq 51B_trim.fq 52A_trim.fq 52B_trim.fq 53A_trim.fq 53B_trim.fq 54A_trim.fq 54B_trim.fq 55A_trim.fq 55B_trim.fq 56A_trim.fq 56B_trim.fq 57A_trim.fq 57B_trim.fq 58A_trim.fq 58B_trim.fq 59A_trim.fq 59B_trim.fq 5A_trim.fq 5B_trim.fq 60A_trim.fq 60B_trim.fq 61A_trim.fq 61B_trim.fq 62A_trim.fq 62B_trim.fq 63A_trim.fq 63B_trim.fq 64A_trim.fq 64B_trim.fq 65A_trim.fq 65B_trim.fq 66A_trim.fq 66B_trim.fq 67A_trim.fq 67B_trim.fq 68A_trim.fq 68B_trim.fq 69A_trim.fq 69B_trim.fq 6A_trim.fq 6B_trim.fq 70A_trim.fq 70B_trim.fq 7A_trim.fq 7B_trim.fq 8A_trim.fq 8B_trim.fq 9A_trim.fq 9B_trim.fq );

foreach my $name ( @a ) {

$name =~ /(.*)_trim.fq/;

open(OP, ">02_miRDeep2_$1.sh") or die "Can't open for $!\n";

#print OP "perl /collab/mwang14/99_tim_baylor/software/mirdeep2/bin/mapper.pl /collab/mwang14/99_tim_baylor/01_data/03_inhouse_trim_fq/$name -e -h -i -j -k AACTGTAGGCACCATCAAT -l 18 -m -p /collab/mwang14/99_tim_baylor/03_mirdeep2/01_human_ref/index/Human_genome01 -s ./reads_collapsed/$1-reads_collapsed.fa -t ./reads_arf/$1.arf -v 1>map$1_log 2>map$1_log.err &\n\n";


print OP "perl /collab/mwang14/99_tim_baylor/software/mirdeep2/bin/miRDeep2.pl /collab/mwang14/99_tim_baylor/04_miRDeep2_polish/01_mapper/01_mapper.sh/reads_collapsed/$1-reads_collapsed.fa /collab/mwang14/99_tim_baylor/03_mirdeep2/08_mideep03/Human_genome01.fa /collab/mwang14/99_tim_baylor/04_miRDeep2_polish/01_mapper/01_mapper.sh/reads_arf/$1.arf /collab/mwang14/99_tim_baylor/03_mirdeep2/08_mideep03/hsp_mature_mirbase_new.fa /collab/mwang14/99_tim_baylor/03_mirdeep2/08_mideep03/other_mature_species_new.fa /collab/mwang14/99_tim_baylor/03_mirdeep2/08_mideep03/hsp_haripin_mirbase_new.fa -P -u -t Human -z P$1 1>mirdeep$1_log 2>mirdeep$1_log.err &\n";

close OP;

}
