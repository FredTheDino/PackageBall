.phony: build run watch

build:
	./sylt *.sy -o operators.op --love -l - -c --love > game.lua

run: build
	love .

watch:
	bash watch.sh
