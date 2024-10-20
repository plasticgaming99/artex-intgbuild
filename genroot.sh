#!/usr/bin/env zsh

cd $1

# dir
mkdir "etc" "usr" "var" "dev" "opt" "mnt" "home" "run" "sys" "proc" "tmp" "srv" "boot" "root"

cd etc
mkdir "opt" "x11" "sgml" "xml"
cd ..

cd usr
mkdir "bin" "include" "lib" "local" "share" "src"
cd ..

cd var
mkdir "cache" "lib" "lock" "log" "main" "spool" "tmp"
cd ..

# symlink
cd var
ln -sf ../run ./run
cd ..

ln -sf ./usr/bin ./bin
ln -sf ./usr/sbin ./sbin
ln -sf ./usr/lib ./lib
ln -sf ./usr/lib64 ./lib64

cd usr
ln -sf ./bin ./sbin
ln -sf ./lib ./lib64
cd ..

cd ..
