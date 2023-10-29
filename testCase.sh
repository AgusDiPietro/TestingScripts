#!/bin/bash

case "${1}" in
 start)
	 echo "Execute Start"
	 ;;
 finish)
	 echo "Execute Finish"
	 ;;
 restart)
	 echo "Execute Restart"
	 ;;
 *)
	 echo "Invalid Argument"
esac
		
