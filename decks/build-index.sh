#!/bin/bash

rm index.html

echo "<h1>Rust Workshop Decks</h1><ul>" >> index.html
# https://superuser.com/questions/335376/how-to-list-folders-using-bash-commands/335380#335380
for deck in `ls -d -- */`; do
    case "$deck" in
        "assets/") continue;;
        "master/") continue;;
    esac

    echo "<li><a href='$deck'>$deck</a></li>" >> index.html
done
echo "</ul>" >> index.html
