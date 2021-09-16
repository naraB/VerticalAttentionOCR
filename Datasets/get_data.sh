#!/bin/bash

# Arguments: email password save_path

wget --save-cookies cookies.txt \
     --keep-session-cookies \
     --post-data "email=$1&password=$2" \
     --delete-after \
     https://fki.tic.heia-fr.ch/login

echo "Authenticated! Downloading formsA-D.tgz now"

wget --load-cookies cookies.txt \
     --directory-prefix="$3" \
     https://fki.tic.heia-fr.ch/DBs/iamDB/data/formsA-D.tgz

echo "Done! Downloading formsE-H.tgz now"

wget --load-cookies cookies.txt \
     --directory-prefix="$3" \
     https://fki.tic.heia-fr.ch/DBs/iamDB/data/formsE-H.tgz

echo "Done! Downloading formsI-Z.tgz now"

wget --load-cookies cookies.txt \
     --directory-prefix="$3" \
     https://fki.tic.heia-fr.ch/DBs/iamDB/data/formsI-Z.tgz

echo "Done! Downloading lines.tgz now"

wget --load-cookies cookies.txt \
     --directory-prefix="$3" \
     https://fki.tic.heia-fr.ch/DBs/iamDB/data/lines.tgz

echo "Done! Downloading ascii.tgz now"

wget --load-cookies cookies.txt \
     --directory-prefix="$3" \
     https://fki.tic.heia-fr.ch/DBs/iamDB/data/ascii.tgz
