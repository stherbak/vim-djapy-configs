#!/bin/bash
# Author: valsorym <i@valsorym.com>

mkdir -p ~/.vim/colors
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/keymap

for dir in `find ~/.vim/bundle -type d`
do
    DIRECTROY=`basename "$dir"`
    if [ $DIRECTROY == "colors" ]; then
        cp -Rf $dir/* ~/.vim/colors/
    elif [ $DIRECTROY == "syntax" ]; then
        cp -Rf $dir/* ~/.vim/syntax/
    elif [ $DIRECTROY == "keymap" ]; then
        cp -Rf $dir/* ~/.vim/keymap/
    fi
done

exit 0

