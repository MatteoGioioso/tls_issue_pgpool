FROM postgres:12

COPY cert.crt /tls/cert.crt
COPY cert.key /tls/cert.key
COPY root.crt /tls/root.crt

WORKDIR /tls
RUN chmod 600 cert.key
RUN chown postgres:postgres cert.key