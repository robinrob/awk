#!/bin/bash

echo

# The / characters surround the string to search for.
# 'print $0' is the same thing as just 'print'.
# Single quotes arround the program means the shell
# won't interpret any of it as special shell characters.
echo '/foo/ { print $0 }' BBS-list
awk '/foo/ { print $0 }' BBS-list
echo

# If the pattern is omitted, the 'action' is performed
# for every line.
echo '{ print $0 }' BBS-list
awk '{ print $0 }' BBS-list
echo

# If the action is omitted, the default action is to
# print all lines which match the pattern.
echo '/foo/' BBS-list
awk '/foo/' BBS-list
echo