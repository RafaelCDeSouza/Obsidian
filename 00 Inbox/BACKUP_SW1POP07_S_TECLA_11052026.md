```kotlin
SW1POP07_S_TECLA# show running-config
aaa authentication-order [ local ]
aaa user admin
 password $1$y4d/Zk9B$JmW5Z7QjrbPIyp6MQMHjR.
 group admin
!
aaa user zandona
 password $1$jz7WWk7I$HdLa3S4Net3zkOzaEQtB51
 group admin
!
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1107_OSPF1
  !
  interface l3-L3_VLAN1207_OSPF1
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.0
  !
  neighbor targeted 10.244.188.2
  !
 !
!
mpls l2vpn
 vpls-group POP07_S_TECLA
  vpn VSI_60_CY_NOC0_POP06_B_VIS_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 60
    !
    neighbor 10.244.189.0
     pw-id 60
    !
   !
   bridge-domain
    dot1q 60
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
  vpn VSI_61_CY_NOC0_POP06_B_VIS_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 61
    !
    neighbor 10.244.189.0
     pw-id 61
    !
   !
   bridge-domain
    dot1q 61
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
  vpn VSI_70_CY_NOC0_POP07_S_TEC_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 70
    !
    neighbor 10.244.189.0
     pw-id 70
    !
   !
   bridge-domain
    dot1q 70
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_71_CY_NOC0_POP07_S_TEC_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 71
    !
    neighbor 10.244.189.0
     pw-id 71
    !
   !
   bridge-domain
    dot1q 71
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_73_CY_POP0-2_POP07_STE_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 73
    !
    neighbor 10.244.189.0
     pw-id 73
    !
   !
   bridge-domain
    dot1q 73
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
 !
!
snmp system location -29.8271388,-51.0251659
snmp traps config-commit
snmp traps cpu-core
snmp traps cpu-load
snmp traps link-status
snmp traps login-success
snmp agent enabled
snmp agent version v2c
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
 shutdown
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
 description PTP_SW1POP01_P05_OLT1_POP07_MGNT
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/5
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/6
 shutdown
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
 description SW1POP07_PX01_OLT1_POP07_XETH1
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 description SW1POP07_PX02_OLT1_POP06_PXXX
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 description SW1POP07_PX03_SW1POP09_PX03
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 description PTP_SW1POP07_PX04_SW1POP03_PX02
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1107_OSPF1
 lower-layer-if vlan 1107
 ipv4 address 10.244.107.2/30
!
interface l3 L3_VLAN1207_OSPF1
 lower-layer-if vlan 1207
 ipv4 address 10.244.107.6/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.7/32
!
clock timezone BRA -3
hostname SW1POP07_S_TECLA
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
vrf global
!
vrf mgmt
!
router ospf 1 vrf global
 router-id 10.244.188.7
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1107_OSPF1
   network-type point-to-point
  !
  interface l3-L3_VLAN1207_OSPF1
   network-type point-to-point
  !
  interface loopback-0
  !
 !
!
dot1q
 vlan 1107
  name VLAN1107_SW1POP03_SW1POP07_MPLS1
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 1207
  name VL1107_SW1POP10-09_S1POP07_MPLS1
  interface ten-gigabit-ethernet-1/1/3
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
SW1POP07_S_TECLA#
```
