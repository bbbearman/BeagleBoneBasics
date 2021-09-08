#read me file

user:debian
password:niovst666


#login into beaglebone

ssh debian@192.168.7.2


#set the route from beglebone to internet

#1.set route from beaglebone to linux

sudo /sbin/route add default gw 192.168.7.1  

#2.set route from internet to bealgebong within linux
#ifconfig
#ip route show

#########################@Ubuntu Host#################################
sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'  #open ip transfering
sudo iptables -F
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -t nat -A POSTROUTING -o wlp4s0 -j MASQUERADE

############################@debian########################
sudo nano /etc/resolv.conf

domain localdomain
search localdomain
nameserver 8.8.8.8
nameserver 8.8.4.4

###################login as root##############
sudo su
#back to debian
login debian

################Cloud9IDE##################
debian@beaglebone:/var/lib/cloud9$ 

################PleaseSaveYourTestFileHere########
debian@beaglebone:/usr/local/bin
