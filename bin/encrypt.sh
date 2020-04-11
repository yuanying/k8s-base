#!/bin/bash

set -eu
export LC_ALL=C

for s in $(find . -maxdepth 2 -type d -name secrets); do
    echo "Encrypt ${s} directory"
    d=$(dirname ${s})
    tar cvf ${d}/secrets.tar ${s}
    gpg --yes --batch --passphrase-fd 0 -r yuanying@fraction.jp -ea ${d}/secrets.tar < password.txt
done
