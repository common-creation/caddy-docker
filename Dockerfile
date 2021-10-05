FROM caddy:builder-alpine AS builder
RUN xcaddy build \
      --with github.com/caddy-dns/cloudflare \
      --with github.com/caddy-dns/route53 \
      --with github.com/kirsch33/realip

FROM caddy:alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 443/udp