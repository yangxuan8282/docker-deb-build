
BUILD_ID ?= ${USER}


.PHONY: builder
builder:
	docker build -t local/debian-build:${BUILD_ID} builder/

target:
	mkdir -p debs .ccache

build: builder target
	docker run -ti --rm \
		-v ${PWD}/debs:/home/pi/work \
		-v ${PWD}/.ccache:/home/pi/.ccache \
		local/debian-build:${BUILD_ID} \
		/bin/bash
