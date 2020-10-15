#!/bin/sh

cd $(dirname "$0") || exit

(
    cd ..
    for f in .??*
    do
        [ "$f" = ".git" ] && continue
        [ "$f" = ".gitignore" ] && continue
        [ "$f" = ".DS_Store" ] && continue

        ln -sfnv "$f" "$HOME"/"$f"
    done
    
)