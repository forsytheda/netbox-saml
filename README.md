# NetBox Docker image with SAML2

This is a docker image that extends the NetBox community's docker image with SAML2 authentication capabilities using [Jeremy Schulman's](https://github.com/jeremyschulman) NetBox plugin found [here](https://github.com/jeremyschulman/netbox-plugin-auth-saml2).

## Usage

To use this docker container, simply use 'docker.io/forsytheda/netbox-saml' in your compose file instead of 'quay.io/netboxcommunity/netbox'.

## Configuration

There is no special configuration unique to this docker container. All configuration necessary is covered in the NetBox [GitHub Page](https://github.com/netbox-community/netbox-docker) and in the netbox-plugin-auth-saml2 [GitHub Page](https://github.com/jeremyschulman/netbox-plugin-auth-saml2/blob/main/README.md).

## Example Implementation

WIP: TBD