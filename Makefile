-include .env

MAKEFILE_PATH  := $(abspath $(lastword $(MAKEFILE_LIST)))
ROOT_DIR       := $(abspath $(dir $(MAKEFILE_PATH)))
ROOT_DIRNAME   := $(notdir $(patsubst %/,%,$(dir $(MAKEFILE_PATH))))

BIN_FOLDER  ?= bin
BINARY_FILE ?= main.go
CMD_FOLDER  ?= cmd

build:
	go build -o $(BIN_FOLDER)/$(ROOT_DIRNAME) $(CMD_FOLDER)/$(BINARY_FILE)