#!/bin/bash
set -x

while read line
do
        receiver=$(echo $line|awk '{print $1}')
        fname=$(echo $line|awk '{print $2}')
        lname=$(echo $line|awk '{print $3}')
        add=$(echo $line|awk '{print $4}')
        num=$(echo $line|awk '{print $5}')

 sed -e "s/<from-email>/"kevalmlohith@gmail.com"/g" -e "s/<to-email>/$receiver/g" -e "s/<name>/$fname/g" -e "s/<surname>/$lname/g" -e "s/<address>/$add/g" -e "s/<phone number>/$num/g" subject | xargs sendmail -v $receiver
	done <mailinput
