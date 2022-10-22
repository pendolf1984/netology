#!/bin/bash

echo "Enter first number"
read first
echo "Enter second number"
read second

if [ "$first" -gt "$second" ]; then
	((res=$first-$second ))
elif [ "$first" -lt "$second" ]; then
	((res=$second-$first))
else
	((res=$first*$second))
fi

echo ""
echo "Result:" $res

