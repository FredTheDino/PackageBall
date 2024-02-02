.phony: build

build:
	./sylt *.sy -o operators.op --love -l game.lua

run: build
	love .
