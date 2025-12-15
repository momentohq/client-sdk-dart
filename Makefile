.PHONY: install
## Install dependencies
install: 
	dart pub get

.PHONY: test
## Run unit and integration tests from the root of the directory
test: 
	@if [ -z "$$MOMENTO_API_KEY" ]; then \
		echo "ERROR: MOMENTO_API_KEY environment variable is missing"; \
		exit 1; \
	fi
	dart test

.PHONY: format
## Idiomatically format Dart source code.
format: 
	dart format .

.PHONY: lint
## Apply automated fixes to Dart source code and analyze the source code.
lint: 
	dart fix --apply && dart analyze
