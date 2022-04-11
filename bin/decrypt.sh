#!/bin/bash

set -eu
export LC_ALL=C

: "${TARGET_DIR:=$1}"

[[ -z "${TARGET_DIR}" ]] && { echo "TARGET_DIR is requred."; exit 1; }
[[ ! -f "${TARGET_DIR}/secrets.tar.asc" ]] && { echo "TARGET_DIR/secrets.tar.asc should be exist"; exit 1; }

s=${TARGET_DIR}/secrets.tar.asc

echo "Decrypt ${s} file"
gpg --yes --batch --passphrase-fd 0 -o ${TARGET_DIR}/secrets.tar -d ${s} < password.txt
tar xvf ${TARGET_DIR}/secrets.tar
