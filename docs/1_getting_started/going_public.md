---
weight: 30
---

## Be Sure You Have Finished The Setup First
If you havent yet set an admin account and you do go public, anyone will be able to create the admin user with their own password and steal the synbiohub instance from you. This is obviously not what you want, so be sure to finish [setup](./setup.md) first.

## Choosing A Hosting Provider

This is largely beyond the scope of this documentation. However we use Microsoft Azure and it works quite well.

Any provider you choose should support at the minimum hosting docker containers from a docker compose file.

## Choosing A Reverse Proxy

A reverse proxy is needed to manage your ssl certificates and add an extra layer of protection to your network stack. Its primary role is to convert HTTPS requests to HTTP on your internal network and pass them to the correct application/port on your server.

We use caddy in production, but you can also use nginx, or cloudflare tunnels. This writer would recomend cloudflare tunnels for its ease of use and increased security.
