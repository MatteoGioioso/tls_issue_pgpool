FROM pgpool/pgpool

COPY cert.crt /tls/cert.crt
COPY cert.key /tls/cert.key
COPY root.crt /tls/root.crt
COPY pgpool.conf /config/pgpool.conf
