#!/bin/sh

# from 3.1 to 3.2
group add -g 66 crontab
group add -g 72 authpf

group add -g 27 sshd
group add -g 28 _portmap
group add -g 29 _identd
group add -g 30 _rstatd
group add -g 32 _rusersd
group add -g 33 _fingerd
group add -g 34 _sshagnt
group add -g 35 _x11

# from 2.9 to 3.0
group add -g 71 proxy
group add -g 25 smmsp
group add -g 26 popa3d

# from 2.8 to 2.9
group add -g 11 auth

# from 2.3 to 2.4
#group add -g 70 named
