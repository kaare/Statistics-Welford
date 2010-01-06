use strict;
use warnings;
use Test::More tests => 18;

use_ok 'Statistics::Welford';

ok( my $stat = Statistics::Welford->new, 'New object' );
ok( $stat->add($_), 'Add data' ) for (1..10);
is( $stat->n, 10, 'Check if n is correct' );
is( $stat->min, 1, 'Check if min is correct' );
is( $stat->max, 10, 'Check if max is correct' );
is( $stat->mean, 5.5, 'Check if mean is correct' );
is( $stat->variance, 9.16666666666667, 'Check if variance is correct' );
is( $stat->standard_deviation, 3.02765035409749, 'Check if standard_deviation is correct' );
