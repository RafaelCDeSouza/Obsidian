```kotlin
login as: admin
Keyboard-interactive authentication prompts from server:
| Password:
End of keyboard-interactive prompts from server
Welcome to the DmOS CLI
admin connected from 38.250.225.25 using ssh on SW1POP19_HIPICA_RESTINGA
SW1POP19_HIPICA_RESTINGA# display-
--------------------------^
syntax error: ambiguous command
Possible alternatives starting with display-:
  display-defaults - Show default values when showing the configuration
  display-level    - Configure show command display level
SW1POP19_HIPICA_RESTINGA# show running-config
aaa authentication-order [ local ]
aaa user admin
 password $1$W/XIUP9D$R7UOmqkaCvAkRN.4SHNcz/
 group admin
!
aaa user zandona
 password $1$8a1VprL3$Tc9E2MZ6cN43eWyeWa.T6.
 group admin
!
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1119_MPLS
  !
  interface l3-L3_VLAN1319_MPLS
  !
  neighbor targeted 10.244.188.2
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.62
  !
  neighbor targeted 10.244.189.15
  !
aaa authentication-order [ local ]
aaa user admin
 password $1$W/XIUP9D$R7UOmqkaCvAkRN.4SHNcz/
 group admin
!
aaa user zandona
 password $1$8a1VprL3$Tc9E2MZ6cN43eWyeWa.T6.
 group admin
!
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1119_MPLS
  !
  interface l3-L3_VLAN1319_MPLS
  !
  neighbor targeted 10.244.188.2
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.62
  !
  neighbor targeted 10.244.189.15
  !
  neighbor targeted 10.244.188.59
  !
 !
!
mpls l2vpn
 vpls-group POP19_HIPICA
  vpn VSI190_CY_POP0-2_POP19_HIP_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 190
    !
    neighbor 10.244.189.0
     pw-id 190
    !
   !
   bridge-domain
    dot1q 190
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI191_CY_POP0-2_POP19_HIP_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 191
    !
    neighbor 10.244.189.0
     pw-id 191
    !
   !
   bridge-domain
    dot1q 191
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI193_CY_POP0-2_POP19_HIP_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 193
    !
    neighbor 10.244.189.0
     pw-id 193
    !
   !
   bridge-domain
    dot1q 193
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI194_POP0-2_POP19_HIPIC_RSSUL
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 194
    !
    neighbor 10.244.189.0
     pw-id 194
    !
   !
   bridge-domain
    dot1q 194
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
  vpn VSI_3103_POP00_POP02_TR_CA_CEIC
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3103
    !
   !
   bridge-domain
    dot1q 3103
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_3105_POP00_POP02_TR_CAM_SSP
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3105
    !
   !
   bridge-domain
    dot1q 3105
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_3107_POP00_POA_MAIS_SEG
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3107
    !
   !
   bridge-domain
    dot1q 3107
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_3163_POP00_POP63_VILLELA
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3163
    !
   !
   bridge-domain
    dot1q 3163
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_3263_POP0-2_POP63_VILLELA
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3263
    !
   !
   bridge-domain
    dot1q 3263
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_3964_POP02-11_TR_ALT_CAIX01
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3964
    !
   !
   bridge-domain
    dot1q 3964
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_40_SC_POP0-2_POP19_HIP_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 40
    !
    neighbor 10.244.189.0
     pw-id 40
    !
   !
   bridge-domain
    dot1q 40
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_41_SC_POP0-2_POP04_HIP_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 41
    !
    neighbor 10.244.189.0
     pw-id 41
    !
   !
   bridge-domain
    dot1q 41
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
 !
 vpls-group POP59_INFRAWEB_POP19_HIPICA
  vpn VSI_3580_RN_INFRAWEB_NA_CYBER
   vfi
    pw-type ethernet
    neighbor 10.244.188.59
     pw-id 3580
    !
   !
   bridge-domain
    dot1q 3580
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
   !
  !
 !
 vpls-group POP62_EQUATORIAL
  vpn VSI_3341_POP62_TR_EQUAT_SUBSTA
   vfi
    pw-type ethernet
    neighbor 10.244.188.62
     pw-id 3341
    !
    neighbor 10.244.189.0
     pw-id 3341
    !
   !
   bridge-domain
    dot1q 3341
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
 !
!
snmp system location -30.158638,-51.169596
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
 no negotiation
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
 description SW1POP19_PX01_OLT1POP19_PX01
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 description PTP_SW1POP19_PX02_SW1LP_VERMELHO_PX01
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 description PTP_SW1POP19_PX03_SW2POP65_PX04
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1119_MPLS
 lower-layer-if vlan 1119
 ipv4 address 10.244.119.2/30
!
interface l3 L3_VLAN1319_MPLS
 lower-layer-if vlan 1319
 ipv4 address 10.244.119.10/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.19/32
!
clock timezone BRASIL -3
hostname SW1POP19_HIPICA_RESTINGA
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
 router-id 10.244.188.19
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1119_MPLS
   cost 30
   network-type point-to-point
  !
  interface l3-L3_VLAN1319_MPLS
   cost 20
   network-type point-to-point
  !
  interface loopback-0
  !
 !
!
dot1q
 vlan 1119
  name VLAN1119_SW1POP19_SW1POP21_TR_LP
  interface ten-gigabit-ethernet-1/1/2
  !
 !
 vlan 1319
  name VLAN_1319_POP65_POP19_MPLS
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
SW1POP19_HIPICA_RESTINGA#

```
