#!/bin/bash

# When using awk within the shell, quotes are required
# around the entire awk program. Characters such as
# $, ', \ and " in the awk program need to be escaped
# with a backslash due to shell quoting rules.

awk "BEGIN { print \"Hello World!\" }"
