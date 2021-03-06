#!/bin/bash

TIME_WORKING=25 # Minutes
TIME_BREAK=5 # Minutes

while [[ true ]]; do
    notify-send -t "$(($TIME_WORKING * 60 * 1000))" "Working...";
    sleep $(($TIME_WORKING * 60));
    notify-send -t $(($TIME_BREAK * 60 * 1000)) -u critical "Break !";
    sleep $(($TIME_BREAK * 60))
done
