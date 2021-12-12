SHELL=/bin/bash

.DEFAULT_GOAL := help

## provision-prod: Provisions the production web environment
.PHONY: provision-prod
provision-prod:
	ansible-playbook --limit production -i hosts playbook.yml --ask-vault-pass

## update-ansible-roles: Updates the ansible roles
.PHONY: update-ansible-roles
update-ansible-roles:
	ansible-galaxy install -r galaxy.yml -f

## help:		Print this message
.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<
