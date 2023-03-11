#
# Makefile
#

.DEFAULT_GOAL := help

.PHONY: help
help: MAKEFILE_FMT = "  \033[36m%-25s\033[0m%s\n"
help: ## (default) Displays this message
	@echo "Makefile Targets:"
	@grep -E '^[a-zA-Z0-9_-]*:.*?##' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?##"}; {printf $(MAKEFILE_FMT), $$1, $$2}'
	@echo ""
	@echo "Parameters:"
	@grep -E '^[A-Z0-9_-]* ?\?=.*?##' $(MAKEFILE_LIST) | awk 'BEGIN {FS = " ?\\?=.*?##"}; {printf $(MAKEFILE_FMT), $$1, $$2}'
: # Hacky way to display a newline ##

.PHONY: status
status: ## Displays the status of the vagrant box
	vagrant status

.PHONY: up
up: ## Starts the vagrant box
	vagrant up --provider=docker

.PHONY: down
down: ## Stops the vagrant box
	vagrant destroy --force
