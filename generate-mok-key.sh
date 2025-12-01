#!/bin/bash

# Generate a self-signed X.509 certificate

openssl req -new -x509 -newkey rsa:2048 -nodes \
  -keyout MOK.key -outform DER -out MOK.der \
  -days 36500 -subj "/CN= Linuwu-Sense Signing Key/"

chmod 600 MOK.key

echo "Done. Generated:"
echo "  $(pwd)/MOK.key"
echo "  $(pwd)/MOK.der"
