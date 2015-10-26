#!/bin/sh
if test $# -gt 0
then
    echo $@|perl /usr/local/share/QQIP/ip2cc.pl
else
    perl /usr/local/share/QQIP/ip2cc.pl
fi
