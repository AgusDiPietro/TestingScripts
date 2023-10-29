#!/bin/bash

while getopts "ab" FLAG
do
   case "${FLAG}" in
     a)
	  echo "Option '-a' in script"
	  ;;
     b) 
	  echo "Option '-b' in script"
	  ;;
     *)   
	  echo "Invalid option, please choose '-a' or '-b'"
	  ;;
    esac
done
