---
weight: 0
---

# Where To Install

## The options

For testing, you can install locally on your computer. However, if you don't have experience managing a server or aren't confident in your ability to keep it online 24/7, we recommend using a cloud/hosting provider. It's worth noting that your university IT might already have its own cloud environment setup or contracts, so you should probably check with them first.

| Feature | Self Host | University Managed | Cloud Managed | VPS (Virtual Private Server) |
| :--- | :--- | :--- | :--- | :--- |
| **Management** | You | University IT | You (limited) / Managed Service | You |
| **Availability** | Dependent on your setup | Dependent on University IT setup | High | Medium to High |
| **Cost** | Hardware + Electricity | Possibly Free | Subscription Fee (Pay-as-you-go) | Fixed Monthly Fee |
| **Experience Needed** | High | Low | Medium | Medium |
| **Examples** | Your own hardware | N/A | AWS, Azure, Google Cloud, DigitalOcean | [Many Examples](https://anothervps.com/vps-database/?vps=&os=linux&virt=&currency=&cycle=&ram_min=5&ram_max=&price_min=&price_max=&cores_min=4&cores_max=&storage_min=15&storage_max=&bandwidth_min=0.5&bandwidth_max=&ssd=&sort=price2&page=1&per=50) |
| **Considerations** | Requires technical expertise, less reliable | Dependent on university policies and capabilities | Can be expensive, complex pricing | Fixed hardware for a fixed price, good for predictable budgets |

## Minimum Requirements

We use Microsoft Azure, and it works quite well.
Based on our experience, here are our suggested minimum and recommended specifications for a server.

| Component | Minimum | Recommended |
| :--- | :--- | :--- |
| **OS** | Linux | Ubuntu LTS |
| **CPU** | 4 Cores | 4+ Cores |
| **RAM** | 5 GB | 16 GB |
| **Storage** | 15 GB | 50+ GB |
| **Bandwidth** | 500 mb/s | 10 gb/s |
| **Software** | Linux with Docker & Docker Compose | Ubuntu 22 with Docker & Docker Compose |
