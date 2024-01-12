#!/bin/bash
if [[ "$(netstat -tuln | grep ':80 '| wc -l)" -gt 0 ]]; then
	#echo '80 port enable' 
	if [[ -f '/var/www/html/index.nginx-debian.html' ]]; then
		#echo 'index enable'
		exit 0
	else 
		#echo 'index not found'
		exit 1
	fi
else
	#echo '80 port NOT en'
	exit 1
fi
