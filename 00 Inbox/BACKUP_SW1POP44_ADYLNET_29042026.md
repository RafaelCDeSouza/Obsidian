```yaml
admincyber@10.244.188.44's password:
Warning: The password is already expired.
The password needs to be changed, Continue? [Y/N]:y
Please enter old password:
Please enter new password:
Please confirm new password:
The password has been changed successfully.

Info: The max number of VTY users is 5, the number of current VTY users online is 1, and total number of terminal users online is 1.
      The current login time is 2026-04-29 14:54:09-03:00.
<SW1POP44_ADYLNET>displ
<SW1POP44_ADYLNET>display curr
<SW1POP44_ADYLNET>display current-configuration
!Software Version V600R024C00SPC500
!Last configuration was updated at 2025-11-18 12:21:52-03:00 by zandona
!Last configuration was saved at 2025-11-18 13:14:47-03:00 by zandona
#
pki realm default
#
clock timezone Brasilia minus 03:00:00
#
sysname SW1POP44_ADYLNET
#
undo ftp server source all-interface
undo ftp ipv6 server source all-interface
#
undo set bridge-domain resource super-mode
#
ssl policy default
 pki-domain default
 ssl minimum version tls1.2
 cipher-suite exclude key-exchange rsa
 cipher-suite exclude cipher mode cbc
 cipher-suite exclude hmac sha1
 diffie-hellman modulus 3072
 ecdh group curve brainpool
 signature algorithm-list ed25519 ed448 rsa-pss-pss-sha256 rsa-pss-pss-sha384 rsa-pss-pss-sha512 rsa-pss-rsae-sha256 rsa-pss-rsae-sha384 rsa-pss-rsae-sha512
#
device board 1 board-type S6730-H24X6C-V2
#
wlan
 traffic-profile name default
 security-profile name default
 ssid-profile name default
 vap-profile name default
 regulatory-domain-profile name default
 air-scan-profile name default
 rrm-profile name default
 radio-2g-profile name default
 radio-5g-profile name default
 ap-system-profile name default
 port-link-profile name default
 wired-port-profile name default
 ap-group name default
 provision-ap
#
port mode 100GE interface 40GE1/0/1 to 40GE1/0/6
#
authentication-profile name default_authen_profile
authentication-profile name dot1x_authen_profile
authentication-profile name dot1xmac_authen_profile
authentication-profile name mac_authen_profile
authentication-profile name multi_authen_profile
authentication-profile name portal_authen_profile
#
access-user dot1x-identity speed-limit 80
#
drop-profile default
#
ntp server disable
ntp ipv6 server disable
ntp server source-interface all disable
ntp ipv6 server source-interface all disable
ntp unicast-server 200.160.0.8
ntp unicast-server 200.189.40.8
#
vlan batch 1115 1120 1142 1144 1146 1249 to 1250 3341 3602 4094
#
router id 10.244.188.44
#
error-down auto-recovery cause link-flap interval 60
#
undo telnet server-source all-interface
undo telnet ipv6 server-source all-interface
#
as-auth
#
mac-address update arp enable
#
diffserv domain default
#
ip vpn-instance _management_vpn_
 ipv4-family
#
bfd
#
vlan 1115
 description VLAN1115_SW1POP44_SW1POP15_MPLS
#
vlan 1120
 description VLAN1120_SW1POP44_SW1POP20_MPLS
#
vlan 1142
 name VL_1142_SW1POP02_SW1POP42_MPLS
#
vlan 1144
 description VLAN1144_SW1POP00_SW1POP44_MPLS
#
vlan 1146
 description VLAN_1146_SW1POP44_SW1POP46_MPLS
#
vlan 1249
 description VLAN_1249_SW1POP44_SW1POP49_MPLS
#
vlan 1250
 description VLAN_1250_SW1POP44_SW1POP50_MPLS
#
vlan 3341
 description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
#
vlan 3602
 description VLAN_3602_TR_ADYL_POP14_ADVANTA
#
vlan 4094
 description VLAN_4094_BLACKHOLE
#
mpls lsr-id 10.244.188.44
#
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
 pwsignal ldp
  vsi-id 3341
  peer 10.244.188.62
  peer 10.244.189.0
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
 pwsignal ldp
  vsi-id 3602
  peer 10.244.188.2
  peer 10.244.189.0
 mtu 9000
 encapsulation ethernet
#
mpls ldp
 #
 ipv4-family
#
mpls ldp remote-peer 10.244.189.0
 remote-ip 10.244.189.0
#
mpls ldp remote-peer 10.244.188.62
 remote-ip 10.244.188.62
#
mpls ldp remote-peer 10.244.188.2
 remote-ip 10.244.188.2
#
mpls ldp remote-peer 10.244.188.17
 remote-ip 10.244.188.17
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
 domain default
  authentication-scheme default
  accounting-scheme default
 domain default_admin
  authentication-scheme default
  accounting-scheme default
 local-user admincyber password irreversible-cipher $1d$zfQaFQdJ3.B3KT7"$vK_0<p9$gTd;;YO$"G}Qre>A=&RN!,(;V}H$|Fd0$
 local-user admincyber privilege level 3
 local-user admincyber service-type ssh http
 local-user zandona password irreversible-cipher $1d$,1{W-7i^~'@5Te5~$K;>KY^ZdE/)'hQSj(,E4ry=9~zr-v3qU`D2V{#wX$
 local-user zandona password-force-change disable
 local-user zandona privilege level 3
 local-user zandona service-type ssh http
 local-user zandona expire-date 2040/09/30
#
free-rule-template name default_free_rule
#
portal-access-profile name portal_access_profile
#
dot1x-access-profile name dot1x_access_profile
#
mac-access-profile name mac_access_profile
#
remote-unit
#
stack
#
license
 active port-license 100G interface 40GE1/0/1 to 40GE1/0/6
#
warranty
#
isis purge-source-trace disable
#
interface Vlanif1115
 mtu 9216
 description VLAN1115_SW1POP44_SW1POP15_MPLS
 ip address 10.244.115.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1120
 mtu 9216
 description VLAN1120_SW1POP44_SW1POP20_MPLS
 ip address 10.244.120.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1144
 mtu 9216
 description VLAN1144_SW1POP00_SW1POP44_MPLS
 ip address 10.244.144.2 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1146
 mtu 9216
 description VLAN_1146_SW1POP44_SW1POP46_MPLS_TR_ADYL
 ip address 10.244.146.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1249
 mtu 9216
 description VLAN1249_SW1POP44_SW1POP49_MPLS_TR_ADYL
 ip address 10.244.149.5 255.255.255.252
 ospf cost 20
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1250
 mtu 9216
 description VLAN1250_SW1POP44_SW1POP50_MPLS_TR_ADYL
 ip address 10.244.150.5 255.255.255.252
 ospf cost 20
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif3341
 description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
 l2 binding vsi VSI_3341_POP62_TR_EQUAT_SUBSTA
#
interface Vlanif3602
 description VLAN_3602_TR_ADYL_POP14_ADVANTA
 shutdown
 l2 binding vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA
#
interface MEth0/0/0
 ip address 192.168.1.253 255.255.255.0
#
interface 10GE1/0/1
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/2
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/3
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
 device transceiver 10GBASE-FIBER
#
interface 10GE1/0/4
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/5
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/6
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/7
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/8
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/9
 description PTP_SW1POP44_PX09_SW1POP15_PXXX
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1115
 jumboframe enable 12288
 device transceiver 10GBASE-FIBER
#
interface 10GE1/0/10
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/11
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/12
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/13
 description PTP_SW1POP13_PX09_SW1POP13_PX13
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1249 to 1250 3341
 stp disable
 jumboframe enable 12288
 device transceiver 10GBASE-FIBER
#
interface 10GE1/0/14
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/15
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/16
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/17
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/18
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/19
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/20
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/21
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/22
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/23
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 10GE1/0/24
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 100GE1/0/1
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 100GE1/0/2
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
#
interface 100GE1/0/3
 description PTP_SW1POP00_PCX03_SWPOP44_PCX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1144
 jumboframe enable 12288
 device transceiver 100GBASE-FIBER
#
interface 100GE1/0/4
 description PTP_SW1POP20_PCX04_SWPOP44_PCX04
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1120
 jumboframe enable 12288
 device transceiver 100GBASE-FIBER
#
interface 100GE1/0/5
 description PTP_SW1POP44_PCX05_SWADYL_PCX04
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1146
 jumboframe enable 12288
 device transceiver 100GBASE-FIBER
#
interface 100GE1/0/6
 shutdown
 port link-type trunk
 undo port trunk allow-pass vlan 1
 jumboframe enable 12288
 device transceiver 100GBASE-FIBER
#
interface LoopBack0
 ip address 10.244.188.44 255.255.255.255
#
interface NULL0
#
ospf 1 router-id 10.244.188.44
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1144
 undo silent-interface Vlanif1115
 undo silent-interface Vlanif1249
 undo silent-interface Vlanif1250
 undo silent-interface Vlanif1120
 undo silent-interface Vlanif1146
 opaque-capability enable
 area 0.0.0.0
  network 10.244.115.0 0.0.0.3 description vlan1115
  network 10.244.120.0 0.0.0.3 description vlan1120
  network 10.244.144.0 0.0.0.3 description vlan1144
  network 10.244.146.0 0.0.0.3 description Vlanif1146
  network 10.244.149.4 0.0.0.3 description vlan1249
  network 10.244.150.4 0.0.0.3 description vlan1250
  mpls-te enable
#
ip route-static 0.0.0.0 0.0.0.0 10.244.144.1 preference 254
#
snmp-agent
snmp-agent local-engineid 800007DB03AC5E14104931
snmp-agent community read cipher %@%##!!!!!!!!!"!!!!#!!!!*!!!!7LTnVOK_g:2w|s<m.sDQ)nc(+q,>`:{%Z/Z!!!!!2jp5!!!!!!U!!!!5`2.#wW0t:j[I_O\v\ZRUSh&N7%:.=*i_u/6]u%J+j(A*73\ANezE.G\U}SK-HX.V!!!!!!!!!!!!!!!%@%# alias __CommunityAliasName_01_39017
#
snmp-agent sys-info location -29.849943,-51.1787116
snmp-agent sys-info version v2c v3
#
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
undo snmp-agent proxy protocol source-status all-interface
undo snmp-agent proxy protocol source-status ipv6 all-interface
#
#
stelnet server enable
ssh server rsa-key min-length 3072
ssh server-source all-interface
undo ssh ipv6 server-source all-interface
ssh authorization-type default aaa
#
ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
ssh server hmac sha2_512 sha2_256
ssh server key-exchange dh_group_exchange_sha256 dh_group16_sha512 curve25519_sha256
#
ssh server publickey rsa_sha2_256 rsa_sha2_512
#
ssh server dh-exchange min-len 3072
#
ssh client publickey rsa_sha2_256 rsa_sha2_512
#
ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
ssh client hmac sha2_512 sha2_256
ssh client key-exchange dh_group_exchange_sha256 dh_group16_sha512 curve25519_sha256
#
oam-mgr
#
user-interface maximum-vty 5
#
user-interface con 0
 authentication-mode password
 set authentication password cipher $1d$}E])ZN_j^(_,2'Z_$p^E/S{o^QAh{E'".W#+,Z},+Yv(uN-!FauQ4Nq{0$
#
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
 protocol inbound ssh
#
ztp domain-type registration-center domain register.naas.huawei.com port 10020
#
load-balance inner-connect
#
web-manager enable port 8443
web-manager http forward enable
#
return
<SW1POP44_ADYLNET>
```
