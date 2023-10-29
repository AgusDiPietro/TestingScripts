#!/bin/bash

function hello () {
	echo hi $1
}

X=3

while [[ $X -ge 1 ]]; do
	echo "the value of X is $X"
	X=$((X-1))
done

