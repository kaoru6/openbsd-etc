#!/bin/sh

[ `uname -s` != OpenBSD ] && exit

VAREMPTY=' -d /var/empty -s /sbin/nologin '
NONEXISTENT=' -d /nonexistent -s /sbin/nologin '

# from 3.6 to 3.7
useradd -u 84 -g=uid -c 'FTP Daemon' ${VAREMPTY} _ftp


# from 3.5 to 3.6
useradd -u 77 -g=uid -c 'dhcp programs' ${VAREMPTY} _dhcp
useradd -u 78 -g=uid -c 'MOP Daemon' ${VAREMPTY} _mopd
useradd -u 79 -g=uid -c 'TFTP Daemon' ${VAREMPTY} _tfpd
useradd -u 80 -g=uid -c 'rbootd Daemon' ${VAREMPTY} _rbootd
useradd -u 81 -g=uid -c 'afs Daemon' ${VAREMPTY} _afs
useradd -u 82 -g=uid -c 'PPP utilities' ${VAREMPTY} _ppp
useradd -u 83 -g=uid -c 'NTP Daemon' ${VAREMPTY} _ntp

# from 3.4 to 3.5
useradd -u 74 -g=uid -c 'pflogd privsep' ${VAREMPTY} _pflogd
useradd -u 75 -g=uid -c 'BGP Deamon' ${VAREMPTY} _bgpd
useradd -u 76 -g=uid -c 'tcpdump' ${VAREMPTY} _tcpdump


# from 3.3 to 3.4
useradd -u 59 -g=uid -c 'Kerberos Server' ${VAREMPTY} _kdc
useradd -u 60 -g=uid -c 'Kerberos Admin' ${VAREMPTY} _kadmin
useradd -u 68 -g=uid -c 'isakmpd privsep' ${VAREMPTY} _isakmpd
useradd -u 73 -g=uid -c 'Syslog Daemon' ${VAREMPTY} _syslogd

exit 0;

# from 3.2 to 3.3
groupadd -g 61	_lkm
groupadd -g 62	_spamd
groupadd -g 63	_radius
groupadd -g 64	_token
groupadd -g 65	_shadow

useradd -u 62 -g _spamd -c 'Spam daemon'	${VAREMPTY} _spamd


# from 3.1 to 3.2
groupadd -g 66 crontab
groupadd -g 72 authpf

groupadd -g 27	sshd
groupadd -g 28	_portmap
groupadd -g 29	_identd
groupadd -g 30	_rstatd
groupadd -g 32	_rusersd
groupadd -g 33	_fingerd
groupadd -g 34	_sshagnt
groupadd -g 35	_x11

useradd -u 27 -g sshd  -c 'sshd privsep'	${VAREMPTY} sshd
useradd -u 28 -g _portmap  -c 'portmap'		${VAREMPTY} _portmap
useradd -u 29 -g _identd  -c 'identd'		${VAREMPTY} _identd
useradd -u 30 -g _rstatd  -c 'rpc.rstatd'	${VAREMPTY} _rstatd
useradd -u 32 -g _rusersd  -c 'rpc.rusersd'	${VAREMPTY} _rusersd
useradd -u 33 -g _fingerd  -c 'fingerd'		${VAREMPTY} _fingerd
useradd -u 35 -g _x11  -c 'X server'		${VAREMPTY} _x11

# from 2.9 to 3.0
groupadd -g 71	proxy
groupadd -g 25	smmsp
groupadd -g 26	popa3d

useradd -u 25 -g smmsp  -c 'Sendmail Message Submission Program'	${NONEXISTENT} smmsp
useradd -u 26 -g popa3d  -c 'POP3 server'	${VAREMPTY} popa3d
useradd -u 71 -g proxy  -c 'Proxy Services' ${NONEXISTENT} proxy


# from 2.8 to 2.9
groupadd -g 11	auth
