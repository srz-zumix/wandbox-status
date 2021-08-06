
#
# help
#
help: ## show help
	@grep -E '^[a-zA-Z][a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sed -e 's/^GNUmakefile://' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: server

server: ## create docs local server
	cd docs; python3 -m http.server

readme: README.md

README.md: README.md.j2
	amaterasu README.md.j2 > README.md
