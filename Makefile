PYTHON ?= python


help: Makefile
	@echo
	@echo " Choose a command run in Ubbe:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo


## config: Install dependencies.
config:
	$(PYTHON) -m pip install ansible
	$(PYTHON) -m pip install ansible-lint


## lint: Lint ansible files.
lint:
	ansible-lint -v


.PHONY: help lint config
