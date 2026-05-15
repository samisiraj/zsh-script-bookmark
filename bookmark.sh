#!/bin/zsh

BOOKMARK_FILE="$HOME/.bookmarks"

touch $BOOKMARK_FILE

bm(){
	local name=$1
	local path=$(pwd)

	if [ -z "$name" ];
	then
        echo "Usage: bm <name>"
        return 1
    fi
    

    if /usr/bin/grep -q "^$name=" $BOOKMARK_FILE ;
    then
        /usr/bin/sed -i '' "s|^$name=.*|$name=$path|" $BOOKMARK_FILE
        echo "updated bookmark '$name' -> $path"
    else
        echo "$name=$path" >> $BOOKMARK_FILE
        echo "saved bookmark '$name' -> $path"
    fi
}
go(){
    local name=$1
    local path=$(grep "^$name" $BOOKMARK_FILE | cut -d "=" -f 2)

    if [ -z "$name" ];
    then
        echo "Usage: go <name>"
        return 1
    fi

    if [ -z "$path" ];
    then
        echo "bookmark $name not found"
        return 1
    fi

    cd "$path"
    echo "changed directory to '$name' -> $path"
}
