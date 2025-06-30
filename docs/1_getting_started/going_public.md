---
weight: 30
---

# Going Public

## Be Sure You Have Finished The Setup First
If you haven't yet set an admin account and you go public, anyone will be able to create the admin user with their own password and steal the SynBioHub instance from you. This is obviously not what you want, so be sure to finish [setup](./setup.md) first.

## Choosing A Reverse Proxy

A reverse proxy is needed to manage your SSL certificates and add an extra layer of protection to your network stack. Its primary role is to convert HTTPS requests to HTTP on your internal network and pass them to the correct application/port on your server.

We use Caddy in production, but you can also use Nginx or Cloudflare Tunnels. This writer would recommend Cloudflare Tunnels for its ease of use and increased security.
