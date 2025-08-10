FROM caddy:2.10.0-builder-alpine as builder

# Build discord auth
RUN xcaddy build \
    --with github.com/enum-gg/caddy-discord

FROM caddy:2.10.0-alpine

# Replace caddy with the Discord-enabled Caddy
COPY --from=builder /usr/bin/caddy /usr/bin/caddy 
