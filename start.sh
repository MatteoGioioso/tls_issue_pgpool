#!/usr/bin/env sh

openssl req -new -nodes -text -out root.csr \
  -keyout root.key -subj "/CN=root.yourdomain.com"

openssl x509 -req -in root.csr -text -days 3650 \
  -extfile /etc/ssl/openssl.cnf -extensions v3_ca \
  -signkey root.key -out root.crt

openssl req -new -nodes -text -out server.csr \
  -keyout cert.key -subj "/CN=dbhost.yourdomain.com"

openssl x509 -req -in server.csr -text -days 365 \
  -CA root.crt -CAkey root.key -CAcreateserial \
  -out cert.crt

docker-compose up --build --remove-orphans

