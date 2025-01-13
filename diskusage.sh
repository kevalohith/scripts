#!/bin/bash
set -x
echo "GIT Test"
size=$(df -h . | awk 'NR==2 {print$(NF-1)}' | sed 's/%/ /g')
if [ $size -gt 30 ]
then
  echo "subject: current usage is more than 70% please check and do the needfull" | sendmail -v kevalmlohith@gmail.com
fi
echo " GIT Today's Test"
