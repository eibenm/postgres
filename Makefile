.DEFAULT_GOAL := help

# Cite: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

IP_ADDRESS="$(ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}')"
TESTS='asshat'

.PHONY: up
up: ## Run the application.  ( assumes "make init" has already been run )
	@docker-compose up -d
	@sh ./scripts/pgadmin.sh

.PHONY: down
down: ## Stop the applicaiton.
	@docker-compose down -v

