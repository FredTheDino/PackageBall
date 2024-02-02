.phony: build

build:
	./sylt *.sy -o operators.op --love -l main.lua

run: build
	love .
