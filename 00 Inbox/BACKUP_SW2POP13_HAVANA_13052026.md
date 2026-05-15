```yaml
User Authentication
(admin@10.244.189.13) Password:

Info: The max number of VTY users is 10, and the number
      of current VTY users on line is 1.
      The current login time is 2026-05-13 08:34:38-03:00.
Info: Lastest accessed IP: 10.244.254.54  Time: 2026-05-12 14:26:48-03:00  Password will expire in: -

Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
<SW2POP13_HAVANA>displ
<SW2POP13_HAVANA>display curr
!Software Version V200R022C00SPC500
#
sysname SW2POP13_HAVANA
#
router id 10.244.189.13
#
vlan batch 21 130 to 131 133 1113 1118 1145 1213 1219 1265 1313
vlan batch 1365 3005 3104 to 3108 3510 3540 3907 3964
#
authentication-profile name default_authen_profile
authentication-profile name dot1x_authen_profile
authentication-profile name dot1xmac_authen_profile
authentication-profile name mac_authen_profile
authentication-profile name multi_authen_profile
authentication-profile name portal_authen_profile
#
set save-configuration delay 1
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
#
http server-source -i MEth0/0/1
#
clock timezone Brasilia minus 03:00:00
#
diffserv domain default
#
radius-server template default
#
bfd
#
mpls lsr-id 10.244.189.13
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
 pwsignal ldp
  vsi-id 131
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
 pwsignal ldp
  vsi-id 133
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3107_POP00_POP02_TR_POA_SEG static
 pwsignal ldp
  vsi-id 3107
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3907_POP02-42_TR1_ALIANCA static
 pwsignal ldp
  vsi-id 3907
  peer 10.244.188.2
  peer 10.244.189.12
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3540_POP05_TR_MEDIANET_PPOE static
 pwsignal ldp
  vsi-id 3540
  peer 10.244.188.5
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3510_POP12_BETA_POP13_C_HAV static
 pwsignal ldp
  vsi-id 3510
  peer 10.244.189.12
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
mpls ldp remote-peer 10.244.188.5
 remote-ip 10.244.188.5
#
mpls ldp remote-peer 10.244.189.0
 remote-ip 10.244.189.0
#
mpls ldp remote-peer 10.244.189.12
 remote-ip 10.244.189.12
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
vlan 130
 description VLAN_130_MGNT_OLT_POP13
vlan 131
 description VLAN_131_POP0-2_POP13_C_HAV_OLT1
vlan 133
 description VLAN_133_POP0-2_POP13_C_HAV_OLT1
vlan 1118
 description VLAN_1118_POP13_POP18
vlan 1313
 description VLAN_1313_OSPF_SW1
vlan 3005
 description VLAN_3005_TRANSP_L2_TELIUM
vlan 3107
 description VLAN_3107_POP00_POP02_TR_POA_SEG
vlan 3108
 description VLAN_3108_POA_MAIS_SEGURA
vlan 3510
 description VLAN_3510_POP12_BETANIA_POP13_C_HAVANA
vlan 3540
 description VLAN_3540_POP05_TR_MEDIANET_PPOE
vlan 3907
 description VLAN_3907_POP02-42_TR1_ALIANCA
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
 local-user admin password irreversible-cipher $1c$g_d3B5B]*A$zK*V5jx&k3K/Lj-;r;=Ma0A!"uS\UEap)HQc#"h4$
 local-user admin privilege level 15
 local-user admin service-type ssh http
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif131
 description VLAN_131_POP0-2_POP13_C_HAV_OLT1
 l2 binding vsi VSI_131_POP0-2_POP13_C_HAV_OLT1
#
interface Vlanif133
 description VLAN_133_POP0-2_POP13_C_HAV_OLT1
 shutdown
 l2 binding vsi VSI_133_POP0-2_POP13_C_HAV_OLT1
#
interface Vlanif1118
 description VLAN_1118_POP13_POP18_MPLS
 mtu 9216
 ip address 10.244.118.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1145
 description VLAN1145_SW2POP13_SW1POP45_MPLS
 mtu 9216
 ip address 10.244.145.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1213
 description VLAN1213_SW1POP02_SW2POP13_OSPF
 mtu 9216
 ip address 10.244.113.6 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1313
 description VLAN_1313_OSPF_SW1
 mtu 9216
 ip address 10.244.113.13 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif1365
 description VLAN_1365_POP13_POP65_MPLS
 mtu 9216
 ip address 10.244.165.9 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
interface Vlanif3107
 description VLAN_3107_POP00_POP02_TR_POA_SEG
 shutdown
 l2 binding vsi VSI_3107_POP00_POP02_TR_POA_SEG
#
interface Vlanif3510
 description VLAN_3510_POP12_BETA_POP13_C_HAV
 shutdown
 l2 binding vsi VSI_3510_POP12_BETA_POP13_C_HAV
#
interface Vlanif3540
 description VLAN_3540_POP05_TR_MEDIANET_PPOE
 shutdown
 l2 binding vsi VSI_3540_POP05_TR_MEDIANET_PPOE
#
interface Vlanif3907
 description VLAN_3907_POP02-42_TR1_ALIANCA
 shutdown
 l2 binding vsi VSI_3907_POP02-42_TR1_ALIANCA
#
interface MEth0/0/1
 ip address 192.168.1.253 255.255.255.0
#
interface XGigabitEthernet0/0/1
 shutdown
#
interface XGigabitEthernet0/0/2
 description PTP_SW1POP02_PX12_SW1POP13_PX02
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 21 130 1213 1219 3104 to 3106 3964
 undo ntdp enable
 undo ndp enable
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
#
interface XGigabitEthernet0/0/3
 description PTP_SW1POP13_PX03_SW1POP65_PX03
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 130 1219 1365 3005 3104 to 3105 3108 3964
 undo ntdp enable
 undo ndp enable
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
#
interface XGigabitEthernet0/0/4
 description PTP_SW1POP13_PX04_SW1POP18_PX04
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1118
 undo ntdp enable
 undo ndp enable
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
#
interface XGigabitEthernet0/0/5
 description PTP_SW2POP13_PX05_SW1POP45_PX01
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1145
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
#
interface XGigabitEthernet0/0/6
 description PTP_SW1POP13_PX04_SW2POP65_PX06
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1313
 undo ntdp enable
 undo ndp enable
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
#
interface XGigabitEthernet0/0/7
 description PTP_SW1POP13_PX7_LG_CONNECT_PXX
 port link-type trunk
 undo port trunk allow-pass vlan 1
 undo ntdp enable
 undo ndp enable
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
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
 description ACESSOS_ROTEADOR_WIFI_VLAN_131
 port link-type access
 port default vlan 131
 jumboframe enable 12288
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
 ip address 10.244.189.13 255.255.255.255
#
ospf 1 router-id 10.244.189.13
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1145
 undo silent-interface Vlanif1213
 undo silent-interface Vlanif1118
 undo silent-interface Vlanif1365
 undo silent-interface Vlanif1313
 opaque-capability enable
 area 0.0.0.0
  network 10.244.113.4 0.0.0.3 description Vlanif1213
  network 10.244.113.12 0.0.0.3 description Vlanif1313
  network 10.244.118.0 0.0.0.3 description Vlanif1118_POP13_POP18
  network 10.244.145.0 0.0.0.3 description Vlanif1145
  network 10.244.165.8 0.0.0.3 description Vlanif1365_POP13_POP65
  mpls-te enable
#
undo icmp name timestamp-request receive
#
snmp-agent
snmp-agent local-engineid 800007DB030CC6CCC68E10
snmp-agent community read cipher %^%#!TkD,#"sk*_\(3X"P)y#gj>X7tEiV%InMTOz(C#6gdaQQ)I4^T-q|q&o"Ay:q)@^L't2i3[4X!NYBWb%%^%#
snmp-agent sys-info contact CyberWeb
snmp-agent sys-info location -30.0059644,-51.1923515
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
ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256
ssh server dh-exchange min-len 2048
ssh server publickey rsa_sha2_512 rsa_sha2_256
#
user-interface con 0
 authentication-mode password
 set authentication password cipher $1c$1@0d)Ps=T2$qkw#M2iU6PX$N@5d$JMUY8<(0sc:lX#_+k$O]Tz6$
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
 protocol inbound all
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
<SW2POP13_HAVANA>
```
