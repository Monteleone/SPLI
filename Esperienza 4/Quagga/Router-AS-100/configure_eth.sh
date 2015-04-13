ifconfig eth0 192.168.1.1/24
ifconfig eth1 1.1.1.1/24
ifconfig eth2 3.3.3.1/24
sysctl -w net.ipv4.ip_forward=1
sysctl -w net.ipv4.conf.all.accept_redirects=0
sysctl -w net.ipv4.conf.all.send_redirects=0
sysctl -w net.ipv4.conf.default.accept_redirects=0
sysctl -w net.ipv4.conf.default.send_redirects=0
sysctl -w net.ipv4.conf.eth0.accept_redirects=0
sysctl -w net.ipv4.conf.eth0.send_redirects=0
sysctl -w net.ipv4.conf.eth1.accept_redirects=0
sysctl -w net.ipv4.conf.eth1.send_redirects=0
sysctl -w net.ipv4.conf.eth2.accept_redirects=0
sysctl -w net.ipv4.conf.eth2.send_redirects=0
sysctl -w net.ipv4.conf.lo.accept_redirects=0
sysctl -w net.ipv4.conf.lo.send_redirects=0
/etc/init.d/quagga restart
