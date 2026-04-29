```kotlin
interface l3 L3_VLAN1123_MPLS
 lower-layer-if vlan 1123
 ipv4 address 10.244.123.2/30
!
interface l3 L3_VLAN1223_MPLS
 lower-layer-if vlan 1223
 ipv4 address 10.244.123.6/30
!
interface loopback 0
 ipv4 address 10.244.188.23/32
!
interface l3 L3_VLAN1222_MPLS
 lower-layer-if vlan 1222
 ipv4 address 10.244.122.5/30
!
interface l3 L3_VLAN1225_MPLS
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
  interface ten-gigabit-ethernet-1/1/9
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


3001
3256




```
