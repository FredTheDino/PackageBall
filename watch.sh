#!/usr/bin/env bash
while inotifywait *.sy; do sleep 0.1; make build; done
