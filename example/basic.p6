use v6;

use Proc::Async::Timeout;

my $s = Proc::Async::Timeout.new('sleep', '1m');

await $s.start: timeout => 2;

CATCH { 
    when X::Proc::Async::Timeout {
        say "cought: ", .^name;
        say "reporting: ", .Str;
    }
}
