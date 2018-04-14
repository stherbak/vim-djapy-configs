#!/bin/bash
# Author: valsorym <i@valsorym.com>

# TODO: Make everything as a list and run in a loop.
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/keymap
mkdir -p ~/.vim/compiler
mkdir -p ~/.vim/ftdetect
mkdir -p ~/.vim/ftplugin
mkdir -p ~/.vim/indent

for dir in `find ~/.vim/bundle -type d`
do
    DIRECTROY=`basename "$dir"`
    if [ $DIRECTROY == "colors" ]; then
        cp -Rf $dir/* ~/.vim/colors/
    elif [ $DIRECTROY == "syntax" ]; then
        cp -Rf $dir/* ~/.vim/syntax/
    elif [ $DIRECTROY == "keymap" ]; then
        cp -Rf $dir/* ~/.vim/keymap/
    elif [ $DIRECTROY == "compiler" ]; then
        cp -Rf $dir/* ~/.vim/compiler/
    elif [ $DIRECTROY == "ftdetect" ]; then
        cp -Rf $dir/* ~/.vim/ftdetect/
    elif [ $DIRECTROY == "ftplugin" ]; then
        cp -Rf $dir/* ~/.vim/ftplugin/
    elif [ $DIRECTROY == "indent" ]; then
        cp -Rf $dir/* ~/.vim/indent/
    fi
done

exit 0

