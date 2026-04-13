```kotlin
(admin@10.244.188.25) Password:
Welcome to the DmOS CLI
admin connected from 10.244.19.90 using ssh on SW1POP25_POWER
SW1POP25_POWER# show running-config
aaa authentication-order [ local ]
aaa user admin
 password $1$SruTaKhs$I.GFmLUqXX01atDBHd7rT/
 group admin
!
session paginate true
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1125_MPLS1
  !
  interface l3-L3_VLAN1225_MPLS1
  !
  neighbor targeted 10.244.188.0
  !
  neighbor targeted 10.244.188.2
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.18
  !
  neighbor targeted 10.244.188.5
  !
  neighbor targeted 10.244.188.21
  !
  neighbor targeted 10.244.188.8
  !
  neighbor targeted 10.244.188.20
  !
  neighbor targeted 10.244.188.27
  !
 !
!
mpls l2vpn
 vpls-group POP02_POA_POP25_POWERNET
  vpn VSI_3225_BGP2_POP25_POWERNET
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3225
    !
   !
   bridge-domain
    dot1q 3225
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_3256_POP25_POP02_TR_TELIUM
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3256
    !
   !
   bridge-domain
    dot1q 3256
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
 !
 vpls-group POP25_POWERNET_POP00
  vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 250
    !
   !
   bridge-domain
    dot1q 250
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
    access-interface gigabit-ethernet-1/1/2
    !
    access-interface gigabit-ethernet-1/1/3
    !
    access-interface ten-gigabit-ethernet-1/1/1
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
  vpn VSI_251_CY_POP0-2_POP25_CO_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 251
    !
   !
   bridge-domain
    dot1q 251
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
    access-interface ten-gigabit-ethernet-1/1/1
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
  vpn VSI_253_CY_POP0-2_POP25_PO_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 253
    !
   !
   bridge-domain
    dot1q 253
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
  vpn VSI_258_CY_POP0-2_POP25_PO_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 258
    !
    neighbor 10.244.189.0
     pw-id 258
    !
   !
   bridge-domain
    dot1q 258
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_3101_POP00_TRANS_CAM_SAPUCA
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3101
    !
   !
   bridge-domain
    dot1q 3101
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_3102_POP00_TRANS_CAM_SAPUCA
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3102
    !
   !
   bridge-domain
    dot1q 3102
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/6
    !
   !
  !
  vpn VSI_3125_SHO_POP00_POP25_POWERN
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3125
    !
   !
   bridge-domain
    dot1q 3125
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
 !
 vpls-group POP25_POWERNET_POP05_M_RINCAO
  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
   vfi
    pw-type ethernet
    neighbor 10.244.188.5
     pw-id 3540
    !
   !
   bridge-domain
    dot1q 3540
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/6
    !
   !
  !
 !
 vpls-group POP25_POWERNET_REDE_NEUTRA
  vpn VSI_3560_TRANS_PPPOE_POWERNET
   vfi
    pw-type ethernet
    neighbor 10.244.188.8
     pw-id 3560
    !
    neighbor 10.244.188.20
     pw-id 3560
    !
    neighbor 10.244.188.27
     pw-id 3560
    !
    neighbor 10.244.189.0
     pw-id 3560
    !
   !
   bridge-domain
    dot1q 3560
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
 !
 vpls-group POP25_POWER_POP21_PRE_SAPUCAIA
  vpn VSI_902_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 902
    !
   !
   bridge-domain
    dot1q 902
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_903_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 903
    !
   !
   bridge-domain
    dot1q 903
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_904_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 904
    !
   !
   bridge-domain
    dot1q 904
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_918_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 918
    !
   !
   bridge-domain
    dot1q 918
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_925_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 925
    !
   !
   bridge-domain
    dot1q 925
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_929_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 929
    !
   !
   bridge-domain
    dot1q 929
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_930_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 930
    !
   !
   bridge-domain
    dot1q 930
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_931_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 931
    !
   !
   bridge-domain
    dot1q 931
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_935_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 935
    !
   !
   bridge-domain
    dot1q 935
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_944_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 944
    !
   !
   bridge-domain
    dot1q 944
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_951_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 951
    !
   !
   bridge-domain
    dot1q 951
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_955_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 955
    !
   !
   bridge-domain
    dot1q 955
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_961_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 961
    !
   !
   bridge-domain
    dot1q 961
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_964_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 964
    !
   !
   bridge-domain
    dot1q 964
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_967_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 967
    !
   !
   bridge-domain
    dot1q 967
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_971_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 971
    !
   !
   bridge-domain
    dot1q 971
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_976_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 976
    !
   !
   bridge-domain
    dot1q 976
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_978_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 978
    !
   !
   bridge-domain
    dot1q 978
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_979_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 979
    !
   !
   bridge-domain
    dot1q 979
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_981_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 981
    !
   !
   bridge-domain
    dot1q 981
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_987_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 987
    !
   !
   bridge-domain
    dot1q 987
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_988_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 988
    !
   !
   bridge-domain
    dot1q 988
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_989_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 989
    !
   !
   bridge-domain
    dot1q 989
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_991_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 991
    !
   !
   bridge-domain
    dot1q 991
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_992_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 992
    !
   !
   bridge-domain
    dot1q 992
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_994_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 994
    !
   !
   bridge-domain
    dot1q 994
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_999_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 999
    !
   !
   bridge-domain
    dot1q 999
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
 !
 vpls-group POPPOP25_POWERNET_POP00
 !
!
snmp system location -29.881604,-51.086573
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
 description PTP_SW1POP25_P01_OLT1POP25_MGNT
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/2
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/3
 description LOOPING_DGT_PORTA4
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/4
 description LOOPING_DGT_PORTA3
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/5
 description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/6
 description PTP_SW1POP25_P06__OLT1_P05
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/7
 description PTP_SW1POP25_P07_CE25_SFP-SFPPLUS1
 shutdown
 no negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/8
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/1
 description PTP_SW1POP25_PX01_OLT1POP25_PX01
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 description PTP_SW1POP25_PX02_SW1POP15_PX02
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 description PTP_SW1POP25_PX03_CE25_POWER_PX3_OLT2
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 description PTP_SW1POP25_PX04_SW1POP21_PX03
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1125_MPLS1
 lower-layer-if vlan 1125
 ipv4 address 10.244.125.2/30
!
interface l3 L3_VLAN1225_MPLS1
 lower-layer-if vlan 1225
 ipv4 address 10.244.125.6/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.125/32
!
interface loopback 1
 ipv4 address 10.244.188.25/32
!
clock timezone BRA -3
hostname SW1POP25_POWER
telnet-server enabled
telnet-server max-connections 2
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
 router-id 10.244.188.125
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1125_MPLS1
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface l3-L3_VLAN1225_MPLS1
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface loopback-0
  !
  interface loopback-1
  !
 !
!
dot1q
 vlan 40-41
  interface ten-gigabit-ethernet-1/1/1
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 250
  interface gigabit-ethernet-1/1/8
  !
 !
 vlan 252
  interface gigabit-ethernet-1/1/7
  !
  interface gigabit-ethernet-1/1/8
  !
  interface ten-gigabit-ethernet-1/1/1
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 1125
  name VLAN_1125_SW1POP21_SW1POP25_MPLS
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 1225
  name VLAN_1225_SW1POP25_SW1POP15_MPLS
  interface ten-gigabit-ethernet-1/1/2
  !
 !
!
license mpls enabled
license mpls key ***
SW1POP25_POWER# mpl
                ^
% Invalid input detected at '^' marker.
SW1POP25_POWER# conf
Entering configuration mode terminal
SW1POP25_POWER(config)# mpls l2vpn
SW1POP25_POWER(config-l2vpn)#  vpls-group POP25_POWERNET_POP00
SW1POP25_POWER(config-vpls-group-POP25_POWERNET_POP00)#   vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT)# bri
SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# undo     access-interface ten-gigabit-ethernet-1/1/1
---------------------------------------------------------------^
syntax error: unknown command
SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# no     access-interface ten-gigabit-ethernet-1/1/1
SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# comm
Commit complete.
SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# top
SW1POP25_POWER(config)# diapl
                        ^
% Invalid input detected at '^' marker.
SW1POP25_POWER(config)# show run
-----------------------------^
syntax error: element does not exist
SW1POP25_POWER(config)# show cu
-----------------------------^
syntax error: element does not exist
SW1POP25_POWER(config)# show runn
                             ^
% Invalid input detected at '^' marker.
SW1POP25_POWER(config)# show
aaa authentication-order [ local ]
aaa user admin
 password $1$SruTaKhs$I.GFmLUqXX01atDBHd7rT/
 group admin
!
session paginate true
mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1125_MPLS1
  !
  interface l3-L3_VLAN1225_MPLS1
  !
  neighbor targeted 10.244.188.0
  !
  neighbor targeted 10.244.188.2
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.18
  !
  neighbor targeted 10.244.188.5
  !
  neighbor targeted 10.244.188.21
  !
  neighbor targeted 10.244.188.8
  !
  neighbor targeted 10.244.188.20
  !
  neighbor targeted 10.244.188.27
  !
 !
!
mpls l2vpn
 vpls-group POP02_POA_POP25_POWERNET
  vpn VSI_3225_BGP2_POP25_POWERNET
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3225
    !
   !
   bridge-domain
    dot1q 3225
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
   !
  !
  vpn VSI_3256_POP25_POP02_TR_TELIUM
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 3256
    !
   !
   bridge-domain
    dot1q 3256
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
 !
 vpls-group POP25_POWERNET_POP00
  vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 250
    !
   !
   bridge-domain
    dot1q 250
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/1
    !
    access-interface gigabit-ethernet-1/1/2
    !
    access-interface gigabit-ethernet-1/1/3
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
  vpn VSI_251_CY_POP0-2_POP25_CO_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 251
    !
   !
   bridge-domain
    dot1q 251
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
    access-interface ten-gigabit-ethernet-1/1/1
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
  vpn VSI_253_CY_POP0-2_POP25_PO_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 253
    !
   !
   bridge-domain
    dot1q 253
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
  vpn VSI_258_CY_POP0-2_POP25_PO_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 258
    !
    neighbor 10.244.189.0
     pw-id 258
    !
   !
   bridge-domain
    dot1q 258
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_3101_POP00_TRANS_CAM_SAPUCA
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3101
    !
   !
   bridge-domain
    dot1q 3101
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_3102_POP00_TRANS_CAM_SAPUCA
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3102
    !
   !
   bridge-domain
    dot1q 3102
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/6
    !
   !
  !
  vpn VSI_3125_SHO_POP00_POP25_POWERN
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 3125
    !
   !
   bridge-domain
    dot1q 3125
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
 !
 vpls-group POP25_POWERNET_POP05_M_RINCAO
  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
   vfi
    pw-type ethernet
    neighbor 10.244.188.5
     pw-id 3540
    !
   !
   bridge-domain
    dot1q 3540
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/6
    !
   !
  !
 !
 vpls-group POP25_POWERNET_REDE_NEUTRA
  vpn VSI_3560_TRANS_PPPOE_POWERNET
   vfi
    pw-type ethernet
    neighbor 10.244.188.8
     pw-id 3560
    !
    neighbor 10.244.188.20
     pw-id 3560
    !
    neighbor 10.244.188.27
     pw-id 3560
    !
    neighbor 10.244.189.0
     pw-id 3560
    !
   !
   bridge-domain
    dot1q 3560
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/1
    !
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
 !
 vpls-group POP25_POWER_POP21_PRE_SAPUCAIA
  vpn VSI_902_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 902
    !
   !
   bridge-domain
    dot1q 902
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_903_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 903
    !
   !
   bridge-domain
    dot1q 903
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_904_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 904
    !
   !
   bridge-domain
    dot1q 904
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_918_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 918
    !
   !
   bridge-domain
    dot1q 918
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_925_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 925
    !
   !
   bridge-domain
    dot1q 925
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_929_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 929
    !
   !
   bridge-domain
    dot1q 929
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_930_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 930
    !
   !
   bridge-domain
    dot1q 930
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_931_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 931
    !
   !
   bridge-domain
    dot1q 931
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_935_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 935
    !
   !
   bridge-domain
    dot1q 935
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_944_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 944
    !
   !
   bridge-domain
    dot1q 944
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_951_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 951
    !
   !
   bridge-domain
    dot1q 951
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_955_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 955
    !
   !
   bridge-domain
    dot1q 955
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_961_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 961
    !
   !
   bridge-domain
    dot1q 961
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_964_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 964
    !
   !
   bridge-domain
    dot1q 964
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_967_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 967
    !
   !
   bridge-domain
    dot1q 967
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_971_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 971
    !
   !
   bridge-domain
    dot1q 971
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_976_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 976
    !
   !
   bridge-domain
    dot1q 976
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_978_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 978
    !
   !
   bridge-domain
    dot1q 978
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_979_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 979
    !
   !
   bridge-domain
    dot1q 979
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_981_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 981
    !
   !
   bridge-domain
    dot1q 981
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_987_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 987
    !
   !
   bridge-domain
    dot1q 987
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_988_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 988
    !
   !
   bridge-domain
    dot1q 988
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_989_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 989
    !
   !
   bridge-domain
    dot1q 989
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_991_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 991
    !
   !
   bridge-domain
    dot1q 991
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_992_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 992
    !
   !
   bridge-domain
    dot1q 992
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_994_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 994
    !
   !
   bridge-domain
    dot1q 994
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
  vpn VSI_999_POP21_POP25_TR_PREF_SAP
   vfi
    pw-type ethernet
    neighbor 10.244.188.21
     pw-id 999
    !
   !
   bridge-domain
    dot1q 999
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/5
    !
   !
  !
 !
 vpls-group POPPOP25_POWERNET_POP00
 !
!
snmp system location -29.881604,-51.086573
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
 description PTP_SW1POP25_P01_OLT1POP25_MGNT
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/2
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/3
 description LOOPING_DGT_PORTA4
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/4
 description LOOPING_DGT_PORTA3
 no shutdown
 negotiation
 duplex full
 speed 100M
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix auto
 mtu 12266
!
interface gigabit-ethernet 1/1/5
 description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/6
 description PTP_SW1POP25_P06__OLT1_P05
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/7
 description PTP_SW1POP25_P07_CE25_SFP-SFPPLUS1
 shutdown
 no negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/8
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/1
 description PTP_SW1POP25_PX01_OLT1POP25_PX01
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/2
 description PTP_SW1POP25_PX02_SW1POP15_PX02
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/3
 description PTP_SW1POP25_PX03_CE25_POWER_PX3_OLT2
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface ten-gigabit-ethernet 1/1/4
 description PTP_SW1POP25_PX04_SW1POP21_PX03
 no shutdown
 no negotiation
 duplex full
 speed 10G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface l3 L3_VLAN1125_MPLS1
 lower-layer-if vlan 1125
 ipv4 address 10.244.125.2/30
!
interface l3 L3_VLAN1225_MPLS1
 lower-layer-if vlan 1225
 ipv4 address 10.244.125.6/30
!
interface mgmt 1/1/1
 ipv4 address 192.168.0.25/24
!
interface loopback 0
 ipv4 address 10.244.188.125/32
!
interface loopback 1
 ipv4 address 10.244.188.25/32
!
clock timezone BRA -3
hostname SW1POP25_POWER
telnet-server enabled
telnet-server max-connections 2
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
 router-id 10.244.188.125
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1125_MPLS1
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface l3-L3_VLAN1225_MPLS1
   cost 10
   bfd
    session-type desired
   !
   network-type point-to-point
  !
  interface loopback-0
  !
  interface loopback-1
  !
 !
!
dot1q
 vlan 40-41
  interface ten-gigabit-ethernet-1/1/1
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 250
  interface gigabit-ethernet-1/1/8
  !
 !
 vlan 252
  interface gigabit-ethernet-1/1/7
  !
  interface gigabit-ethernet-1/1/8
  !
  interface ten-gigabit-ethernet-1/1/1
  !
  interface ten-gigabit-ethernet-1/1/3
  !
 !
 vlan 1125
  name VLAN_1125_SW1POP21_SW1POP25_MPLS
  interface ten-gigabit-ethernet-1/1/4
  !
 !
 vlan 1225
  name VLAN_1225_SW1POP25_SW1POP15_MPLS
  interface ten-gigabit-ethernet-1/1/2
  !
 !
!
license mpls enabled
license mpls key ***
SW1POP25_POWER(config)#
SW1POP25_POWER(config)# quit
------------------------^
syntax error: unknown command
SW1POP25_POWER(config)# exit
SW1POP25_POWER# show interface gigabit-ethernet 0/0/1
-------------------------------^
syntax error: expecting
  description - Description of interfaces
  link        - Overview of interface status
SW1POP25_POWER# show interface ?
Possible completions:
  description            Description of interfaces
  gigabit-ethernet       Display information of gigabit-ethernet interfaces
  link                   Overview of interface status
  ten-gigabit-ethernet   Display information of ten-gigabit-ethernet interfaces
  utilization            Interface utilization statistics
  |                      Output modifiers
  ---
  transceivers  <cr>
SW1POP25_POWER# show interface gigabit-ethernet ?
Possible completions:
  1/1/1   PTP_SW1POP25_P01_...
  1/1/3   LOOPING_DGT_PORTA4
  1/1/4   LOOPING_DGT_PORTA3
  1/1/5   PTP_SW1POP25_P05_...
  1/1/6   PTP_SW1POP25_P06_...
  1/1/7   PTP_SW1POP25_P07_...
  |       Output modifiers
  ---
  1/1/2  1/1/8  <cr>
SW1POP25_POWER# show interface gigabit-ethernet 1/1/1
interface gigabit-ethernet 1/1/1
 Configuration:
 --------------
  Port admin             : Enabled
  Negotiation            : Enabled
  Advertising Abilities  : [ 10Mfull 100Mfull 1Gfull ]
  MDIX                   : normal
  MTU                    : 12266
  Description            : PTP_SW1POP25_P01_OLT1POP25_MGNT

 Status:
 -------
  Link Status            : Up
  Speed/Duplex           : 100Mfull
  Flow Control           : Disabled
  MDIX                   : Normal

SW1POP25_POWER# dot1q
----------------^
syntax error: expecting
  autowizard           - Automatically query for mandatory elements
  clear                - Clear parameter
  commit               - Confirm a pending commit
  compare              - Compare running configuration to another configuration or a file
  complete-on-space    - Enable/disable completion on space
  config               - Manipulate software configuration information
  display-defaults     - Show default values when showing the configuration
  display-level        - Configure show command display level
  exit                 - Exit the management session
  file                 - Perform file operations
  help                 - Provide help information
  history              - Configure history size
  id                   - Show user id information
  idle-timeout         - Configure idle timeout
  ignore-leading-space - Ignore leading whitespace (true/false)
  leaf-prompting       - Automatically query for leaf values
  logout               - Logout a user
  no                   - Negate a command or set its defaults
  paginate             - Paginate output from CLI commands
  ping                 - Send ICMP packets to another device to check the network reliability
  ping6                - Send ICMPv6 packets to another device to check the network reliability
  quit                 - Exit the management session
  screen-resize        - Configure screen size
  send                 - Send message to terminal of one or all users
  set                  - Configure settings that may be changed by the system
  show                 - Show information about the system
  source               - File to source
  ssh                  - Open a secure shell on another host
  tcpdump              - Call tcpdump
  telnet               - Open a telnet session to another host
  terminal             - Set terminal type
  timestamp            - Enable/disable the display of timestamp
  traceroute           - Send IPv4 packets to another device for displaying all the hops to reach the destination
  traceroute6          - Send IPv6 packets to another device for displaying all the hops to reach the destination
  uptime               - Shows the system uptime
  who                  - Display currently logged on users
SW1POP25_POWER# conf
Entering configuration mode terminal
SW1POP25_POWER(config)# dot1q
SW1POP25_POWER(config-dot1q)#  vlan 250
SW1POP25_POWER(config-vlan-250)# interface gigabit-ethernet-1/1/1
SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# !
SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# comm
The dot1q settings may take a while to be completed.
Aborted: 'mpls l2vpn': vlan 250 interface gigabit-ethernet-1/1/1 is already assigned to mpls l2vpn vpls-group POP25_POWERNET_POP00 vpn VSI_250_CY_POP0-2_POP25_PO_MGNT with the same dot1q. It must be configured to another dot1q vlan
SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# VSI_250_CY_POP0-2_POP25_PO_MGNT
Uncommitted changes found, commit them? [yes/no/CANCEL]
Aborted: by user
SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# top
SW1POP25_POWER(config)# displ
                        ^
% Invalid input detected at '^' marker.
SW1POP25_POWER(config)# show interface gigabit-ethernet 1/1/5
interface gigabit-ethernet 1/1/5
 description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
 no shutdown
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
SW1POP25_POWER(config)#
```
