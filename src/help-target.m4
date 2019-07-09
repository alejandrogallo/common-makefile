ifdef(`__helptarget_common_makefile__',,`define(`__helptarget_common_makefile__',1)dnl
include(common-makefile/src/log.m4)dnl
include(common-makefile/src/shell-utils.m4)dnl
`#' File: __file__
dnl
FORCE:
help-%:
	$(DBG_FLAG)$(SED) -n "/[#] [=]\+/,/^$*: / { /"$*":/{q}; p; } " $(MAKEFILE_LIST) \
		| tac \
		| sed -n "1,/===/ {/===/n; s/^# //p}" \
		| tac \
		| sed -n "p; 1s/./=/gp; 1a\ "
')dnl
dnl vim:noexpandtab
