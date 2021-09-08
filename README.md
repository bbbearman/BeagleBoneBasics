## Exploring in BeagleBone

**user:debian**

###1.login into beaglebone

`ssh debian@192.168.7.2`

###2.set the route from beglebone to internet

####2.1 set route from beaglebone to linux
`sudo /sbin/route add default gw 192.168.7.1`
use `ip route show` to see details

####2.2 set route from internet to bealgebong within linux

**In Ubuntu Host** you need to:
```bash
sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
sudo iptables -F
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -t nat -A POSTROUTING -o wlp4s0 -j MASQUERADE
```






