include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
# Remove command flags
RM_FLAGS ?= -rf

# Default clean file to be cleaned
DEFAULT_CLEAN_FILES ?=

# Files to be cleaned
CLEAN_FILES ?= $(DEFAULT_CLEAN_FILES)

# =============
# Main cleaning
# =============
#
# This does a main cleaning of the produced auxiliary files.  Before using it
# check which files are going to be cleaned up.
#
clean: ## Remove build and temporary files
	$(ARROW) Cleaning up...
	$(DBG_FLAG) {\
		for file in $(CLEAN_FILES); do \
			test -e $$file && { \
				$(RM) $(RM_FLAGS) $$file &&      \
				echo $(call print-cmd-name,RM) "$$file";\
		 } || : ; \
		done \
	}

dnl vim: noexpandtab
