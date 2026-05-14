#!/bin/bash

BOOKMARK_FILE="$HOME/.bookmarks"

touch $BOOKMARK_FILE

bm(){
	local name=$1
	local path=$(pwd)

	if [ -z "$name"];
	then
        echo "Usage: bm <name>"
        return 1
    fi
    

    if grep -q "^$name" $BOOKMARK_FILE ;
    then
        sed -i '' "s|^$name=.*|$name=$path" BOOKMARK_File
        echo "updated bookmark '$name' -> $path"
    else
        echo "$name=$path" >> $BOOKMARK_FILE
        echo "saved bookmark '$name' -> $path"
    fi
}
