#!/usr/bin/env bash
for i in {1..10}
do 
	echo "Run $i of find_controls.m2" >>output/benchmark.txt
	(time  docker run --rm -v $(pwd):/home/m2user/data macaulay2:1.14 --script find_controls.m2) 2>>  output/benchmark.txt
       echo  >> output/benchmark.txt
done
