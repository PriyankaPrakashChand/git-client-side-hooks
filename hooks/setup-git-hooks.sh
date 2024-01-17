#!/bin/bash

# if directory exists, empty it
if [ -d $(pwd)/.git/hooks ]; then
    rm -r $(pwd)/.git/hooks/*
else
   mkdir $(pwd)/.git/hooks
fi

HOOKS=$(ls $(pwd)/hooks)

for HOOK in $HOOKS
do 
    if [ "hooks/$HOOK" != $0 ];then
       ln -sf $(pwd)/hooks/$HOOK .git/hooks/$HOOK
       chmod 755 $(pwd)/hooks/$HOOK
    fi

   

done
