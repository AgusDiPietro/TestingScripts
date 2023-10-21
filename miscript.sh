#!/bin/bash

function welcome () {
	echo Hi $1
}

for USER in ${@}; do
	welcome $USER
done
