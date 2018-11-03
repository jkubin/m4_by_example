divert(-1)
divert(2)dnl
undivert(
        `foo.txt',
        `bar.txt',
        `baz.txt',
)dnl
divert(1)dnl
this is different kind of file include (no expansion)
