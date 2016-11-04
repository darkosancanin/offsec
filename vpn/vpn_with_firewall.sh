# https://blog.pgp.help/vpn/ubuntu/ufw/2015/09/03/Securing-your-VPN-Ubutu.html

ufw --force reset
ufw enable
ufw default reject outgoing
ufw allow out 1194/udp
ufw allow out on tun0

# allow dns traffic
ufw allow proto udp to 208.67.222.222 port 53

# connect to vpn
openvpn --config FILENAME_GOES_HERE.ovpn