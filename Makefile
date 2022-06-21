STAGE?=develop

init apply console destroy graph plan output providers show refresh:
	cd variables/$(STAGE) && terragrunt $@

plan-ci:
	cd variables/$(STAGE) && terragrunt plan -no-color

fmt:
	@cd stack/ && terraform fmt

apply-ci:
	cd variables/$(STAGE) && terragrunt apply -auto-approve

validate:
	@cd $(shell make init 2>&1 | grep "working directory to" | awk '{print $$8}') && terraform validate

fmt-check:
	@cd stack/ && terraform fmt -check

lint:
	@cd stack/ && tflint --enable-rule=terraform_unused_declarations

module:
	cd variables/$(STAGE) && terragrunt plan --target

apply-module:
	cd variables/$(STAGE) && terragrunt apply --target 

state-show:
	cd variables/$(STAGE) && terragrunt show

state-json:
	cd variables/$(STAGE) && terragrunt show -json >> out.json

state-list:
	cd variables/$(STAGE) && terragrunt state list

import:
	cd variables/$(STAGE) && terragrunt import

state-pull:
	cd variables/$(STAGE) && terragrunt state pull >> terraform.tfstate

state-push:
	cd variables/$(STAGE) && terragrunt state push terraform.tfstate