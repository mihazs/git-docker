#!/bin/sh
git -C /var/repo reset --hard
git -C /var/repo pull
composer install --working-dir=/var/repo