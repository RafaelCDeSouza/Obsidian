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
