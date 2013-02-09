#!/bin/bash

# Some useful short awk programs.

# A shell variable for the example data file:
data_file=data

echo

# PROGRAMS:

echo 'Longest line length in '$data_file':'
awk '{ if (length($0) > max) max = length($0) }
     END { print max }' $data_file
echo

echo 'Every line longer than 80 characters in '$data_file':'
awk '{ if (length($0) > 80) print $0 }' $data_file
echo

echo 'Longest line length using expand utility:'
expand data | awk '{ if (x < length()) x = length() }
		   END { print "Maximum line length: " x }'
echo

echo 'Print every line that has at least one field:'
awk 'NF > 0' data
echo

echo 'Print seven random numbers from 0 to 100:'
awk 'BEGIN { for (i = 1; i <= 7; i++)
     print int(101 * rand()) }'
echo

echo "Print the total number of bytes used by some files:"
ls -l hello.sh data foo.sh | awk '{ x += $5 }
		  END { print "total bytes: " x }'
echo

echo 'Print a sorted list of the login names of all users:'
awk -F: '{ print $1 }' /etc/passwd | sort
echo

echo 'Count the lines in a file:'
awk 'END { print NR }' data
echo

echo 'Print the odd-numbered lines in a data file:'
awk 'NR % 2 == 1' data
echo

