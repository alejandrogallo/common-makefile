include_once(common-makefile/src/log.m4)dnl
include_once(common-makefile/src/version.m4)dnl
include_once(common-makefile/src/shell-utils.m4)dnl
dnl
# ================
# Print quick help
# ================
#
# It prints a quick help in the terminal
help: ## Prints help for targets with comments
	$(DBG_FLAG)$(or $(AWK),awk) ' \
		BEGIN {FS = ":.*?## "}; \
		/^## *<<HELP/,/^## *HELP/ { \
			help=$$1; \
			gsub("#","",help); \
			if (! match(help, "HELP")) \
				print help ; \
		}; \
		/^[a-zA-Z0-9_\-.]+:.*?## .*$$/{ \
			printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 ; \
		};' \
		$(MAKEFILE_LIST)
	@echo ""
	@echo "  $(MAKEFILE_VERSION)"
	@echo "  $(MAKEFILE_URL)"
	@echo "  Copyright $(MAKEFILE_AUTHOR) $(MAKEFILE_LICENSE) $(MAKEFILE_DATE)"
	@echo ""

dnl vim: noexpandtab
