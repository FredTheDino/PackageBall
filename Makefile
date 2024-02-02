.phony: build run watch

build:
	./sylt *.sy -o operators.op --love -l game.lua

run: build
	love .

watch:
	bash watch.sh
