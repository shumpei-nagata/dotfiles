SHELL=/bin/zsh
.PHONY: init deploy source brew

init:
	$(MAKE) deploy
	$(MAKE) source
	$(MAKE) brew

deploy:
	./deploy.sh

source:
	source ~/.zshrc

brew:
	./brew.sh