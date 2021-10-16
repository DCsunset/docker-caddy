FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-authorize

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
