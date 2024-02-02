#!/usr/bin/env bash
inotifywait -r -m *.sy -e MOVE_SELF | 
   while read file_path file_event file_name; do 
       make build
   done
