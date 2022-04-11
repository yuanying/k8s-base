#!/bin/bash

set -eu
export LC_ALL=C

for s in $(find . -maxdepth 2 -type f -name secrets.tar.asc); do
    echo "Decrypt ${s} file"
    d=$(dirname ${s})
    gpg --yes --batch --passphrase-fd 0 -o ${d}/secrets.tar -d ${s} < password.txt
    tar xvf ${d}/secrets.tar
done
