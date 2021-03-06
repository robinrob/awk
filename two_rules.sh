#!/bin/bash

echo

echo 'Find lines with /12/ and/or /21/:'
awk '/12/ { print $0 } /21/ { print $0 }' inventory-shipped BBS-list
echo

echo 'Add up the total number of characters in all files
created in September:'
LC_ALL=C ls -l | awk '$6 == "Sep" { sum += $5 }
		     END { print sum }'
echo
