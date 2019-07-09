ifdef(`__os_common_makefile__',,`define(`__os_common_makefile__',1)dnl
`#' File: __file__
# Recognise OS
ifeq ($(shell uname),Linux)
LINUX := 1
OSX   :=
else
LINUX :=
OSX   := 1
endif
')dnl
dnl vim:noexpandtab
