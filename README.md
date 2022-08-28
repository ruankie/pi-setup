# Pi setup
Some scripts to get raspberry pi set up from fresh install

# Quick settings
## Disable WiFi and Bluetooth
1. Edit boot config
```bash
sudo nano /boot/config.txt
```
2. Add the following lines
```bash
dtoverlay=disable-wifi
dtoverlay=disable-bt
```

## Change Static IP
1. Edit DHCP config
```bash
sudo nano /etc/dhcpcd.conf
```
2. Add the following lines to the required interface (Ethernet:`eth0`, WiFi: `wlan0`)
```bash
interface eth0
static ip_address=<static-ip>/24
static routers=<router-ip>
static domain_name_servers=<dns-ip>
static domain_search=
```
