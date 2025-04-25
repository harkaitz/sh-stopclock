SHELL STOPWATCH
===============

A command line stopwatch and time difference calculator.

## Help

date-diff

    Usage: date-diff [-S|M|H|D] TIME1 [TIME2 (default now)] ...
    
    Print the sum of all time differences sum(abs(TIME2-TIME1),...) and
    return it in seconds (-S) minutes (-M) hours (-H) or days (-D), or
    a combination (default).
    
    Examples:
    
      $ date-diff 08:46 14:44 15:52
      0 days 6 hours 14 minutes 5 seconds
      $ date-diff -M 08:46 14:44
      358
      $ date-diff 2025-03-01 2025-04-01
      30 days 23 hours 0 minutes 0 seconds   <- Summer time change -1h
    
    The time is parsed using date(1), read it's manual to know it's
    format. The difference is calculated using the seconds since epoch.

stopclock

    Usage: stopclock [-S|M|H|D] [-s] [-n default]
    
    A stopwatch for the terminal. Init measuring time with "-s", then
    get results in seconds (-S) minutes (-M) hours (-H) days (-D).
    
    Name different measurements with "-n", the starting time point is
    saved in ~/.stopclock/NAME in seconds since epoch. The output format
    is the same as described in `date-diff --help`.

## Collaborating

For making bug reports, feature requests, support or consulting visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
