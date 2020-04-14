
# Dynamic DNS
Apparently my router's public IP address can change anytime so I'm using DuckDNS.org cuz it's free and hilariously simple

# Static IP (aka internal IP address)
I was able to set this on my router directly. Otherwise these instructions seem solid even though they didn't work for me: https://pimylifeup.com/raspberry-pi-static-ip-address/

# Port Forwarding
I set this up through router directly. I'm forwarding 22 for ssh, 80 for web, and 1194 for VPN

# VPN

Raspberry Pi has an ARM CPU, so I used this: https://github.com/giggio/docker-openvpn-arm. Very simple to setup, although having a VPN at my house seems pretty useless.

# PiHole

Got this running using `docker` but then couldn't get any devices to use it as the DNS. Stupid router won't let me change this either. Also haven't gotten it working with VPN. 
