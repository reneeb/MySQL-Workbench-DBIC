#!perl -T

use Test::More tests => 1;
use MySQL::Workbench::DBIC;

SKIP:{
 
    skip "Set RELEASE_TESTING=1 to run this test", 1 if not $ENV{RELEASE_TESTING};

    eval "use Perl::Critic";
    skip "Perl::Critic required", 1 if $@;

    my $pc = Perl::Critic->new();
    my @violations = $pc->critique($INC{'MySQL/Workbench/DBIC.pm'});
    is_deeply(\@violations,[],'Perl::Critic');
}

