```yaml
cyberweb@10.244.189.20's password:

Info: The max number of VTY users is 5, the number of current VTY users online is 1, and total number of terminal users online is 1.
      The current login time is 2024-07-14 04:38:28.
<SW2POP20_NAVEGANTES>en
                     ^
Error: Unrecognized command found at '^' position.
<SW2POP20_NAVEGANTES>sys
Enter system view, return user view with return command.
[SW2POP20_NAVEGANTES]displ
[SW2POP20_NAVEGANTES]display cu
[SW2POP20_NAVEGANTES]display current-configuration
!Software Version V600R023C00SPC500
!Last configuration was updated at 2024-07-14 04:19:42+00:00 by cyberweb
!Last configuration was saved at 2024-07-14 04:24:36+00:00 by cyberweb
!grpc VRPV800R006C00B016D0127-0.0.1
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



interface Vlanif99
 ip address 10.244.20.90 255.255.255.0
#
interface Vlanif1320
 mtu 9216
 description VLAN_1320_SW2POP20_SW1POP20_MPLS
 ip address 10.244.120.21 255.255.255.252
 ospf cost 10
 ospf network-type p2p
#
interface Stack-Port1/1
#
interface Stack-Port1/2
#
interface GE1/0/1
#
interface GE1/0/2
#
interface GE1/0/3
#
interface GE1/0/4
#
interface GE1/0/5
 description MKT
 port default vlan 99
#
interface GE1/0/6
#
interface GE1/0/7
#
interface GE1/0/8
#
interface GE1/0/9
#
interface GE1/0/10
#
interface GE1/0/11
#
interface GE1/0/12
#
interface GE1/0/13
#
interface GE1/0/14
#
interface GE1/0/15
#
interface GE1/0/16
#
interface GE1/0/17
#
interface GE1/0/18
#
interface GE1/0/19
#
interface GE1/0/20
#
interface GE1/0/21
#
interface GE1/0/22
#
interface GE1/0/23
#
interface GE1/0/24
#
interface GE1/0/25
#
interface GE1/0/26
#
interface GE1/0/27
#
interface GE1/0/28
#
interface GE1/0/29
#
interface GE1/0/30
#
interface GE1/0/31
#
interface GE1/0/32
#
interface GE1/0/33
#
interface GE1/0/34
#
interface GE1/0/35
#
interface GE1/0/36
#
interface GE1/0/37
#
interface GE1/0/38
#
interface GE1/0/39
#
interface GE1/0/40
#
interface GE1/0/41
#
interface GE1/0/42
#
interface GE1/0/43
#
interface GE1/0/44
#
interface GE1/0/45
#
interface GE1/0/46
#
interface GE1/0/47
#
interface GE1/0/48
#
interface 10GE1/0/1
#
interface 10GE1/0/2
#
interface 10GE1/0/3
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
#
interface 10GE1/0/6
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
snmp-agent community read cipher %@%##!!!!!!!!!"!!!!"!!!!*!!!!7LTnVOK_g:UjYV4b%a==DE=V!XWW.L#1p:~!!!!!2jp5!!!!!!U!!!!z]w'4w,//%,mGP>I,BS@h+Q<!fjES<"Lw6>UW[bA/kEuOj(&dY(go#~(uaf'J5O&5!!!!!!!!!!!!!!!%@%# alias __CommunityAliasName_01_57636
#
snmp-agent sys-info contact CyberWeb
snmp-agent sys-info version v3
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
ssh server-source all-interface
undo ssh ipv6 server-source all-interface
ssh server ip-block disable
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
[SW2POP20_NAVEGANTES]
```
