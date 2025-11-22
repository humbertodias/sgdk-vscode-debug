SGDK_VERSION := 2.11
UID := $(shell id -u)
GID := $(shell id -g)
DOCKER := $(shell which docker)
DOCKER_IMAGE := hldtux/docker-sgdk:v$(SGDK_VERSION)
UNAME_S := $(shell uname -s)
RETROARCH ?= $(shell which retroarch 2>/dev/null)
CORE := blastem

ifeq ($(UNAME_S),Darwin)
    RETROARCH := /Applications/RetroArch.app/Contents/MacOS/RetroArch
	CORE := genesis_plus_gx
endif

.PHONY: compile/debug
compile/debug:
	docker run --rm --user ${UID}:${GID} -v "${PWD}":/workspace -w /workspace ${DOCKER_IMAGE} debug

compile/release:
	docker run --rm --user ${UID}:${GID} -v "${PWD}":/workspace -w /workspace ${DOCKER_IMAGE}

shell:
	docker run -it --rm -v "${PWD}":/workspace -w /workspace --entrypoint=/bin/bash ${DOCKER_IMAGE}

clean:
	rm -rf out/* build/* src/boot/*

format:
	clang-format -i src/main.c

run:
	"${RETROARCH}" -L "${CORE}" out/rom.bin