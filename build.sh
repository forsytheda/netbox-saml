#!/bin/bash

git clone https://github.com/jeremyschulman/django3-auth-saml2 .django3-auth-saml2
git clone https://github.com/jeremyschulman/netbox-plugin-auth-saml2 .netbox-plugin-auth-saml2

docker build -t forsytheda/netbox-saml:latest .

rm -r .django3-auth-saml2
rm -r .netbox-plugin-auth-saml2