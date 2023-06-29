
export ROOT_FOLDER := ${CURDIR}

all: build run

build: create
	@echo "---------------- starting build ---------------------------"
	/bin/bash build/docker/build.sh

create:
	@echo "----------------- Create the docker image ------------------"

run: start_run
	docker run flask_image:1 -p 5000:5000

start_run:
	@echo "----------------- starting run -----------------------------"