
## SW1POP10_P_EUCALIPTOS
```undefined
vlan 1153
 description VLAN1153_SW1POP10_SW1POP53_MPLS

interface Vlanif1153
 description VLAN1153_SW1POP10_SW1POP53_OSPF
 mtu 9216
 ip address 10.244.153.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
#

interface XGigabitEthernet0/0/3
 description SW1POP10_PX03_SW1POP53_PX02
 port link-type trunk
 port trunk pvid vlan 1153
 undo port trunk allow-pass vlan 1
 stp bpdu-filter enable
 stp edged-port enable
 undo lldp enable
 jumboframe enable 12288
 storm-control broadcast min-rate 64 max-rate 2048
 storm-control multicast min-rate 64 max-rate 2048
 storm-control unicast min-rate 64 max-rate 2048
 storm-control interval 10
 storm-control enable trap
 storm-control enable log
#


ospf 1 router-id 10.244.189.10
 undo silent-interface Vlanif1153
 area 0.0.0.0
  network 10.244.153.4 0.0.0.3 description Vlanif1153
#




```


```kotlin
interface l3 L3_VLAN1153_MPLS
 lower-layer-if vlan 1153
 ipv4 address 10.244.153.2/30
!

interface loopback 0
 ipv4 address 10.244.188.53/32
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


snmp traps config-commit
snmp traps cpu-core
snmp traps cpu-load
snmp traps link-status
snmp traps login-success
snmp agent disabled
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

clock timezone BRA -3
hostname SW1POP53_TC_TELECOM
telnet-server enabled











mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1157_MPLS
  !
  neighbor targeted 10.244.188.2
  !
 !
!
mpls l2vpn
 vpls-group POP57_ALT_CAIX01_POP02_TELIUM
  vpn VSI_3153_POP02-11_TR_ALT_CAIX01
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3964
    !
   !
   bridge-domain
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/2
    !
    access-interface ten-gigabit-ethernet-1/1/4
    !
   !
  !
 !
!


```
