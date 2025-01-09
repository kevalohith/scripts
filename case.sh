#!/bin/bash
#var=$(date '+%A')
var=$1
case $var in 
'Monday') touch Monday.1 Monday.2 
;;
'Tuesday') touch Tuesday.1; rm -rf Monday.1
;;
'Wednesday') mv Monday.1 Wednesday.1
;;
'Saturday' | 'Sunday') echo " Saturday And Sunday Is Holiday"
;;
esac	
