#!/bin/bash

# Generate an unencrypted 2048-bit private key
openssl genrsa -out mok.key 2048

# Generate a self-signed X.509 certificate (SHA-256, 10 years, DER format)
openssl req -new -x509 -sha256 -days 3650 \
    -key MOK.key \
    -outform DER \
    -out MOK.der \
    -subj "/CN= Linuwu-Sense MOK Signing Key/"

echo "Done. Generated:"
echo "  $(pwd)/MOK.key"
echo "  $(pwd)/MOK.der"
