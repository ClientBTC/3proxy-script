sudo -i
apt-get update
apt-get install -y build-essential
wget --no-check-certificate https://github.com/3proxy/3proxy/archive/refs/tags/0.9.4.tar.gz -O 3proxy-0.9.4.tar.gz
tar xzf 3proxy-0.9.4.tar.gz
cd 3proxy-0.9.4
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://github.com/SnoyIatk/3proxy/raw/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://github.com/SnoyIatk/3proxy/raw/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate  https://raw.github.com/SnoyIatk/3proxy/master/3proxy
chmod +x /etc/init.d/3proxy
update-rc.d 3proxy defaults