#!/bin/bash

#Takes a set of data with columns delimited by ":" and prints
#selected columns.

awk '{ \
FS = ":"; \
print $1":"$3":"$4":"$5":"$6":"; \
}' photos.txt > photos2.txt

exit 0
