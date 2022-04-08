FROM flant/spilo

RUN apt update && apt install nano
COPY postgresql /etc/pam.d/postgresql