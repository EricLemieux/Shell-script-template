# Run shellcheck for each shell script within the project in order to help catch some errors.
.PHONY: lint
lint:
	@find . -name *.sh | xargs shellcheck
