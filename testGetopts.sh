#!/bin/bash

while getopts "a:b" FLAG
do
   case "${FLAG}" in
     a)
	  echo "Option '-a' in script"
	  echo " ${OPTARG} "
	  ;;
     b) 
	  echo "Option '-b' in script"
	  ;;
     *)   
	  echo "Invalid option, please choose '-a' or '-b'"
	  ;;
    esac
done
