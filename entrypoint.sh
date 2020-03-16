#!/bin/sh

REPOSRC=$1
LOCALREPO=$2

git clone "$REPOSRC" . 2> /dev/null || git pull

/usr/local/bin/webhook