#
# FizzBuzzC/Makefile
#
NAME := fizzbuzz

ROOT := ${CURDIR}
_SRC := ${ROOT}/Source
_INC := ${ROOT}/Include
_BLD := ${ROOT}/Build
_OBJ := ${_BLD}/obj
_BIN := ${_BLD}/bin

TARGET := ${_BIN}/${NAME}

CC := gcc
CCFLAGS := -Wall -Werror -ggdb -I${_INC}

SRCS := $(shell find ${_SRC} -type f -name "*.c")
OBJS := $(patsubst ${_SRC}/%.c, ${_OBJ}/%.o, ${SRCS})

.PHONY: all
all: fizzbuzz_all

fizzbuzz_all: fizzbuzz_clean fizzbuzz_sources fizzbuzz_create fizzbuzz_run

fizzbuzz_setup:
	mkdir -p ${_OBJ}
	mkdir -p ${_BIN}

fizzbuzz_clean:
	rm -rf ${_OBJ}/*
	rm -rf ${_BIN}/*

fizzbuzz_sources:
	make ${OBJS}

fizzbuzz_create:
	${CC} ${CCFLAGS} -o ${TARGET} ${OBJS}
	chmod +x ${TARGET}

fizzbuzz_run:
	${TARGET}

${_OBJ}/%.o: ${_SRC}/%.c
	${CC} -c ${CCFLAGS} $^ -o $@