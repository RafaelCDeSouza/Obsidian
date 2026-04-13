```kotlin
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1163_MPLS
  !
  neighbor targeted 10.244.188.63
  !
 !
!

snmp community CyberWeb
 sec-name CyberWeb
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

hostname SW1POP63_VILLELA


interface l3 L3_VLAN1163_MPLS
 lower-layer-if vlan 1163
 ipv4 address 10.244.163.2/30
!

interface loopback 0
 ipv4 address 10.244.188.63/32
!

clock timezone BRA -3



router ospf 1 vrf global
 router-id 10.244.188.63
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1163_MPLS
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
 vlan 1163
  name VL_1157_SW1POP19_SW1POP63_MPLS
  interface ten-gigabit-ethernet-1/1/2
  !
 !
!
```
