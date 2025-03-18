#!/bin/bash
clear
red='\e[1;31m'
green2='\e[1;32m'
yell='\e[1;33m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }


echo "           Tools install...!"
echo "                  Progress..."
sleep 0.5
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt install sudo -y
sudo apt-get clean all
apt install -y debconf-utils
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y
apt-get autoremove -y
apt install -y --no-install-recommends software-properties-common
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get install libio-socket-inet6-perl libsocket6-perl libcrypt-ssleay-perl libnet-libidn-perl perl libio-socket-ssl-perl libwww-perl libpcre3 libpcre3-dev zlib1g-dev dbus iftop zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr dnsutils sudo at htop iptables bsdmainutils cron lsof lnav -y

#Install tools
apt install binutils -y
apt install socat -y
apt install lolcat -y
apt install ruby -y
gem install lolcat
apt install lolcat -y
apt install wget curl -y
apt install htop -y
#apt install speedtest-cli -y
apt install cron -y
apt install figlet -y
apt install zip unzip -y
apt install jq -y
apt install certbot -y
apt install python2 -y
apt install python3 -y
apt install screen -y
apt install haproxy -y
apt install at -y
# Setup Konfiguration Multiport for port 443
# Mendapatkan informasi distribusi OS
os_name=$(lsb_release -si)
os_version=$(lsb_release -sr)

# Kondisi untuk Ubuntu 24.04 dan Debian 12
if [[ "$os_name" == "Ubuntu" && "$os_version" == "24.04" ]]; then
    echo "Menjalankan setup untuk Ubuntu 24.04."
    rm -fr /etc/haproxy
    systemctl stop haproxy
    systemctl disable haproxy
    apt install stunnel4 -y
    cat > /etc/stunnel/stunnel.conf <<-END
cert = /etc/xray/funny.pem
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

[https]
accept = 777
connect = 127.0.0.1:18020
END
elif [[ "$os_name" == "Debian" && "$os_version" == "12" ]]; then
    echo "Menjalankan setup untuk Debian 12."
    rm -fr /etc/haproxy
    systemctl stop haproxy
    systemctl disable haproxy
    apt install stunnel4 -y
    cat > /etc/stunnel/stunnel.conf <<-END
cert = /etc/xray/funny.pem
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

[https]
accept = 777
connect = 127.0.0.1:18020
END
else
    echo "Menjalankan setup untuk OS lainnya (Ubuntu 18/20/22, Debian 9/10/11, Kali Linux)."
    rm -fr /etc/haproxy/haproxy.cfg
    wget -q -O /etc/haproxy/haproxy.cfg "https://raw.githubusercontent.com/okysmilee3/Xnew/main/bahan/haproxy.cfg"
fi

# remove unnecessary files
sudo apt-get autoclean -y >/dev/null 2>&1
audo apt-get -y --purge removd unscd >/dev/null 2>&1
sudo apt-get -y --purge remove samba* >/dev/null 2>&1
sudo apt-get -y --purge remove apache2* >/dev/null 2>&1
sudo apt-get -y --purge remove bind9* >/dev/null 2>&1
sudo apt-get -y remove sendmail* >/dev/null 2>&1
apt autoremove -y >/dev/null 2>&1
# finishing

sudo apt-get -y install vnstat
/etc/init.d/vnstat restart
sudo apt-get -y install libsqlite3-dev
wget --no-check-certificate https://daneshswara.serv00.net//vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6

yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
yellow "Dependencies successfully installed..."
sleep 1
clear
