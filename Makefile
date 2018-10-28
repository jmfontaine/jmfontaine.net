.DEFAULT_GOAL := help
.ONESHELL:
.PHONY:
.SHELL := /bin/bash
.SILENT:

help: ## Display usage
	awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

generate: ## Generate the content
	hugo

new: ## Create a new post
	$(eval NAME := $(shell bash -c 'read -p "Name: " name; echo $$name'))
	$(eval DATE := $(shell date +%Y-%m-%d))
	hugo new posts/$(DATE)-$(NAME).md

serve: ## Serve content locally
	hugo server
