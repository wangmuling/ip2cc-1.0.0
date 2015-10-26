include config.mak
all:ip2cc.c libqqwry/qqwry.c
	gcc -o bin/ip2cc-qqwry ip2cc.c libqqwry/qqwry.c
	cp share/ip2cc.sh bin/ip2cc
install:bin share
	install bin/ip2cc-qqwry $(DESTDIR)$(bindir) 
	install bin/ip2cc $(DESTDIR)$(bindir) 
	install bin/ip2cc-traceroute $(DESTDIR)$(bindir) 
	install bin/ip2cc-tracepath $(DESTDIR)$(bindir) 
	install bin/ip2cc-dig $(DESTDIR)$(bindir) 
	install bin/ip2cc-nslookup $(DESTDIR)$(bindir) 
	install bin/ip2cc-ping $(DESTDIR)$(bindir) 
	install bin/ip2cc-update $(DESTDIR)$(bindir) 
	install share/QQWry.Dat $(DESTDIR)$(datadir) 
	install share/ip2cc.pl $(DESTDIR)$(datadir) 
	install share/qqwry.php $(DESTDIR)$(datadir) 
distclean: clean
	rm -f config.mak
	rm -f config.h
clean:
	rm -f bin/ip2cc-qqwry
	rm -f bin/ip2cc
