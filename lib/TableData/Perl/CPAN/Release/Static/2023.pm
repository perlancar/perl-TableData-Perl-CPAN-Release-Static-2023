package ## no critic: Modules::RequireFilenameMatchesPackage
    # hide from PAUSE
    TableDataRole::Perl::CPAN::Release::Static::2023;

use 5.010001;
use strict;
use warnings;

use Role::Tiny;
with 'TableDataRole::Source::CSVInFile';

around new => sub {
    my $orig = shift;

    require File::Basename;
    my $filename = File::Basename::dirname(__FILE__) . '/../../../../../../share/2023.csv';
    unless (-f $filename) {
        require File::ShareDir;
        $filename = File::ShareDir::dist_file('TableData-Perl-CPAN-Release-Static-2023', '2023.csv');
    }
    $orig->(@_, filename=>$filename);
};

package TableData::Perl::CPAN::Release::Static::2023;

use 5.010001;
use strict;
use warnings;

use Role::Tiny::With;

# AUTHORITY
# DATE
# DIST
# VERSION

with 'TableDataRole::Perl::CPAN::Release::Static::2023';

# STATS

1;
# ABSTRACT: CPAN releases for the year 2023

=head1 TABLEDATA NOTES

The data was retrieved from MetaCPAN.

The C<status> column is the status of the release when the row was retrieved
from MetaCPAN. It is probably not current, so do not use it.
