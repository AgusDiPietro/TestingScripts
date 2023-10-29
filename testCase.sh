#!/bin/bash

case "${1}" in
 start|finish)
	 echo "Execute Start or finish"
	 ;;
 rest*)
	 echo "Execute Restart"
	 ;;
 *)
	 echo "Invalid Argument"
esac
		
