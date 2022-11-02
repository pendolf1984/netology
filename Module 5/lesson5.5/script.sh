#!/bin/bash
PREFIX="${1:-NOT_SET}"
INTERFACE="$2"
REGEX="^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
SUBNETS=$3
HOSTS=$4

if [[ $# -eq 0  ]]; then
        echo "Usage: $(basename $0) <prefix> <interface> <subnet> <host>"
        exit 1
elif [ "$(id -nu)" != "root" ]; then
        echo "Must be root to run \"`basename $0`\"."
        exit 1
elif [[ "$PREFIX" = "NOT_SET" ]]; then
        echo "\$PREFIX must be passed as first positional argument"
        exit 1
elif [[ ! $PREFIX =~ $REGEX ]]; then
        echo "\$PREFIX must be specified in the format \"<NUM>.<NUM>\" and <NUM> must be in range 0-255"
        exit 1
elif [[ -z "$INTERFACE" ]]; then
        echo "\$INTERFACE must be passed as second positional argument"
        exit 1
elif [[ -z "$SUBNETS" ]]; then
        echo "\$SUBNET must be passed as third positional argument"
        exit 1
elif [[ -z "$HOSTS" ]]; then
        echo "\$HOST must be passed as fourth positional argument"
        exit 1
elif [[ ($SUBNETS -gt 255)||($SUBNETS -lt 0)||($SUBNETS =~ "^[0-9]+$") ]]; then
       echo "\$SUBNET must be in range 0-255 and must be a number"
       exit 1
elif [[ ($HOSTS -gt 255)||($HOSTS -eq 0)||($HOSTS =~ "^[0-9]+$") ]]; then
       echo "\$HOST must be in range 1-255 and must be a number"
       exit 1
fi

trap 'echo "Exit (Ctrl-C)"; exit 1' 2

for ((SUBNET=0; SUBNET<=SUBNETS; SUBNET++))
do
        for ((HOST=1; HOST<=HOSTS; HOST++))
        do
                echo "[*] IP : ${PREFIX}.${SUBNET}.${HOST}"
                arping -c 3 -I "$INTERFACE" "${PREFIX}.${SUBNET}.${HOST}" 2> /dev/null
        done
done

