```kotlin
(admin@10.244.188.13) Password:
Welcome to the DmOS CLI
admin connected from 10.244.19.90 using ssh on SW1POP13_COND_HAVANA
SW1POP13_COND_HAVANA# show runn
aaa authentication-order [ local ]
aaa user admin
 password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
 group admin
!
aaa user zandona
 password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
 group admin
!
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1113_MPLS1
  !
  interface l3-L3_VLAN1145_MPLS
  !
  interface l3-L3_VLAN1213_OSPF1
  !
  neighbor targeted 10.244.188.2
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.5
  !
  neighbor targeted 10.244.189.12
  !
 !
!
mpls l2vpn
 vpls-group POP00-02_POP13_C_HAVANA
  vpn VSI_131_POP0-2_POP13_C_HAV_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 131
    !
    neighbor 10.244.189.0
     pw-id 131
    !
   !
   bridge-domain
    dot1q 131
    bridge-mtu 9000
    access-interface lag-1
    !
   !
  !
  vpn VSI_133_POP0-2_POP13_C_HAV_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 133
    !
    neighbor 10.244.189.0
     pw-id 133
    !
   !
   bridge-domain
    dot1q 133
    bridge-mtu 9000
    access-interface lag-1
    !
   !
  !
  vpn VSI_3107_POP00_POP02_TR_POA_SEG
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3107
    !
   !
   bridge-domain
    dot1q 3107
    bridge-mtu 9000
    access-interface lag-1
    !
   !
  !
  vpn VSI_3907_POP02-42_TR1_ALIANCA
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3907
    !
   !
   bridge-domain
    dot1q 3907
    bridge-mtu 9000
    access-interface lag-1
    !
   !
  !
 !
 vpls-group POP12_BETANIA_POP13_C_HAVANA
  vpn 3510
   vfi
    pw-type ethernet
    neighbor 10.244.189.12
     pw-id 3510
    !
   !
   bridge-domain
    dot1q 3510
    bridge-mtu 9000
    access-interface lag-1
    !
   !
  !
 !
 vpls-group POP13_C_HAVANA_POP05_M_RINCAO
  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
   vfi
    pw-type ethernet
    neighbor 10.244.188.5
     pw-id 3540
    !
   !
   bridge-domain
    dot1q 3540
    bridge-mtu 9000
    access-interface lag-1
    !
   !
  !
 !
!
snmp system location -29.811147,-51.152546
snmp traps config-commit
snmp traps cpu-core
snmp traps cpu-load
snmp traps link-status
snmp traps login-success
snmp agent enabled
snmp agent version v2c
snmp agent version v3
snmp community CyberWeb
 sec-name CyberWeb
!
snmp community public
 sec-name public
!
snmp notify std_v1_trap
 tag std_v1_trap
!
snmp notify std_v2_inform
 tag std_v2_inform
 type inform
!
snmp notify std_v2_trap
 tag std_v2_trap
!
snmp notify std_v3_inform
 tag std_v3_inform
 type inform
!
snmp notify std_v3_trap
 tag std_v3_trap
!
snmp vacm group CyberWeb
 member CyberWeb
  sec-model [ v2c ]
 !
 access "" v2c no-auth-no-priv
  read-view root
  notify-view root
 !
!
snmp vacm group public
 member public
  sec-model [ v2c ]
 !
 access "" v2c no-auth-no-priv
  read-view root
  write-view root
  notify-view root
 !
!
snmp vacm view root
 subtree 1.3
  included
 !
!
interface gigabit-ethernet 1/1/1
 description SW1POP13_P01__OLT1POP13_P_MGNT
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/2
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/3
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/4
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/5
 description LAG1_PG05-06__OLT1POP13_LAG1_P00-01
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/6
 description LAG1_PG05-06__OLT1POP13_LAG1_P00-01
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/7
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/8
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/1
 description PTP_SW1POP13_PX01_SW1POP45_PX01
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 description PTP_SW1POP02_PX12_SW1POP13_PX02
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 description PTP_SW1POP13_PX03_SW1POP65_PX03
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 description PTP_SW1POP13_PX04_SW1POP18_PX04
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1113_MPLS1
 lower-layer-if vlan 1113
 ipv4 address 10.244.113.2/30
!
interface l3 L3_VLAN1145_MPLS
 lower-layer-if vlan 1145
 ipv4 address 10.244.145.1/30
!
interface l3 L3_VLAN1213_OSPF1
 lower-layer-if vlan 1213
 ipv4 address 10.244.113.6/30
!
interface l3 L3_VLAN1265_OSPF1
 lower-layer-if vlan 1265
 ipv4 address 10.244.165.5/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.13/32
!
clock timezone BRA -3
hostname SW1POP13_COND_HAVANA
telnet-server enabled
oam
 efm
  interface gigabit-ethernet-1/1/1
   mode passive
  !
  interface gigabit-ethernet-1/1/2
   mode passive
  !
  interface gigabit-ethernet-1/1/3
   mode passive
  !
  interface gigabit-ethernet-1/1/4
   mode passive
  !
  interface gigabit-ethernet-1/1/5
   mode passive
  !
  interface gigabit-ethernet-1/1/6
   mode passive
  !
  interface gigabit-ethernet-1/1/7
   mode passive
  !
  interface gigabit-ethernet-1/1/8
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/1
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/2
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/3
   mode passive
  !
  interface ten-gigabit-ethernet-1/1/4
   mode passive
  !
 !
!
loopback-detection
 destination-address alternative
!
mac-address-table
 aging-time 600
!
layer2-control-protocol
 tunnel-mac datacom
 tunnel-priority 7
!
switchport
 interface gigabit-ethernet-1/1/1
  native-vlan
   vlan-id 130
  !
 !
!
vrf global
!
vrf mgmt
!
router ospf 1 vrf global
 router-id 10.244.188.13
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1113_MPLS1
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface l3-L3_VLAN1145_MPLS
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface l3-L3_VLAN1213_OSPF1
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface l3-L3_VLAN1265_OSPF1
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface loopback-0
  !
 !
!
dot1q
 vlan 21,3106
  interface lag-1
  !
  interface ten-gigabit-ethernet-1/1/2
  !
 !
 vlan 130
  interface gigabit-ethernet-1/1/1
    untagged
  !
  interface lag-1
  !
  interface ten-gigabit-ethernet-1/1/2
  !
  interface ten-gigabit-ethernet-1/1/3
  !
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 1113
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 1118
  interface ten-gigabit-ethernet-1/1/2
  !
  interface ten-gigabit-ethernet-1/1/3
  !
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 1145
  name VLAN1145_SW1POP13_SW1POP45_MPLS
  interface ten-gigabit-ethernet-1/1/1
  !
 !
 vlan 1213
  name VLAN1213_SW1POP02_SW1POP13_OSPF
  interface ten-gigabit-ethernet-1/1/2
  !
 !
 vlan 1219
  interface ten-gigabit-ethernet-1/1/2
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 1265
  name VLAN1265_SW1POP13_SW1POP65_OSPF
  interface ten-gigabit-ethernet-1/1/1
  !
 !
 vlan 1365
  name VLAN1365_SW2POP65_POP13_SW1POP02
  interface ten-gigabit-ethernet-1/1/2
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 3005
  name VLAN_3005_TRANSP_L2_TELIUM
  interface lag-1
  !
  interface ten-gigabit-ethernet-1/1/3
  !
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 3104-3105,3964
  interface lag-1
  !
  interface ten-gigabit-ethernet-1/1/2
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 3108
  name VLAN_3108_POA_MAIS_SEGURA
  interface lag-1
  !
  interface ten-gigabit-ethernet-1/1/3
  !
  interface ten-gigabit-ethernet-1/1/4
  !
 !
!
link-aggregation
 interface lag 1
  description SW1POP13_LAG1_PG05-06__OLT1POP13_LAG1_P00-01
  mode active
  interface gigabit-ethernet-1/1/5
  !
  interface gigabit-ethernet-1/1/6
  !
 !
!
license mpls enabled
license mpls key ***
remote-devices
 interface gigabit-ethernet-1/1/1
 !
 interface gigabit-ethernet-1/1/2
 !
 interface gigabit-ethernet-1/1/3
 !
 interface gigabit-ethernet-1/1/4
 !
 interface gigabit-ethernet-1/1/5
 !
 interface gigabit-ethernet-1/1/6
 !
 interface gigabit-ethernet-1/1/7
 !
 interface gigabit-ethernet-1/1/8
 !
 interface ten-gigabit-ethernet-1/1/1
 !
 interface ten-gigabit-ethernet-1/1/2
 !
 interface ten-gigabit-ethernet-1/1/3
 !
 interface ten-gigabit-ethernet-1/1/4
 !
!
SW1POP13_COND_HAVANA#
```
