ARG FROM_IMAGE
FROM ${FROM_IMAGE}
ARG CA_ROOT
COPY Caddyfile /etc/caddy/Caddyfile 
COPY ${CA_ROOT} /etc/caddy/${CA_ROOT}
COPY ${CA_ROOT} /usr/local/share/ca-certificates
RUN update-ca-certificates &&\
    mkdir -p /etc/caddy/config.d
