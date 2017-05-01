include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
FORCE:
help-%:
	$(DBG_FLAG)$(SED) -n "/[#] [=]\+/,/^$*: / { /"$*":/{q}; p; } " $(MAKEFILE_LIST) \
		| tac \
		| sed -n "1,/===/ {/===/n; s/^# //p}" \
		| tac \
		| sed -n "p; 1s/./=/gp; 1a\ "

dnl vim: noexpandtab
