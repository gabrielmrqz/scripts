#!/bin/bash

# Using color variables
RED="\e[31m"
BLUE="\e[34m"
GREEN="\e[32m"
WHITE="\e[97m"
ENDCOLOR="\e[0m"

# Credits
echo -e "${WHITE}Port knocker by gabsmarx${ENDCOLOR}"

if [ "$1" == "" ]
then
	echo -e "${RED}Usage:${ENDCOLOR} ${BLUE}$0 IP/RANGE PORTS WITH SPACE${ENDCOLOR}"
	echo -e "${RED}Example:${ENDCOLOR} ${BLUE}$0 192.168.1.0/24 10 11 12${ENDCOLOR}"
else
	echo -e "${WHITE}Knocking on ${ENDOLOR}${RED}$1${ENDCOLOR}${WHITE} on informed ports${ENDCOLOR}"
	knock -d 500 -v $1 $2 $3 $4
	sleep 2
	wget $1:1337 > /dev/null 2>%1
	echo -e "${BLUE}The file contents on port ${ENDCOLOR}${RED}1337${ENDCOLOR} ${BLUE}are:${ENDCOLOR}"
	cat index.html
	rm index.html
	echo -e "${GREEN}Done!${ENDCOLOR}"
fi
