version = latest
DOCKER  = docker

.Phony: build-image
build-image: Dockerfile
	$(DOCKER) build --tag=andirady/$(shell basename $(PWD)):$(version) .
