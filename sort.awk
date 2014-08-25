#!/usr/bin/env awk

BEGIN {
    RS=""
}
{
    match($0,/RewriteRule \^\/(.*)\(\|/,a)
    key[NR]=a[1] "\t" NR
    block[NR]=$0
}

END {
    asort(key)
    for (i=1; i<=NR; i++) {
        split(key[i],a,"\t")
        print block[a[2]]
        printf "\n"
    }
}