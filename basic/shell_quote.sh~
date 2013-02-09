#!/bin/bash

# Different ways of printing quotes in a command-line/shell script
# awk program.

# Print a single quote by concatenating three quoted strings.
awk 'BEGIN { print "Here is a single quote <'"'"'>" }'

# This can be simplified because \' has the same effect as "'"
awk 'BEGIN { print "Here is a single quote <'\''>" }'

# Print a single quote by escaping the awk-level double quotes.
awk "BEGIN { print \"Here is a single quote <'>\" }"

# Print a single a quote by using the octal escape sequence equivalent.
awk 'BEGIN { print "Here is a single quote <\47>" }'

# Print a double quote by using the octal escape sequence equivalent.
awk 'BEGIN { print "Here is a double quote <\42>" }'

# Print a single quote by using a command-line variable assignment.
awk -v sq="'" 'BEGIN { print "Here is a single quote <" sq ">" }'

