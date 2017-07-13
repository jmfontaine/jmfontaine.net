.DEFAULT: help
.PHONY: help
.SILENT:

PROJECT_DIR="$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))"
BUILD_DIR="$(PROJECT_DIR)/build"
NODE_BIN_DIR="$(PROJECT_DIR)/node_modules/.bin"

help:
	grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'

build: clean ## Generate the build artifacts
	node build.js

clean: ## Delete build artifacts
	rm -rf "${BUILD_DIR}"/*

install-deps: ## Install dependencies
	npm install

lint: ## Check source files for violations
	${NODE_BIN_DIR}/standard

lint-fix: ## Fix lint violations when possible
	${NODE_BIN_DIR}/standard --fix
