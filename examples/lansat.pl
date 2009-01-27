#!/usr/bin/perl

use warnings;
use strict;

use lib 'lib', '../lib';  # not needed when module is installed
use Geo::Format::Landsat::MTL;

use Data::Dumper;
$Data::Dumper::Indent = 1;

@ARGV==1
    or die "Usage: $0 <filename>\n";

my ($fn) = @ARGV;

my ($type, $data) = landsat_mtl_from_file $fn;
warn "TYPE=$type\n";
warn Dumper $data;
