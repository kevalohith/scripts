#!/bin/bash
set -x
size=$(df -h . | awk 'NR==2 {print$(NF-1)}' | sed 's/%/ /g')
if [ $size -gt 30 ]
then
  echo "Subject: ALERT current usage is more than 70% please do the needfull" | sendmail -v kevalmlohith@gmail.com
fi
