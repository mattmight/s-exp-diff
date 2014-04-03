Author: Matt Might
Site:   http://matt.might.net/

`s-diff`: S-Expression-aware diff
=================================


For tools that output S-Expressions, shell scripts may want to know when
the S-Expressions are equal, even if the text representing those S-Expressions
are not equal.

`s-diff <file1> <file2>` has exit status 0 if the `<file1>` and `<file2>` have
the same sequence of S-Expressions, modulo whitespace and comments, and 1
otherwise.


Installation
------------

With Racket installed, run:

    make

and to install locally into `~/bin`, run:

    make install

To install in `/usr/local/bin`, run:

    sudo make install-global

