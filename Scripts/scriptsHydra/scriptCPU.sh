#!/bin/bash
for (( i = 10; i <= 100; i=10+i )); do
	./stress-ng -c 64  --cpu-load $i --cpu-method decimal32 --metrics-brief --timeout 870s
done


