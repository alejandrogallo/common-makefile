ifdef(`__shell_utils_common_makefile__',,`
define(`__shell_utils_common_makefile__',1)dnl
include(`common-makefile/src/os.m4')dnl
dnl
`#' File: __file__
# Shell used
SH ?= bash
# Alias for SHELL
SHELL ?= $(SH)
# Python interpreter
PY ?= python
# Alias for PY
PYTHON ?= $(PY)
# Perl command
PERL ?= perl
# Grep program version
GREP ?= grep
# Find utility
FIND ?= find
# sed program version
SED ?= $(if $(OSX),gsed,sed)
# awk program to use
AWK ?= $(if $(OSX),gawk,awk)
# For creating tags
CTAGS ?= ctags
# To get complete paths
READLINK ?= $(if $(OSX),greadlink,readlink)
# xargs program to use
XARGS ?= xargs
# tr program to use
TR ?= tr
# git version to use
GIT ?= git
# which program to use
WHICH ?= which
# sort program to use
SORT ?= sort
# uniq program to use
UNIQ ?= uniq
# Makefile binary
MAKE ?= $(or $(MAKE),make)
# rm command
RM ?= rm
# C++ compiler
CXX ?= g++
# C compiler
CC ?= gcc
# Fortran compiler
FC ?= gfortran
# M4 compiler
M4 ?= m4
')dnl
