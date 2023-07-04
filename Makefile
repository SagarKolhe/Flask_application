
export ROOT_FOLDER := ${CURDIR}
DOCKER_IMAGE_NAME := flask_application
TAG := latest
DOCKER_REGISTRY:= 16081998
#########################################################################################
all: build run

build: create
	@echo "---------------- starting build ---------------------------"
	/bin/bash build/docker/build.sh ${DOCKER_IMAGE_NAME} ${TAG}

create:
	@echo "----------------- Create the docker image ------------------"

docker_push: push
	docker logout
	docker login -u 16081998 -p Neeta@1983
	docker push ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${TAG}

push:
	@echo "----------------- Push docker image to repository-----------"

run: start_run
	docker run ${DOCKER_REGISTRY}/${DOCKER_IMAGE_NAME}:${TAG} -p 5000:5000

start_run:
	@echo "----------------- starting run -----------------------------"