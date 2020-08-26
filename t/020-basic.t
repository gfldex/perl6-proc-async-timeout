use v6.c;

use lib 'lib';
use Test;

plan 2;

use Proc::Async::Timeout;

my $s = Proc::Async::Timeout.new('sleep', '60');

throws-like { await $s.start: timeout => 1 }, X::Proc::Async::Timeout, 'timeout hit';

$s = Proc::Async::Timeout.new('sleep', '1s');
lives-ok { await $s.start: timeout => ∞ }, ‚infinite timeout will not throw‘;
