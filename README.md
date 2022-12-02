# caddy-docker
[Caddy](https://caddyserver.com/) with [cloudflare](https://github.com/caddy-dns/cloudflare), [route53](https://github.com/caddy-dns/route53), [realip](https://github.com/captncraig/caddy-realip)

# install

```
cp etc/sample.Caddyfile etc/Caddyfile
cp sample.docker-compose.yml docker-compose.yml
cp sample.env .env
```

Edit the copied file as needed...

```
docker compose up -d
```
