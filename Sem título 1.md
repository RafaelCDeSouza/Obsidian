```kotlin
show
aaa authentication-order [ local ]
aaa user admin
 password $1$V0EY5VdI$NPIyOwDNIn.J1KhXLqegR1
 group admin
!
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1153_MPLS
  !
  neighbor targeted 10.244.188.0
  !
  neighbor targeted 10.244.188.2
  !
 !
!
mpls l2vpn
!
snmp traps config-commit
snmp traps cpu-core
snmp traps cpu-load
snmp traps link-status
snmp traps login-success
snmp agent disabled
snmp agent version v2c
snmp agent version v3
snmp agent engine-id from-mac-address 18:81:ed:7d:c2:87
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
 shutdown
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
 shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
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
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1153_MPLS
 lower-layer-if vlan 1153
 ipv4 address 10.244.153.2/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.53/32
!
hostname DM4370
telnet-server disabled
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
 router-id 10.244.188.53
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1153_MPLS
   cost 100
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
 vlan 1153
  name VL_1153_SW1POP02_SW1POP53_MPLS
  interface ten-gigabit-ethernet-1/1/2
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
DM4370(config)#

```
