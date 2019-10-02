
all: product

product: build/part1 build/part2 build/part3
	cat build/part1 build/part2 build/part3 > product

build:
	mkdir $@

build/part1: build
	sleep 30
	echo 1 > build/part1


build/part2: build
	sleep 30
	echo two > build/part2

build/part3: build
	sleep 30
	echo III > build/part3
