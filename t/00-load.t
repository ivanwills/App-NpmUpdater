#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok( 'App::NpmUpdater' );
}

diag( "Testing App::NpmUpdater $App::NpmUpdater::VERSION, Perl $], $^X" );
done_testing();
