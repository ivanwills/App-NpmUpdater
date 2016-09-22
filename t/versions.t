#!/usr/bin/perl

BEGIN { $ENV{TESTING} = 1 }

use strict;
use warnings;
use Test::More;
use Test::Warnings;

my $module = 'App::NpmUpdater';
use_ok( $module );



done_testing();
