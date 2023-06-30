
export ROOT_FOLDER := ${CURDIR}
DOCKER_REGISTRY=hub.docker.com

#########################################################################################
all: build run

build: create
	@echo "---------------- starting build ---------------------------"
	/bin/bash build/docker/build.sh

create:
	@echo "----------------- Create the docker image ------------------"

docker_push: push
	@echo "sajkfkjkjdf"
	docker logout
	docker login -u 16081998 -p Neeta@1983
	docker push 16081998/flask_application:1

push:
	@echo "----------------- Push docker image to repository-----------"

run: start_run
	docker run flask_image:1 -p 5000:5000

start_run:
	@echo "----------------- starting run -----------------------------"