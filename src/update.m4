ifdef(`__update_common_makefile__',,`define(`__update_common_makefile__',1)dnl
include(`common-makefile/src/log.m4')dnl
include(`common-makefile/src/shell-utils.m4')dnl
`#' File: __file__
'dnl
changequote([[,]])dnl
dnl
[[
MAKEFILE_UPDATE_URL ?= _MAKEFILE_UPDATE_URL

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
]]
changequote(`,')dnl
)dnl
dnl vim: noexpandtab
