use v6.c;

use lib 'lib';
use Test;

use Proc::Async::Timeout;

my $s = Proc::Async::Timeout.new('sleep', '1m');

await $s.start: timeout => 2;

done-testing;
