#!/bin/bash

file_size_avg(){
        path=$1
        if ! [ -d $path ]; then
                echo "Directory does not exist"
        fi

        for file in $path*
        do
                if [ -f $file ];then
                        ((sum += $(stat -c "%s" "$file")))
                        ((count+=1))
                        ((result=$sum/$count))
                fi
        done

        echo $result

}

dir_path=$1

file_size_avg $dir_path
