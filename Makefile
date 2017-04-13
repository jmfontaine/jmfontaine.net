.DEFAULT: help
.PHONY: help
.SILENT:

help:
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'

build: clean ## Build web site
	npm run hexo generate

clean: ## Delete temporary files
	npm run hexo clean

install-deps: ## Install dependencies
	npm install

serve: ## Run a local server
	npm run hexo server
