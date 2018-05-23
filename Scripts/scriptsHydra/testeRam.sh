#!/bin/bash
for (( i = 190; i <= 1990; i = (i+200) )); do
	./stress-ng --memrate 64 --memrate-bytes $i"m" --timeout 870s
done
#/proc/cpu