DOCKER_ACCOUNT = lesovsky
SITENAME = pgcenter-site
TAG=$(shell git describe --tags --abbrev=0)

.PHONY: help docker-build docker-push deploy

all: help

help:
	@echo "Makefile available targets:"
	@echo "  * docker-build     build Docker image"
	@echo "  * docker-push      push Docker image to Registry"

docker-build:
	docker build --build-arg VUE_APP_RUNTIME_MODE=production -t ${DOCKER_ACCOUNT}/${SITENAME}:${TAG} .
	docker image prune --force --filter label=stage=intermediate
	docker tag ${DOCKER_ACCOUNT}/${SITENAME}:${TAG} ${DOCKER_ACCOUNT}/${SITENAME}:latest

docker-push:
	docker push ${DOCKER_ACCOUNT}/${SITENAME}:${TAG}
	docker push ${DOCKER_ACCOUNT}/${SITENAME}:latest
