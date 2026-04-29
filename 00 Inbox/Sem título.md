```kotlin
interface l3 L3_VLAN1123_MPLS
 lower-layer-if vlan 1123
 ipv4 address 10.244.123.2/30
!
interface loopback 0
 ipv4 address 10.244.188.23/32
!
interface l3 L3_VLAN1222_MPLS
 lower-layer-if vlan 1222
 ipv4 address 10.244.122.5/30
!
interface l3 VLAN1225_SW1POP15_SW1POP25_MPLS
 lower-layer-if vlan 1225
 ipv4 address 10.244.125.5/30
!

```


```kotlin
interface ten-gigabit-ethernet 1/1/1
 no shutdown
 description PTP_SW1POP23_PX01_OLT1POP23_PX01
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 no shutdown
 description PTP_SW1POP15_PX02_SW1POP25_PX02
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 no shutdown
 description PTP_SW1POP15_PX09_SW1POP44_PX09
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!

```

```kotlin
dot1q
 vlan 30
  name VLAN_30_POP03_M_FOLRES_MGNT
  interface ten-gigabit-ethernet-1/1/1
  !
 !
 vlan 230
  name VLAN_230_POP23_ESTEIO_GERENCIA
  interface ten-gigabit-ethernet-1/1/1
  !
 !
 vlan 231
  name VLAN_231_POP23_ESTEIO_OLT1
  interface ten-gigabit-ethernet-1/1/1
  !
 !
!
vlan 233
  name VLAN_233_POP23_ESTEIO_OLT1
  interface ten-gigabit-ethernet-1/1/1
  !
 !
!
vlan 1123
  name VLAN1115_SW1POP44_SW1POP15_MPLS
  interface ten-gigabit-ethernet-1/1/3
  !
 !
!
vlan 1222
  name VLAN1115_SW1POP44_SW1POP15_MPLS
  interface ten-gigabit-ethernet-1/1/2
  !
 !
!
vlan 1225
  name VLAN1115_SW1POP44_SW1POP15_MPLS
  interface ten-gigabit-ethernet-1/1/2
  !
 !
!
vlan 3001
  name VLAN_3001_DEDICADO_NEUGEBAUER
  interface ten-gigabit-ethernet-1/1/1
  !
 !
!
vlan 3256
  name VLAN_3256_TRANSP_TELIUM_DIVERSOS
  interface ten-gigabit-ethernet-1/1/1
  !
 !
!
```

```go
router ospf 1 vrf global
 router-id 10.244.188.123
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1123_MPLS
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
```

```lua
clock timezone BRA -3
hostname SW1POP23_ESTEIO
snmp community CyberWeb
 sec-name CyberWeb
!
```

```kotlin
interface gigabit-ethernet 1/1/1
 shutdown
!
interface gigabit-ethernet 1/1/2
 shutdown
!
interface gigabit-ethernet 1/1/3
 shutdown
!
interface gigabit-ethernet 1/1/4
 shutdown
!
interface gigabit-ethernet 1/1/5
 shutdown
!
interface gigabit-ethernet 1/1/6
 shutdown
!
interface gigabit-ethernet 1/1/7
 shutdown
!
interface gigabit-ethernet 1/1/8
 shutdown
!
interface ten-gigabit-ethernet 1/1/4
 shutdown
!
```










```kotlin
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1123_MPLS
  !
  neighbor targeted 10.244.189.0
  neighbor targeted 10.244.188.19
  neighbor targeted 10.244.188.20
  neighbor targeted 10.244.189.11
  neighbor targeted 10.244.188.2 
  !
```

```kotlin
mpls l2vpn
 vpls-group VSI_230_POP23_OLT
  vpn VSI_230_POP0-2_POP23_EST_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 230
    !
   !
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 230
    !
   !   
   bridge-domain
    dot1q 230
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !
  vpn VSI_231_POP0-2_POP23_EST_OLT
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 231
    !
   !
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 231
    !
   !   
   bridge-domain
    dot1q 231
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !   
  !
  vpn VSI_233_POP0-2_POP23_EST_OLT
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 233
    !
   !
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 233
    !
   !   
   bridge-domain
    dot1q 233
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !   
  !  
 !
 
 vpls-group VSI_3256_SC_POP02_TR_CL_TELIUM
  vpn VSI_3256_SC_POP02_TR_CL_TELIUM
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3256
    !
   !
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3256
    !
   !   
   bridge-domain
    dot1q 3256
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !
vpls-group VSI_3001_POP00_POP23_NEUGEBAUER
  vpn VSI_3001_POP00_POP23_NEUGEBAUER
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3001
    !
   !
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3001
    !
   !   
   bridge-domain
    dot1q 3001
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !
vpls-group VSI_30_CY_POP0-2_POP03_M_F_MGNT
  vpn VSI_30_CY_POP0-2_POP03_M_F_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 30
    !
   ! 
   bridge-domain
    dot1q 30
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !
 !
```
