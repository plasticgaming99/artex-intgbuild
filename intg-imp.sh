#!/usr/bin/env zsh

tar -h -xvf $2 -C $1 --exclude=".MTREE" --exclude=".PACKAGE"
