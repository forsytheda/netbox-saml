FROM alpine:3.14 as builder

RUN apk add --no-cache \
      bash \
      build-base \
      cargo \
      ca-certificates \
      cmake \
      cyrus-sasl-dev \
      git \
      graphviz \
      jpeg-dev \
      libevent-dev \
      libffi-dev \
      libxslt-dev \
      make \
      musl-dev \
      openldap-dev \
      openssl-dev \
      postgresql-dev \
      py3-pip \
      python3-dev \
      xmlsec \
  && python3 -m venv /opt/netbox/venv \
  && /opt/netbox/venv/bin/python3 -m pip install --upgrade \
      pip \
      setuptools \
      wheel \
      pysaml2

COPY .django3-auth-saml2 /tmp/django3-auth-saml2
RUN cd /tmp/django3-auth-saml2 && /opt/netbox/venv/bin/python3 setup.py install

COPY .netbox-plugin-auth-saml2 /tmp/netbox-plugin-auth-saml2
RUN cd /tmp/netbox-plugin-auth-saml2 && /opt/netbox/venv/bin/python3 setup.py install

###
# Main stage
###

FROM netboxcommunity/netbox:v3.0 as main

COPY --from=builder /opt/netbox/venv /opt/netbox/venv