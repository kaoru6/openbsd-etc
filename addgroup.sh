#!/bin/sh

[ `uname -s` != 'OpenBSD' ] && exit

# from 3.2 to 3.3
groupadd -g 61 _lkm
groupadd -g 63 _radius
groupadd -g 64  _token
groupadd -g 65 _shadow
groupadd -g 65 _spamd

# from 3.1 to 3.2
groupadd -g 66 crontab
groupadd -g 72 authpf

groupadd -g 27 sshd
groupadd -g 28 _portmap
groupadd -g 29 _identd
groupadd -g 30 _rstatd
groupadd -g 32 _rusersd
groupadd -g 33 _fingerd
groupadd -g 34 _sshagnt
groupadd -g 35 _x11

# from 2.9 to 3.0
groupadd -g 71 proxy
groupadd -g 25 smmsp
groupadd -g 26 popa3d

# from 2.8 to 2.9
groupadd -g 11 auth
