ARG CADDY_VERSION
FROM caddy:${CADDY_VERSION}
COPY Caddyfile /etc/caddy/Caddyfile 
COPY root_ca-2tudor.net.crt /etc/caddy/root_ca-2tudor.net.crt
COPY root_ca-2tudor.net.crt /usr/local/share/ca-certificates
RUN update-ca-certificates &&\
    mkdir -p /etc/caddy/config.d
