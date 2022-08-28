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

## Set Up [pi-hole](https://github.com/pi-hole/pi-hole)
1. Set static IP
2. Run the auto setup and follow the prompts
  ```bash
  curl -sSL https://install.pi-hole.net | bash
  ```
3. Change login password for pi-hole
  ```bash
  pihole -a -p
  ```
4. Set upstream DNS (after loggin into pihole UI)
  > Settings > DNS > Toggle > Save
5. Point router to pihole IP address for DNS

