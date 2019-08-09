#!/bin/bash

while read -r line
do

 echo $line && curl --silent --connect-timeout 8 --output /dev/null https://$line/ -I -w "%{http_code}\n"
done < url.lists
