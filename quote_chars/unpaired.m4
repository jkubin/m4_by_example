divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/07/06], [quotation_marks])
___DESCR([])
___POINT([how to print an unpaired quote mark to stdout])
___USAGE([m4 unpaired.m4])

# prefix changequote`'format(`%c', 91)format(`%c', 91)format(`%c', 91)changequote([,]) suffix[]dnl

divert(1)dnl
prefix changequote`'format(`%c', 91)changequote([,]) suffix
divert(-1)

divert(0)dnl
