#!/bin/sh
VAREMPTY=' -d /var/empty -s /sbin/nologin '
NONEXISTENT=' -d /nonexistent -s /sbin/nologin '

# from 3.1 to 3.2
useradd -u 27 -g sshd  -c 'sshd privsep'	${VAREMPTY} sshd
useradd -u 28 -g _portmap  -c 'portmap'		${VAREMPTY} _portmap
useradd -u 29 -g _identd  -c 'identd'		${VAREMPTY} _identd
useradd -u 30 -g _rstatd  -c 'rpc.rstatd'	${VAREMPTY}  _rstatd
useradd -u 32 -g _rusersd  -c 'rpc.rusersd'	${VAREMPTY} _rusersd
useradd -u 33 -g _fingerd  -c 'fingerd'		${VAREMPTY} _fingerd
useradd -u 35 -g _x11  -c 'X server'		${VAREMPTY} _x11

# from 2.9 to 3.0
useradd -u 25 -g smmsp  -c 'Sendmail Message Submission Program'	${NONEXISTENT} smmsp
useradd -u 26 -g popa3d  -c 'POP3 server'	${VAREMPTY} popa3d
useradd -u 71 -g proxy  -c 'Proxy Services' ${NONEXISTENT} proxy

# from 2.3 to 2.4
#useradd -u 70 -g named  -c 'BIND Daemon' -d /var/named -s /sbin/nologin named