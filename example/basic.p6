use v6;

use Proc::Async::Timeout;

my $s = Proc::Async::Timeout.new('find', '/', :enc<latin-1>);

$s.stdout.lines.tap: { .say }
$s.stderr.tap: { Nil }

await $s.start: timeout => 200;

CATCH { 
    when X::Proc::Async::Timeout {
        say "cought: ", .^name;
        say "reporting: ", .Str;
    }
}
