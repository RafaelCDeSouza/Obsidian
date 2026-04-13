```yaml
User Authentication
(admin@10.244.189.12) Password:

Info: The max number of VTY users is 10, and the number
      of current VTY users on line is 1.
      The current login time is 2026-02-04 08:06:23-03:00.
Info: Lastest accessed IP: 10.244.19.90  Time: 2026-01-31 15:41:21-03:00  Password will expire in: -

Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
<SW1POP12_BETANIA_N>displ
<SW1POP12_BETANIA_N>display cu
<SW1POP12_BETANIA_N>display current-configuration
!Software Version V200R023C00SPC500
#
sysname SW1POP12_BETANIA_N
#
router id 10.244.189.12
#
vlan batch 120 to 121 140 to 141 1103 1110 1112 1214 3114 3510 to 3512 3540
#
authentication-profile name default_authen_profile
 authentication ipv6-control enable
authentication-profile name dot1x_authen_profile
 authentication ipv6-control enable
authentication-profile name dot1xmac_authen_profile
 authentication ipv6-control enable
authentication-profile name mac_authen_profile
 authentication ipv6-control enable
authentication-profile name multi_authen_profile
 authentication ipv6-control enable
authentication-profile name portal_authen_profile
 authentication ipv6-control enable
#
set save-configuration delay 1
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
#
http server-source all-interface
#
clock timezone Brasilia minus 03:00:00
#
ddr isolation disable
#
undo mac-address learning self-healing enable
#
capwap unknown-unicast cir 0
#
diffserv domain default
#
radius-server template default
#
bfd
#
mpls lsr-id 10.244.189.12
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
 pwsignal ldp
  vsi-id 121
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
 pwsignal ldp
  vsi-id 120
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3512_POP12_TR_CYBER_FENIX_RN static
 pwsignal ldp
  vsi-id 3512
  peer 10.244.188.8
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3511_RN_CYBER_NA_FENIX_PPPOE static
 pwsignal ldp
  vsi-id 3511
  peer 10.244.189.0
  peer 10.244.188.2
 mtu 9000
 encapsulation ethernet
#
vsi VSI3540_RN_MEDIA_NA_CYBER_PPPOE static
 pwsignal ldp
  vsi-id 3540
  peer 10.244.188.5
 mtu 9000
 encapsulation ethernet
#
vsi VSI3510_RN_FENIX_NA_CYBER_PPPOE static
 pwsignal ldp
  vsi-id 3510
  peer 10.244.189.3
 mtu 9000
 encapsulation ethernet
#
mpls ldp
#
#
mpls ldp remote-peer 10.244.188.2
 remote-ip 10.244.188.2
#
mpls ldp remote-peer 10.244.188.5
 remote-ip 10.244.188.5
#
mpls ldp remote-peer 10.244.188.8
 remote-ip 10.244.188.8
#
mpls ldp remote-peer 10.244.189.0
 remote-ip 10.244.189.0
#
mpls ldp remote-peer 10.244.189.3
 remote-ip 10.244.189.3
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
vlan 120
 description VLAN_120_POP12_BETANIA_GERENCIA
vlan 121
 description VLAN_121_POP12_BETANIA_OLT1
vlan 1103
 description VLAN1103_SW1POP12_SW1POP03_MPLS1
vlan 1110
 description VLAN1110_SW1POP12_SW1POP10_MPLS1
vlan 1112
 description VLAN1112_SW1POP00_SW1POP12_MPLS1
vlan 1214
 description VLAN_1214_PTP_POP12__SW2POP14_OSPF
vlan 3510
 description VLAN_3510_RN_CLIENTES_CYBER_NA_REDE_FENIX
vlan 3511
 description VLAN_3511_RN_CLIENTES_CYBER_NA_REDE_DA_FENIX
vlan 3512
 description VLAN_3512_TR_CYBER_FENIX_R_NEUTRA
vlan 3540
 description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
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
 local-user admin password irreversible-cipher $1c$\,0m>}DUP~$=%U^OKK9-5Ka9',6W>!#^dfYD2IY2.+3{:5^hEZ<$
 local-user admin privilege level 15
 local-user admin service-type ssh http
 local-user zandona password irreversible-cipher $1c$$6!BWHL`=B$czFR<OP0&E/H(jHU-ev*K783EXoCA@6^v'(zM{h6$
 local-user zandona privilege level 15
 local-user zandona service-type ssh http
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif120
 description vlan120_POP12_BETANIA_GERENCIA
 l2 binding vsi VSI_120_CY_POP0-2_POP12_BE_MGNT
#
interface Vlanif121
 description VLAN_121_POP12_BETANIA_OLT1
 l2 binding vsi VSI_121_CY_POP0-2_POP12_BE_OLT1
#
interface Vlanif1103
 description VLAN1103_SW1POP12_SW1POP03_MPLS1
 mtu 9216
 ip address 10.244.103.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1110
 description VLAN1110_SW1POP12_SW1POP10_MPLS1
 mtu 9216
 ip address 10.244.110.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1112
 description VLAN1112_SW1POP00_SW1POP12_MPLS1
 mtu 9216
 ip address 10.244.112.2 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1122
 mtu 9216
 ip address 10.244.122.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
#
interface Vlanif1214
 description PTP_POP12__SW2POP14_OSPF
 mtu 9216
 ip address 10.244.114.9 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif3510
 description VLAN_3510_RN_CLIENTES_CYBER_NA_REDE_FENIX
 l2 binding vsi VSI3510_RN_FENIX_NA_CYBER_PPPOE
#
interface Vlanif3511
 description VLAN_3511_RN_CLIENTES_CYBER_NA_REDE_DA_FENIX
 l2 binding vsi VSI3511_RN_CYBER_NA_FENIX_PPPOE
#
interface Vlanif3512
 description VLAN_3512_TR_CYBER_FENIX_R_NEUTRA
 l2 binding vsi VSI3512_POP12_TR_CYBER_FENIX_RN
#
interface Vlanif3540
 description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
 l2 binding vsi VSI3540_RN_MEDIA_NA_CYBER_PPPOE
#
interface MEth0/0/1
 ip address 192.168.1.253 255.255.255.0
#
interface XGigabitEthernet0/0/1
 description PTP_SW1POP12_PX01OLT1POP12MGNT
 port link-type dot1q-tunnel
 port default vlan 120
#
interface XGigabitEthernet0/0/2
 description PTP_SW1POP12_PX02__OLT1POP12PX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 121 3104 3540
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/3
 description PTP_SW1POP12_PX03__SW1POP03_PX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1103
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/4
 shutdown
#
interface XGigabitEthernet0/0/5
 description PTP_SW1POP12_PX05__SW1FENIX_PXX
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 3510 to 3512
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/6
 description PTP_SW1POP12_PX06__SW1POP14_PX06
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1214
 jumboframe enable 12288
#
interface XGigabitEthernet0/0/7
 shutdown
#
interface XGigabitEthernet0/0/8
 shutdown
#
interface XGigabitEthernet0/0/9
 shutdown
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
interface 100GE0/0/1
 undo portswitch
 description PTP_SW1POP12_PQ01__SW1POP05_PQ01
 ip address 10.244.105.1 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
 jumboframe enable 12288
#
interface 100GE0/0/2
 description PTP_SW1POP12_CX02__SW1POP10_PQ02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1110
 jumboframe enable 12288
#
interface 100GE0/0/3
 shutdown
#
interface 100GE0/0/4
 shutdown
#
interface 100GE0/0/5
 description PTP_SW1POP12_PQ05__SW1POP14_PCX05
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1114
 jumboframe enable 12288
#
interface 100GE0/0/6
 description PTP_SW1POP12_PQ06__SW1POP00_PCX06
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1112
 jumboframe enable 12288
#
interface NULL0
#
interface LoopBack0
 ip address 10.244.189.12 255.255.255.255
#
ospf 1 router-id 10.244.189.12
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1103
 undo silent-interface Vlanif1112
 undo silent-interface Vlanif1110
 undo silent-interface 100GE0/0/1
 undo silent-interface Vlanif1122
 undo silent-interface Vlanif1214
 opaque-capability enable
 area 0.0.0.0
  network 10.244.103.0 0.0.0.3
  network 10.244.105.0 0.0.0.3 description 100GE0/0/1
  network 10.244.110.0 0.0.0.3
  network 10.244.112.0 0.0.0.3 description Vlanif1112
  network 10.244.114.8 0.0.0.3
  network 10.244.122.0 0.0.0.3 description Vlanif1122
  mpls-te enable
#
undo icmp name timestamp-request receive
#
snmp-agent
snmp-agent local-engineid 800007DB0394A4F948E330
snmp-agent community read cipher %^%#BlrZQ-#-7#03I+X)a/XQq".]2isE%.`;[f%>-flWE)4v0QE*G%:<A=A9G#0JBopn0RhcIV|&0ZXDi~LU%^%#
snmp-agent sys-info contact Cyberweb
snmp-agent sys-info location -29.8816587,-51.0865919
snmp-agent sys-info version v2c v3
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
stelnet server enable
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
user-interface con 0
 authentication-mode password
 set authentication password cipher $1c$@N&9.!:O%.$e*0>Ouzm3B=Zv7Npt8>V{d:-*8n[d~oWJ{!Z}$FM$
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
  smart-roam snr-margin high-level-margin 15 low-level-margin 10
 radio-2g-profile name default
 radio-5g-profile name default
 wids-spoof-profile name default
 wids-whitelist-profile name default
 wids-profile name default
 ap-system-profile name default
 port-link-profile name default
 wired-port-profile name default
 ap-group name default
  radio 2
   frequency 5g
 provision-ap
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
<SW1POP12_BETANIA_N>
```
