.PHONY: init deploy brew

init:
	$(MAKE) deploy
	$(MAKE) brew

deploy:
	./deploy.sh

brew:
	./brew.sh