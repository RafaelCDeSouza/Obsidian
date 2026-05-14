```yaml
User Authentication
(admin@10.244.188.59) Password:

Info: The max number of VTY users is 10, and the number
      of current VTY users on line is 1.
      The current login time is 2026-05-13 10:33:18-03:00.
Info: Lastest accessed IP: 10.244.19.90  Time: 2026-03-31 09:06:05-03:00  Password will expire in: -

Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
<SW1POP59_INFRAWEB>displ
<SW1POP59_INFRAWEB>display curr
!Software Version V200R021C00SPC100
#
sysname SW1POP59_INFRAWEB
#
router id 10.244.188.59
#
vlan batch 11 81 1001 1114 1159 1259 1459 2202 3114 3214
vlan batch 3256 3580 to 3581 4094
#
authentication-profile name default_authen_profile
authentication-profile name dot1x_authen_profile
authentication-profile name dot1xmac_authen_profile
authentication-profile name mac_authen_profile
authentication-profile name multi_authen_profile
authentication-profile name portal_authen_profile
#
set save-configuration delay 10
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
#
http server-source all-interface
#
clock timezone Brasilia minus 03:00:00
#
assign resource-mode enhanced-arp slot 0
#
bfd for vsi-pw enable
#
diffserv domain default
#
radius-server template default
#
bfd
#
mpls lsr-id 10.244.188.59
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI3256_POP02_POP59_TR_CL_TELIU static
 pwsignal ldp
  vsi-id 3256
  peer 10.244.188.2
 mtu 9000
 encapsulation ethernet
#
vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
 pwsignal ldp
  vsi-id 3114
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3214_POP02_POP14_LOMBA_BGP2 static
 pwsignal ldp
  vsi-id 3214
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3580_RN_INFRAWEB_NA_CYBER static
 pwsignal ldp
  vsi-id 3580
  peer 10.244.188.5
  peer 10.244.189.0
  peer 10.244.188.19
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
 pwsignal ldp
  vsi-id 3581
  peer 10.244.189.0
 mtu 9000
 encapsulation ethernet
#
mpls ldp
#
#
mpls ldp remote-peer 10.244.188.1
 remote-ip 10.244.188.1
#
mpls ldp remote-peer 10.244.188.2
 remote-ip 10.244.188.2
#
mpls ldp remote-peer 10.244.188.5
 remote-ip 10.244.188.5
#
mpls ldp remote-peer 10.244.188.19
 remote-ip 10.244.188.19
#
mpls ldp remote-peer 10.244.189.0
 remote-ip 10.244.189.0
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
vlan 11
 description VLAN11_INFRAWEB_PPPPOE
vlan 1001
 description VLAN_1001_CGNAT1_CE01_INFRAWEB
vlan 1114
 description VLAN_1114_SW1POP59_SW1POP14_OSPF
vlan 1159
 description VLAN_1159_SW1POP08_SW1POP59_MPLS1
vlan 1259
 description VLAN_1259_SW1POP25_SW1POP59_MPLS1
vlan 1459
 description PTP_POP59_POP14_OSPF_2
vlan 2202
 description VLAN_2202_FIBERLINK_LINK1
vlan 3114
 description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
vlan 3214
 description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
vlan 3256
 description VLAN_3256_PPPOE_CLIENTES_TELIUM
vlan 3580
 description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
vlan 3581
 description VLAN3581_RN_CYBER_NA_INFRAWEB
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
 local-aaa-user wrong-password retry-interval 5 retry-time 10 block-time 5
 local-user admin password irreversible-cipher $1c$&g__1]ufS8$4TU91.jqtTd7KzTf_[VM(x@N"@9acF{6Y,O[a<x<$
 local-user admin privilege level 15
 local-user admin service-type terminal ssh http
 local-user zandona password irreversible-cipher $1c$LC"pGB|q4O$8Kp.>f{E&GMOUm8zus7Y{g`K%ifk#Hx9P{9h)2Q2$
 local-user zandona privilege level 15
 local-user zandona service-type terminal ssh http
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif1114
 description VLAN_1114_SW1POP59_SW1POP14_OSPF
 ip address 10.244.114.1 255.255.255.252
 ospf cost 100
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1159
 description VLAN_1159_SW1POP08_SW1POP59_MPLS1
 ip address 10.244.159.2 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1259
 description VLAN_1259_SW1POP25_SW1POP59_MPLS1
 ip address 10.244.159.6 255.255.255.252
 ospf cost 40
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif1459
 description PTP_POP59_POP14_OSPF_2
 mtu 9216
 ip address 10.244.114.14 255.255.255.252
 ospf cost 20
 ospf network-type p2p
 mpls
 mpls ldp
#
interface Vlanif3114
 description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
 l2 binding vsi VSI3114_POP00_POP14_LOMBA_BGP1
#
interface Vlanif3214
 description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
 l2 binding vsi VSI3214_POP02_POP14_LOMBA_BGP2
#
interface Vlanif3256
 description VLAN_3256_PPPOE_CLIENTES_TELIUM
 l2 binding vsi VSI3256_POP02_POP59_TR_CL_TELIU
#
interface Vlanif3580
 description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
 l2 binding vsi VSI_3580_RN_INFRAWEB_NA_CYBER
#
interface Vlanif3581
 description VLAN3581_RN_CYBER_NA_INFRAWEB
 l2 binding vsi VSI_3581_RN_CYBER_NA_INFRAWEB
#
interface MEth0/0/1
 ip address 192.168.1.253 255.255.255.0
#
interface GigabitEthernet0/0/1
 description PTP_SW1POP59_P01_OLT1INFRA_P0/1
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1114 3214 3256 3580 to 3581
 jumboframe enable 12288
#
interface GigabitEthernet0/0/2
 shutdown
#
interface GigabitEthernet0/0/3
 shutdown
#
interface GigabitEthernet0/0/4
 description PTP_SW1POP59_PX01_INFRAWEB_SW_DATACOM
 port link-type trunk
 port trunk allow-pass vlan 3580
 jumboframe enable 12288
#
interface GigabitEthernet0/0/5
 shutdown
#
interface GigabitEthernet0/0/6
 description VLAN3580_INFRAWEB
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3580
 jumboframe enable 12288
#
interface GigabitEthernet0/0/7
 shutdown
#
interface GigabitEthernet0/0/8
 shutdown
#
interface GigabitEthernet0/0/9
 shutdown
#
interface GigabitEthernet0/0/10
 shutdown
#
interface GigabitEthernet0/0/11
 shutdown
#
interface GigabitEthernet0/0/12
 shutdown
#
interface GigabitEthernet0/0/13
 shutdown
#
interface GigabitEthernet0/0/14
 shutdown
#
interface GigabitEthernet0/0/15
 shutdown
#
interface GigabitEthernet0/0/16
 shutdown
#
interface GigabitEthernet0/0/17
 shutdown
#
interface GigabitEthernet0/0/18
 shutdown
#
interface GigabitEthernet0/0/19
 shutdown
#
interface GigabitEthernet0/0/20
 shutdown
#
interface XGigabitEthernet0/0/1
 description PTP_SW1POP59_PX01_SW1POP14_PX01
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 140 to 141 1114 1214 1459 3114 3214
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/2
 description PTP_SW1POP59_PX01_INFRAWEB_SFP-SFPPLUS1
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3580
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/3
 description PTP_SW1POP59_PX03_SW1POP08_PX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1159
 stp disable
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/4
 description PTP_SW1POP57_PX04_SW1POP25_PX04
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1259
 jumboframe enable 12288
#
interface 40GE0/0/1
 shutdown
#
interface 40GE0/0/2
 shutdown
#
interface 40GE0/0/3
 shutdown
#
interface 40GE0/0/4
 shutdown
#
interface 40GE0/0/5
 shutdown
#
interface 40GE0/0/6
 shutdown
#
interface NULL0
#
interface LoopBack1
 ip address 10.244.188.59 255.255.255.255
#
bgp 268214
 router-id 10.244.188.59
 graceful-restart
 #
 ipv4-family unicast
  undo synchronization
#
ospf 1
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1159
 undo silent-interface Vlanif1259
 undo silent-interface Vlanif1114
 undo silent-interface Vlanif1459
 area 0.0.0.0
  network 10.244.114.0 0.0.0.3
  network 10.244.114.12 0.0.0.3
  network 10.244.158.0 0.0.0.3
  network 10.244.159.0 0.0.0.3
  network 10.244.159.4 0.0.0.3
  network 10.244.159.8 0.0.0.3
#
undo icmp name timestamp-request receive
#
snmp-agent
snmp-agent local-engineid 800007DB03D8109F0B0F90
snmp-agent community read cipher %^%#1@F/@$uGj(X>1I$D]&UKk_;i(\cOP5@lW5U)F#/U<UF&-pL$^%@gs0L]}]/%E`.7*F-b-(]S/:RN=HiL%^%#
snmp-agent sys-info contact CyberWeb
snmp-agent sys-info location -29.7400752,-51.1495213
snmp-agent sys-info version v2c v3
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
stelnet server enable
ssh client first-time enable
ssh server-source all-interface
ssh server cipher aes256_ctr aes128_ctr
ssh server hmac sha2_256
ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
ssh client cipher aes256_ctr aes128_ctr
ssh client hmac sha2_256
ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
ssh server dh-exchange min-len 2048
ssh server publickey rsa_sha2_512 rsa_sha2_256
#
capwap dtls cert-mandatory-match enable
#
user-interface con 0
 authentication-mode password
 set authentication password cipher $1c$mC5a9yRYQL$EU-FHE%^;)HH_>8dO6G(Q|RN/i'7A",Me)"yuK$K$
 idle-timeout 3600 0
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
 protocol inbound all
user-interface vty 16 20
#
wlan
 traffic-profile name default
 security-profile name default
 security-profile name default-wds
 security-profile name default-mesh
 ssid-profile name default
 vap-profile name default
 wds-profile name default
 mesh-handover-profile name default
 mesh-profile name default
 regulatory-domain-profile name default
 air-scan-profile name default
 rrm-profile name default
 radio-2g-profile name default
 radio-5g-profile name default
 wids-spoof-profile name default
 wids-whitelist-profile name default
 wids-profile name default
 ap-system-profile name default
 port-link-profile name default
 wired-port-profile name default
 ap-group name default
 provision-ap
#
dot1x-access-profile name dot1x_access_profile
#
mac-access-profile name mac_access_profile
#
ops
#
return
<SW1POP59_INFRAWEB>
```
