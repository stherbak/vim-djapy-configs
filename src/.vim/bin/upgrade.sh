#!/bin/sh
# Author: valsorym <i@valsorym.com>

mkdir -p ~/.vim/colors
mkdir -p ~/.vim/syntax

for dir in `find ~/.vim/bundle -type d`
do
    DIRECTROY=`basename "$dir"`
    if [ $DIRECTROY == "colors" ]; then
        cp -Rf $dir/* ~/.vim/colors/
    elif [ $DIRECTROY == "syntax" ]; then
        cp -Rf $dir/* ~/.vim/syntax/
    fi
done

exit 0

