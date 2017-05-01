include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
dnl
MAKEFILE_UPDATE_URL ?= https://raw.githubusercontent.com/alejandrogallo/latex-makefile/master/dist/Makefile

# ===============================
# Update the makefile from source
# ===============================
#
# You can always get the  latest `Makefile` version using this target.  You may
# override the `MAKEFILE_UPDATE_URL` to  any path where you save your own
# personal makefile
#
update: ## Update the makefile from the repository
	$(ARROW) "Getting makefile from $(MAKEFILE_UPDATE_URL)"
	$(DBG_FLAG)wget $(MAKEFILE_UPDATE_URL) -O Makefile

dnl vim: noexpandtab
