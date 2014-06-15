#!/bin/bash

#Takes a set of data with columns delimited by ":" and prints
#selected columns.

echo "robin:smith" | awk 'BEGIN { FS = ":" } ; { print $2 }'