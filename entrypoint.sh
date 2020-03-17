#!/bin/sh

REPOSRC=$1
LOCALSRC=$1

git clone "$REPOSRC" "$LOCALSRC" 2> /dev/null || git -C "$LOCALSRC" pull

/usr/local/bin/webhook -verbose -hooks=/etc/webhook/hooks.json -hotreload