# Add certificate to Arch

1. Move `/usr/local/share/ca-certificates/*.crt` to `/etc/ca-certificates/trust-source/anchors/`
2. Do the same with all manually-added `/etc/ssl/certs/*.pem` files and rename them to `*.crt`
3. Run `trust extract-compat`

[Source](https://archlinux.org/news/ca-certificates-update/)
