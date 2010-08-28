#!/bin/sh
# check NOPROFILE=no
cd /usr/src && make obj || exit 1
cd /usr/src && make build || exit 1
#chmod 000 /usr/sbin/apachectl
#cd /usr/src/distrib/crunch && make obj depend all install || exit 1
cd /usr/src/etc && env RELEASEDIR=/export/home/kaoru/release DESTDIR=/export/home/kaoru/dest make release || exit 1
