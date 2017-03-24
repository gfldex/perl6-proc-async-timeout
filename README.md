# Proc::Async::Timeout

Run a command asynchronos with a timeout. When the timeout is hit
`X::Proc::Async::Timeout` is thrown and the command is killed.

[![Build Status](https://travis-ci.org/gfldex/perl6-proc-async-timeout.svg?branch=master)](https://travis-ci.org/gfldex/perl6-proc-async-timeout)

## SYNOPSIS

```
use Proc::Async::Timeout;

my $s = Proc::Async::Timeout.new('sleep', '1m');

await $s.start: timeout => 2;
# OUTPUT: ⟨sleep⟩ timed out after 2 seconds.
```

## LICENSE

All files (unless noted otherwise) can be used, modified and redistributed
under the terms of the Artistic License Version 2. Examples (in the
documentation, in tests or distributed as separate files) can be considered
public domain.

ⓒ2017 Wenzel P. P. Peppmeyer
