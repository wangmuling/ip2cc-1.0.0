#!/bin/sh
QQIP_DIR="/usr/local/share/QQIP"
if [ ! -d "$QQIP_DIR" ]; then
  mkdir -p $QQIP_DIR
fi

#configure
./configure --datadir=$QQIP_DIR
make && make install


#create link
for cmd in ip2cc ip2cc-dig ip2cc-nslookup ip2cc-ping ip2cc-qqwry ip2cc-tracepath ip2cc-traceroute ip2cc-update
do
    rm -fvr /usr/bin/$cmd
    ln -s /usr/local/bin/$cmd  /usr/bin/$cmd
done

#update QQWry.Dat
/usr/bin/ip2cc-update
