#!/usr/bin/perl

use strict;
use warnings;

# This example is issued from Ninova et al. 2005.

use Lingua::ResourceAdequacy;

my $RA = Lingua::ResourceAdequacy->new();

my @words = ("il", "a", "r�par�", "le", "syst�me", "de", "fichiers");
my $RA2 = Lingua::ResourceAdequacy->new("word_list" => \@words);

my @terms = ("syst�me", "syst�me de fichiers");

my $RA3 = Lingua::ResourceAdequacy->new("word_list" => \@words, 
					      "term_list" => \@terms);
$RA3->term_list_stats();
$RA3->print_term_list_stats();
$RA3->word_list_stats();
$RA3->print_word_list_stats();

my @DUP = ("syst�me", "syst�me", "de", "fichiers");
my @UP = ("syst�me", "syst�me de fichiers");

$RA3->set_DUP_list(\@DUP);

$RA3->set_UP_list(\@UP);

$RA3->UP_list_stats();
$RA3->print_UP_list_stats();

$RA3->DUP_list_stats();
$RA3->print_DUP_list_stats();

$RA3->AdequacyMeasures();
$RA3->print_AdequacyMeasures();

