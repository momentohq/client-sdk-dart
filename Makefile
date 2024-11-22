.PHONY: install
## Install dependencies
install: 
	dart pub get

.PHONY: test
## Run unit and integration tests from the root of the directory
test: 
	dart test

.PHONY: format
## Idiomatically format Dart source code.
format: 
	dart format .

.PHONY: lint
## Apply automated fixes to Dart source code.
lint: 
	dart fix --apply
