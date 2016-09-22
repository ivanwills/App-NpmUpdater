package App::Npm::Version;

# Created on: 2016-06-09 16:43:24
# Create by:  Ivan Wills
# $Id$
# $Revision$, $HeadURL$, $Date$
# $Revision$, $Source$, $Date$

use Moo;
use warnings;
use version;
use Carp;
use Data::Dumper qw/Dumper/;
use English qw/ -no_match_vars /;

our $VERSION = version->new('0.0.1');

has version => (
    is      => 'rw',
    isa     => sub {
        ref $_[0] eq 'ARRAY' && length $_[0] == 3;
    },
    default => sub {[]},
);

sub major { $_[0]->version->[0]; }
sub minor { $_[0]->version->[1]; }
sub patch { $_[0]->version->[2]; }
sub dev   { $_[0]->version->[3]; }

1;

__END__

=head1 NAME

App::Npm::Version - Encapsulates a node module version number

=head1 VERSION

This documentation refers to App::Npm::Version version 0.0.1

=head1 SYNOPSIS

   use App::Npm::Version;

   # Brief but working code example(s) here showing the most common usage(s)
   # This section will be as far as many users bother reading, so make it as
   # educational and exemplary as possible.


=head1 DESCRIPTION

=head1 SUBROUTINES/METHODS

=head2 major

=head2 minor

=head2 patch

=head2 dev

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 DEPENDENCIES

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

There are no known bugs in this module.

Please report problems to Ivan Wills (ivan.wills@gmail.com).

Patches are welcome.

=head1 AUTHOR

Ivan Wills - (ivan.wills@gmail.com)

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2016 Ivan Wills (14 Mullion Close, Hornsby Heights, NSW Australia 2077).
All rights reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself. See L<perlartistic>.  This program is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

=cut
