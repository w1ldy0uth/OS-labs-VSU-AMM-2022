#!/usr/bin/env bash

if [ $1 ]; then
        var = $1
else
	read -p "Enter app name: " var 
fi

find /var/log/ -type f -exec grep -lw "$var" {} \; > /var/log/shurygin.log
