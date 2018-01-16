iptables-restore < fw.txt
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' sysctl.conf
sysctl -p
system
