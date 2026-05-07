```yaml


Login authentication


Username:admin
Password:
Info: Lastest accessed IP: -  Time: -  Password will expire in: -

Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommend                                                                                                             ed version information.
<SW1POP15_ESTEIO>
May  7 2026 11:37:41-03:00 SW1POP15_ESTEIO LINE/5/VTYUSERLOGIN:OID 1.3.6.1.4.1.2                                                                                                             011.5.25.207.2.2 A user login. (UserIndex=0, UserName=admin, UserIP=**, UserChan                                                                                                             nel=CON0)
<SW1POP15_ESTEIO>
<SW1POP15_ESTEIO>
<SW1POP15_ESTEIO>displ
<SW1POP15_ESTEIO>display cur
<SW1POP15_ESTEIO>display current-configuration
!Software Version V200R022C00SPC500
#
sysname SW1POP15_ESTEIO
#
router id 10.244.189.15
#
vcmp role client
#
vlan batch 30 230 to 231 233 1115 1215 1222 1225 3001 3256 4094
#
authentication-profile name default_authen_profile
 undo authentication ip-address in-accounting-start
authentication-profile name dot1x_authen_profile
 undo authentication ip-address in-accounting-start
authentication-profile name dot1xmac_authen_profile
 undo authentication ip-address in-accounting-start
authentication-profile name mac_authen_profile
 undo authentication ip-address in-accounting-start
authentication-profile name multi_authen_profile
 undo authentication ip-address in-accounting-start
authentication-profile name portal_authen_profile
 undo authentication ip-address in-accounting-start
#
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
#
radius-attribute encap optimize disable
#
http server-source all-interface
#
clock timezone Brasilia minus 03:00:00
#
portal pass dns enable
#
undo pki key enhance enable
#
smart-upgrade web-prompt disable
#
diffserv domain default
#
radius-server template default
#
bfd
#
mpls lsr-id 10.244.189.15
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI_3001_POP00_POP15_NEUGEBAUER static
 pwsignal ldp
  vsi-id 3001
  peer 10.244.189.0
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_150_POP0-2_POP15_EXPOI_MGNT static
 pwsignal ldp
  vsi-id 150
  peer 10.244.189.0
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_151_POP0-2_POP15_EXPOI_OLT1 static
 pwsignal ldp
  vsi-id 151
  peer 10.244.189.0
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3256_SC_POP02_TR_CL_TELIUM static
 pwsignal ldp
  vsi-id 3256
  peer 10.244.188.2
 mtu 9000
 encapsulation ethernet
#
vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
 pwsignal ldp
  vsi-id 30
  peer 10.244.189.0
 mtu 9000
 encapsulation ethernet
#
vsi VSI_230_POP0-2_POP23_EXPOI_MGNT static
#
vsi VSI_230_POP0-2_POP23_EST_MGNT static
 pwsignal ldp
  vsi-id 230
  peer 10.244.189.0
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_231_POP0-2_POP23_EST_OLT1 static
 pwsignal ldp
  vsi-id 231
  peer 10.244.189.0
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_233_POP0-2_POP23_EST_OLT1 static
 pwsignal ldp
  vsi-id 233
  peer 10.244.189.0
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
mpls ldp
#
#
mpls ldp remote-peer 10.244.188.2
 remote-ip 10.244.188.2
#
mpls ldp remote-peer 10.244.188.19
 remote-ip 10.244.188.19
#
mpls ldp remote-peer 10.244.188.20
 remote-ip 10.244.188.20
#
mpls ldp remote-peer 10.244.189.0
 remote-ip 10.244.189.0
#
mpls ldp remote-peer 10.244.189.11
 remote-ip 10.244.189.11
#
pki realm default
 certificate-check none
#
free-rule-template name default_free_rule
#
portal-access-profile name portal_access_profile
#
drop-profile default
#
vlan 30
 description VLAN_30_POP03_M_FOLRES_MGNT
vlan 231
 description VLAN_231_POP23_ESTEIO_OLT1
vlan 233
 description VLAN_233_POP23_ESTEIO_OLT1
vlan 1115
 description VLAN1115_SW1POP44_SW1POP15_MPLS
vlan 1215
 description VLAN1215_SW1POP15_SW1POP25_MPLS
vlan 1222
 description VLAN1222_SW1POP15_SW1POP22_MPLS
vlan 1225
 description VLAN1225_SW1POP15_SW1POP25_MPLS
vlan 3001
 description VLAN_3001_DEDICADO_NEUGEBAUER
vlan 3256
 description VLAN_3256_TRANSP_TELIUM_DIVERSOS
vlan 4094
 description VLAN_4094_BLACKHOLE
#
aaa
 authentication-scheme default
  authentication-mode local
 authentication-scheme radius
  authentication-mode radius
 authorization-scheme default
  authorization-mode local
 accounting-scheme default
  accounting-mode none
 local-aaa-user password policy administrator
  password history record number 0
  password expire 0
 domain default
  authentication-scheme radius
  accounting-scheme default
  radius-server default
 domain default_admin
  authentication-scheme default
  accounting-scheme default
 undo local-user password change-offline enable
 local-user admin password irreversible-cipher $1c$K9TLEz87(Y$u-&C24l.2IPofL'L7itDc0A(8<Y4l,Jd]n@(C~n/$
 local-user admin privilege level 15
 local-user admin service-type terminal ssh http
 local-user zandona password irreversible-cipher $1c$Oq*=C(!R})$WW8^#3XX=Jn<773={,[IYQf[1=e*x=<v/W#~:1QE$
 local-user zandona privilege level 15
 local-user zandona service-type terminal ssh http
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif30
 description VLAN_30_POP03_M_FOLRES_MGNT
 l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
#
interface Vlanif230
 description VLAN_230_POP23_ESTEIO_GERENCIA
 l2 binding vsi VSI_230_POP0-2_POP23_EST_MGNT
#
interface Vlanif231
 description VLAN_231_POP23_ESTEIO_OLT1
 l2 binding vsi VSI_231_POP0-2_POP23_EST_OLT1
#
interface Vlanif233
 description VLAN_233_POP23_ESTEIO_OLT1
 l2 binding vsi VSI_233_POP0-2_POP23_EST_OLT1
#
interface Vlanif1115
 description VLAN1115_SW1POP44_SW1POP15_MPLS
 mtu 9216
 ip address 10.244.115.2 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1215
 description VLAN1215_SW1POP15_SW1POP25_MPLS
 shutdown
 ip address 10.244.115.6 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1222
 description VLAN1222_SW1POP15_SW1POP22_MPLS
 ip address 10.244.122.5 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1225
 description VLAN1225_SW1POP15_SW1POP25_MPLS
 ip address 10.244.125.5 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif3001
 description VLAN_3001_DEDICADO_NEUGEBAUER
 l2 binding vsi VSI_3001_POP00_POP15_NEUGEBAUER
#
interface Vlanif3256
 description VLAN_3256_TRANSP_TELIUM_DIVERSOS
 l2 binding vsi VSI_3256_SC_POP02_TR_CL_TELIUM
#
interface MEth0/0/1
 ip address 192.168.1.253 255.255.255.0
#
interface XGigabitEthernet0/0/1
 description PTP_SW1POP23_PX01_OLT1POP23_PX01
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 30 230 to 233 3001 3256
 stp disable
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/2
 description PTP_SW1POP15_PX02_SW1POP25_PX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1222 1225
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/3
 shutdown
#
interface XGigabitEthernet0/0/4
 shutdown
#
interface XGigabitEthernet0/0/5
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1215
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/6
 shutdown
#
interface XGigabitEthernet0/0/7
 shutdown
#
interface XGigabitEthernet0/0/8
 shutdown
#
interface XGigabitEthernet0/0/9
 description PTP_SW1POP15_PX09_SW1POP44_PX09
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1115
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/10
 shutdown
#
interface XGigabitEthernet0/0/11
 shutdown
#
interface XGigabitEthernet0/0/12
 shutdown
#
interface XGigabitEthernet0/0/13
 shutdown
#
interface XGigabitEthernet0/0/14
 shutdown
#
interface XGigabitEthernet0/0/15
 shutdown
#
interface XGigabitEthernet0/0/16
 shutdown
#
interface XGigabitEthernet0/0/17
 shutdown
#
interface XGigabitEthernet0/0/18
 shutdown
#
interface XGigabitEthernet0/0/19
 shutdown
#
interface XGigabitEthernet0/0/20
 shutdown
#
interface XGigabitEthernet0/0/21
 shutdown
#
interface XGigabitEthernet0/0/22
 shutdown
#
interface XGigabitEthernet0/0/23
 shutdown
#
interface XGigabitEthernet0/0/24
 shutdown
#
interface 40GE0/0/1
 shutdown
#
interface 40GE0/0/2
 shutdown
#
interface NULL0
#
interface LoopBack1
 ip address 10.244.189.15 255.255.255.255
#
ospf 1 router-id 10.244.189.15
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1225
 undo silent-interface Vlanif1215
 undo silent-interface Vlanif1115
 undo silent-interface Vlanif1222
 opaque-capability enable
 area 0.0.0.0
  network 10.244.115.0 0.0.0.3
  network 10.244.115.4 0.0.0.3
  network 10.244.122.4 0.0.0.3 description VLAN_1222
  network 10.244.125.4 0.0.0.3
  mpls-te enable
#
snmp-agent
snmp-agent local-engineid 800007DB030CC6CCC68E10
snmp-agent community read cipher %^%#[uW!@DqehFNFN+SQu*wVk-i\-s:X#DEu@eAO9"z4]mh~XD[kW#SP,XBR6);7=|xNY8m]3"jNk}VcZAaC%^%#
snmp-agent sys-info contact Cyberweb
snmp-agent sys-info location -29.8539758,-51.1861427
snmp-agent sys-info version v2c
undo snmp-agent sys-info version v3
snmp-agent trap enable
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
stelnet server enable
ssh server-source all-interface
ssh server cipher aes256_ctr aes128_ctr
ssh server hmac sha2_256
ssh client cipher aes256_ctr aes128_ctr
ssh client hmac sha2_256
ssh server dh-exchange min-len 2048
#
user-interface con 0
 authentication-mode aaa
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
user-interface vty 16 20
#
dot1x-access-profile name dot1x_access_profile
#
mac-access-profile name mac_access_profile
#
ops
#
remote-unit
#
return
<SW1POP15_ESTEIO>

```
