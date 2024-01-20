#!/bin/bash

cd $(dirname "$0") || exit

(
    cd ..
    for f in .??*
    do
        [ "$f" = ".git" ] && continue
        [ "$f" = ".gitignore" ] && continue
        [ "$f" = ".DS_Store" ] && continue

        ln -sfnv "$PWD"/"$f" "$HOME"/"$f"
    done
    
)
