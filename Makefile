SHELL=/bin/zsh
.PHONY: init zim deploy source brew

init:
	$(MAKE) zim
	$(MAKE) deploy
	$(MAKE) source
	$(MAKE) brew
	$(MAKE) asdf

zim:
	./zim.sh

deploy:
	./deploy.sh

source:
	source ~/.zshrc

brew:
	./brew.sh

asdf:
	-asdf plugin add java
	-asdf plugin add ruby
	asdf install
	asdf reshim