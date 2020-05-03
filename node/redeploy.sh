#!/bin/sh

git -C /var/repo pull
yarn --cwd /var/repo install
yarn --cwd /var/repo upgrade


