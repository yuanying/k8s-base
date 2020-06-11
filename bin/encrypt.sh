#!/bin/bash

set -e
export LC_ALL=C

: "${TARGET_DIR:=$1}"

[[ -z "${TARGET_DIR}" ]] && { echo "TARGET_DIR is requred."; exit 1; }
[[ ! -d "${TARGET_DIR}/secrets" ]] && { echo "TARGET_DIR/secrets should be directory"; exit 1; }

s=${TARGET_DIR}/secrets

echo "Encrypt ${s} directory"
d=$(dirname ${s})
tar cvf ${d}/secrets.tar ${s}
gpg --yes --batch --passphrase-fd 0 -r yuanying@fraction.jp -ea ${d}/secrets.tar < password.txt
