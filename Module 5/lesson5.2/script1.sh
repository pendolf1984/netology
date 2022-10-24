#!/bin/bash

for ((i=1; i<100; i++)){
        if [[ i%3 -eq 0 ]]; then
                echo $i
        fi
}
