#!/bin/bash
(
echo "From: kevalmlohith@gmail.com"
echo "To: prajwaldv@gmail.com"
echo "Subject: Your are invited to Shop Opening"
echo "MIME-Version: 1.0"
echo "Content-Type: text/plain; charset=UTF-8"
echo ""
echo "Prajwal, Please come to the shop opening , I know you are from bangalore and your phone number is 7760871255"
) | sendmail -v prajwaldv@gmail.com
