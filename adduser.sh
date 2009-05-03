#!/bin/sh

[ `uname -s` != OpenBSD ] && exit

VAREMPTY=' -d /var/empty -s /sbin/nologin '
NONEXISTENT=' -d /nonexistent -s /sbin/nologin '

# typo fix
usermod -c 'POP3 Server' popa3d
usermod -c 'X Server' _x11
usermod -c 'Spam Daemon' _spamd
usermod -c 'HTTP Server' www
usermod -c 'BGP Daemon' _bgpd
usermod -c 'tcpdump privsep' _tcpdump
usermod -c 'DHCP programs' _dhcp
usermod -c 'Kerberos Admin Server' _kadmin


# from 4.5 to 4.6
groupadd -g 95 _smtpd
useradd -u 95 -g 95 -c 'SMTP Daemon' ${VAREMPTY} _smtpd

# from 4.4 to 4.5
groupadd -g 94 _btd
useradd -u 94 -g 94 -c 'Bluetooth Daemon' ${VAREMPTY} _btd

usermod -c 'Unprivileged user for NFS' nobody

# from 4.3 to 4.4
groupadd -g 92 _rtadvd
groupadd -g 93 _ypldap
useradd -u 92 -g 92 -c 'IPv6 Router Advertisement Daemon' ${VAREMPTY} _rtadvd
useradd -u 93 -g 93 -c 'YP to LDAP Daemon' ${VAREMPTY} _ypldap


# from 4.2 to 4.3
groupadd -g 89 _relayd
groupadd -g 90 _ospf6d
groupadd -g 91 _snmpd
useradd -u 89 -g 89 -c 'Relay Daemon' ${VAREMPTY} _relayd
useradd -u 90 -g 90 -c 'OSPF6 Daemon' ${VAREMPTY} _ospf6d
useradd -u 91 -g 91 -c 'SNMP Daemon' ${VAREMPTY} _snmpd

exit 0;

# from 4.0 to 4.1
groupadd -g 88 _ripd
### groupadd -g 89 _hoststated
useradd -u 88 -g 88 -c 'RIP Daemon' ${VAREMPTY} _ripd


# from 3.9 to 4.0
groupadd -g 87 _dvmrpd
useradd -u 87 -g 87 -c 'DVMRP Daemon' ${VAREMPTY} _dvmrpd


# from 3.7 to 3.8
groupadd -g 86 _hostapd
useradd -u 86 -g 86 -c 'HostAP Daemon' ${VAREMPTY} _hostapd


# from 3.6 to 3.7
groupadd -g 84 _ftp
groupadd -g 85 _ospfd

useradd -u 84 -g 84 -c 'FTP Daemon' ${VAREMPTY} _ftp
useradd -u 85 -g 85 -c 'OSPF Daemon' ${VAREMPTY} _ospfd


# from 3.5 to 3.6
groupadd -g 77 _dhcp
groupadd -g 78 _mopd
groupadd -g 79 _tftpd
groupadd -g 80 _rbootd
groupadd -g 81 _afs
groupadd -g 82 _ppp
groupadd -g 83 _ntp

useradd -u 77 -g 77 -c 'DHCP programs' ${VAREMPTY} _dhcp
useradd -u 78 -g 78 -c 'MOP Daemon' ${VAREMPTY} _mopd
useradd -u 79 -g 79 -c 'TFTP Daemon' ${VAREMPTY} _tftpd
useradd -u 80 -g 80 -c 'rbootd Daemon' ${VAREMPTY} _rbootd
useradd -u 81 -g 81 -c 'afs Daemon' ${VAREMPTY} _afs
useradd -u 82 -g 82 -c 'PPP utilities' ${VAREMPTY} _ppp
useradd -u 83 -g 83 -c 'NTP Daemon' ${VAREMPTY} _ntp


# from 3.4 to 3.5
groupadd -g 74	_pflogd
groupadd -g 75	_bgpd
groupadd -g 76	_tcpdump

useradd -u 74 -g 74 -c 'pflogd privsep' ${VAREMPTY} _pflogd
useradd -u 75 -g 75 -c 'BGP Daemon' ${VAREMPTY} _bgpd
useradd -u 76 -g 76 -c 'tcpdump privsep' ${VAREMPTY} _tcpdump


# from 3.3 to 3.4
groupadd -g 68	_isakmpd
groupadd -g 59	_kdc
groupadd -g 60	_kadmin
groupadd -g 73	_syslogd

useradd -u 59 -g _kdc -c 'Kerberos Server' ${VAREMPTY} _kdc
useradd -u 60 -g _kadmin -c 'Kerberos Admin Server' ${VAREMPTY} _kadmin
useradd -u 68 -g _isakmpd -c 'isakmpd privsep' ${VAREMPTY} _isakmpd
useradd -u 73 -g _syslogd -c 'Syslog Daemon' ${VAREMPTY} _syslogd


# from 3.2 to 3.3
groupadd -g 61	_lkm
groupadd -g 62	_spamd
groupadd -g 63	_radius
groupadd -g 64	_token
groupadd -g 65	_shadow

useradd -u 62 -g _spamd -c 'Spam Daemon'	${VAREMPTY} _spamd


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
useradd -u 35 -g _x11  -c 'X Server'		${VAREMPTY} _x11


# from 2.9 to 3.0
groupadd -g 71	proxy
groupadd -g 25	smmsp
groupadd -g 26	popa3d

useradd -u 25 -g smmsp  -c 'Sendmail Message Submission Program'	${NONEXISTENT} smmsp
useradd -u 26 -g popa3d  -c 'POP3 Server'	${VAREMPTY} popa3d
useradd -u 71 -g proxy  -c 'Proxy Services' ${NONEXISTENT} proxy


# from 2.8 to 2.9
groupadd -g 11	auth
