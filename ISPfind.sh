#!/bin/bash

#EL1S1uM Was Here

if [ $# != 1 ]; then
        echo "Uso: $0 ips.txt"
else

for lista in $(cat $1); do
        isp=$(curl -s ipinfo.io/$lista | grep "org" | cut -d '"' -f 4)
        echo $lista" -" $isp
done
fi
