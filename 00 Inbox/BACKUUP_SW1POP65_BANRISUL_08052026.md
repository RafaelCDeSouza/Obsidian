```kotlin
SW1POP65_BANRISUL# show running-config
aaa authentication-order [ local ]
aaa user admin
 password $1$vi6tc0JW$dLFIUxR3aTPT.54bD.OS20
 group admin
!
aaa user zandona
 password $1$UCGP5kyg$JdQBmNANsKaUYTi9fuJlc/
 group admin
!
dot1q
 vlan 1165
  interface ten-gigabit-ethernet-1/1/2
  !
 !
 vlan 1265
  interface ten-gigabit-ethernet-1/1/1
  !
  interface ten-gigabit-ethernet-1/1/2
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 1465
  interface ten-gigabit-ethernet-1/1/1
  !
 !
 vlan 3165,3265
  interface ten-gigabit-ethernet-1/1/2
  !
  interface ten-gigabit-ethernet-1/1/4
  !
 !
!
snmp system location -29.8218716,-51.1606335
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
 !
!
snmp vacm group public
 member public
  sec-model [ v2c ]
 !
 access "" v2c no-auth-no-priv
  read-view root
  notify-view root
 !
!
snmp vacm view root
 subtree 1.3
  included
 !
!
interface gigabit-ethernet 1/1/1
 description PTP_SW1POP65_P01_SWIBANRI_PXX
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
 description SW1POP25_P04_OLT1POP25_P04_JUMPER
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/5
 description SW1POP25_P05_OLT1POP25_P01
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/6
 description SW1POP25_P06_OLT1POP25_P02
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
 shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 description PTP_SW1POP65_PX02_SW2POP65_PX02
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 description PTP_SW1POP65_PX04_SWIBANRI_PXXX
 shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 vlanif1165
 lower-layer-if vlan 1165
 ipv4 address 10.244.165.2/30
!
interface l3 vlanif1265
 lower-layer-if vlan 1265
 ipv4 address 10.244.165.6/30
!
interface l3 vlanif1465
 lower-layer-if vlan 1465
 ipv4 address 10.244.165.14/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.65/32
!
clock timezone BRA -3
hostname SW1POP65_BANRISUL
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
sntp client
sntp server 200.160.0.8
vrf global
!
vrf mgmt
!
router ospf 1 vrf global
 router-id 10.244.188.65
 redistribute static
 !
 area 0.0.0.0
  interface l3-vlanif1165
   cost 10
   network-type point-to-point
  !
  interface l3-vlanif1265
   cost 10
   network-type point-to-point
  !
  interface l3-vlanif1465
   cost 10
   network-type point-to-point
  !
  interface loopback-0
  !
 !
!
license mpls disabled
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
```
