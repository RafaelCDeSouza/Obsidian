```yaml
cyberweb@10.244.189.20's password:

Info: The max number of VTY users is 5, the number of current VTY users online is 1, and total number of terminal users online is 1.
      The current login time is 2024-07-31 23:14:51.
<SW2POP20_NAVEGANTES>displ
<SW2POP20_NAVEGANTES>display curr
!Software Version V600R023C00SPC500
!Last configuration was updated at 2024-07-14 04:57:04+00:00 by cyberweb
!Last configuration was saved at 2024-07-14 04:54:24+00:00 by cyberweb
!grpc VRPV800R006C00B016D0127-0.0.1
!kms_feature --
!md_tlm VRPV800R006C00B016D0127-0.0.1
!telem VRPV800R006C00B016D0127-0.0.1
#
pki realm default
#
sysname SW2POP20_NAVEGANTES
#
undo ftp server source all-interface
undo ftp ipv6 server source all-interface
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
info-center logfile compression lzma
#
device board 1 board-type S5735-L48T4XE-A-V2
#
authentication-profile name default_authen_profile
authentication-profile name dot1x_authen_profile
authentication-profile name dot1xmac_authen_profile
authentication-profile name mac_authen_profile
#
drop-profile default
#
ntp server source-interface all disable
ntp ipv6 server source-interface all disable
#
vlan batch 99 1320
#
router id 10.244.189.20
#
error-down auto-recovery cause link-flap interval 60
#
undo telnet server-source all-interface
undo telnet ipv6 server-source all-interface
#
qos schedule-profile default
#
diffserv domain default
#
ip vpn-instance _management_vpn_
 ipv4-family
#
bfd
#
vlan 99
 description TEMP
#
vlan 1320
 description VLAN_1320_SW2POP20_SW1POP20_MPLS
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
  authentication-scheme default
  accounting-scheme default
 domain default_admin
  authentication-scheme default
  accounting-scheme default
 local-user cyberweb password irreversible-cipher $1d$b^zHDAsG,:4;d)=J$tqT7A#L|>N<SCJLDs@m;`mY3P2DlSYgK-HKw:SwU$
 local-user cyberweb privilege level 3
 local-user cyberweb service-type ssh
#
free-rule-template name default_free_rule
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
#
warranty
#
interface Vlanif1320
 mtu 9216
 description VLAN_1320_SW2POP20_SW1POP20_MPLS
 ip address 10.244.120.21 255.255.255.252
 ospf cost 10
 ospf network-type p2p
#
interface Stack-Port1/1
 shutdown
#
interface Stack-Port1/2
 shutdown
#
interface GE1/0/1
 shutdown
#
interface GE1/0/2
 shutdown
#
interface GE1/0/3
 shutdown
#
interface GE1/0/4
 shutdown
#
interface GE1/0/5
 description PTP_SW2POP20_P5_CE020_P5
#
interface GE1/0/6
 shutdown
#
interface GE1/0/7
 shutdown
#
interface GE1/0/8
 shutdown
#
interface GE1/0/9
 shutdown
#
interface GE1/0/10
 shutdown
#
interface GE1/0/11
 shutdown
#
interface GE1/0/12
 shutdown
#
interface GE1/0/13
 shutdown
#
interface GE1/0/14
 shutdown
#
interface GE1/0/15
 shutdown
#
interface GE1/0/16
 shutdown
#
interface GE1/0/17
 shutdown
#
interface GE1/0/18
 shutdown
#
interface GE1/0/19
 shutdown
#
interface GE1/0/20
 shutdown
#
interface GE1/0/21
 shutdown
#
interface GE1/0/22
 shutdown
#
interface GE1/0/23
 shutdown
#
interface GE1/0/24
 shutdown
#
interface GE1/0/25
 shutdown
#
interface GE1/0/26
 shutdown
#
interface GE1/0/27
 shutdown
#
interface GE1/0/28
 shutdown
#
interface GE1/0/29
 shutdown
#
interface GE1/0/30
 shutdown
#
interface GE1/0/31
 shutdown
#
interface GE1/0/32
 shutdown
#
interface GE1/0/33
 shutdown
#
interface GE1/0/34
 shutdown
#
interface GE1/0/35
 shutdown
#
interface GE1/0/36
 shutdown
#
interface GE1/0/37
 shutdown
#
interface GE1/0/38
 shutdown
#
interface GE1/0/39
 shutdown
#
interface GE1/0/40
 shutdown
#
interface GE1/0/41
 shutdown
#
interface GE1/0/42
 shutdown
#
interface GE1/0/43
 shutdown
#
interface GE1/0/44
 shutdown
#
interface GE1/0/45
 shutdown
#
interface GE1/0/46
 shutdown
#
interface GE1/0/47
 shutdown
#
interface GE1/0/48
 shutdown
#
interface 10GE1/0/1
 shutdown
#
interface 10GE1/0/2
 shutdown
#
interface 10GE1/0/3
 shutdown
#
interface 10GE1/0/4
 description PTP_SW2POP20_PX04_SW1POP20_PX04
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1320
 jumboframe enable 10240
 device transceiver 10GBASE-FIBER
#
interface 10GE1/0/5
 shutdown
#
interface 10GE1/0/6
 shutdown
#
interface LoopBack0
 ip address 10.244.189.20 255.255.255.255
#
interface NULL0
#
ospf 1 router-id 10.244.189.20
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1320
 opaque-capability enable
 area 0.0.0.0
  network 10.244.120.20 0.0.0.3 description Vlanif1320_SW1POP20
  network 10.244.189.20 0.0.0.0 description Loopback1_SW2POP20
#
snmp-agent
snmp-agent local-engineid 800007DB0364C394EC59D7
snmp-agent community read cipher %@%##!!!!!!!!!"!!!!"!!!!*!!!!7LTnVOK_g:_(A12WK0*E:3!MYJe_V0nS,%O!!!!!2jp5!!!!!!U!!!!]<d)'w,<w!JCJu7"%8PIq2lV%9Y\X=\|7d02{>|%;zJ~K_0]~/FyheRFE.a@{,SL1!!!!!!!!!!!!!!!%@%# alias __CommunityAliasName_01_57636
#
snmp-agent sys-info contact CyberWeb
snmp-agent sys-info version v2c v3
#
snmp-agent protocol source-interface 10GE1/0/4
snmp-agent protocol source-interface LoopBack0
undo snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
undo snmp-agent proxy protocol source-status all-interface
undo snmp-agent proxy protocol source-status ipv6 all-interface
#
#
stelnet server enable
ssh server rsa-key min-length 3072
ssh server-source -i LoopBack0
undo ssh server-source all-interface
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
user-interface maximum-vty 5
#
user-interface con 0
 authentication-mode password
 set authentication password cipher $1d$A|9W/tlK&WMqM(*o$Q7)i8j,4R./)lS6w_Ho=>9P9L`M/ACucM]0V.W./$
#
user-interface vty 0 4
 authentication-mode aaa
 protocol inbound ssh
#
ztp domain-type registration-center domain register.naas.huawei.com port 10020
#
web-manager http forward enable
#
return
<SW2POP20_NAVEGANTES>
```
