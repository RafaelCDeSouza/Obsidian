```kotlin
SW1POP14_LOMBA_GRANDE# show running-config
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
  interface l3-L3_VLAN1114_MPLS
  !
  interface l3-L3_VLAN2311_MPLS
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.1
  !
  neighbor targeted 10.244.188.2
  !
 !
!
mpls l2vpn
 vpls-group POP14_L_GRANDE_POP01_IX_SP
  vpn VSI_3057_POP01_POP14_TR_CDNTV
   vfi
    pw-type ethernet
    neighbor 10.244.188.1
     pw-id 3057
    !
   !
   bridge-domain
    dot1q 3057
    bridge-mtu 1600
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
 !
 vpls-group POP14_L_GRANDE_POP02_POA
  vpn VSI_3214_BGP2_POA_POP14_LOMBA
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3214
    !
   !
   bridge-domain
    dot1q 3214
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
 !
!
snmp system location -29.762990,-51.039995
snmp traps config-commit
snmp traps cpu-core
snmp traps cpu-load
snmp traps link-status
snmp traps login-success
snmp agent enabled
snmp agent version v2c
snmp agent version v3
snmp agent engine-id from-mac-address 18:81:ed:56:95:e3
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
 shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/5
 description PTP_SW1POP14_P05__CE14_SFP1
 no shutdown
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
 description PTP_SW1POP14_P08_SWXXXISTI_Pxx
 shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/1
 description PTP_SW1POP14_PX01_SW1POP59_PX01
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 description PTP_SW1POP14_PX02_SW1ISTI_PX16
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 description PTP_SW1POP14_PX03_SW1CDNTV_PX02
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 description PTP_SW1POP14_PX04_OLT1POP14_PXXX
 shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1114_MPLS
 lower-layer-if vlan 1114
 ipv4 address 10.244.114.2/30
!
interface l3 L3_VLAN2311_MPLS
 lower-layer-if vlan 2311
 ipv4 address 10.244.114.6/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.14/32
!
clock timezone BRAZIL -3
hostname SW1POP14_LOMBA_GRANDE
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
sntp server 200.189.40.8
vrf global
!
vrf mgmt
!
router ospf 1 vrf global
 router-id 10.244.188.14
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1114_MPLS
   cost 100
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface l3-L3_VLAN2311_MPLS
   cost 120
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
 vlan 140
  interface gigabit-ethernet-1/1/5
  !
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 141
  interface gigabit-ethernet-1/1/5
  !
  interface ten-gigabit-ethernet-1/1/1
  !
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 1114
  name VLAN_1114_SW1POP59_SW1POP14_OSPF
  interface ten-gigabit-ethernet-1/1/1
  !
 !
 vlan 2311
  name VLAN2311_SW1POP14_SW1POP00_TRVER
  interface ten-gigabit-ethernet-1/1/2
  !
 !
 vlan 3114
  interface gigabit-ethernet-1/1/5
  !
  interface ten-gigabit-ethernet-1/1/1
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


```
