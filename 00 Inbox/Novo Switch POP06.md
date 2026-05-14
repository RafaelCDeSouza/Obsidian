```undefined

aaa user admin
 password 


mpls ldp
 lsr-id loopback-0
  interface l3-L3_VLAN1106_MPLS
  !
  neighbor targeted 10.244.189.0
  !
  neighbor targeted 10.244.188.0
  !
  neighbor targeted 10.244.188.2
  !
 !
!

vpls-group POP06_BELA_VISTA
  vpn VSI_60_CY_NOC0_POP06_B_VIS_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 60
    !
    neighbor 10.244.189.0
     pw-id 60
    !
   !
   bridge-domain
    dot1q 60
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
  vpn VSI_61_CY_NOC0_POP06_B_VIS_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 61
    !
    neighbor 10.244.189.0
     pw-id 61
    !
   !
   bridge-domain
    dot1q 61
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !

snmp system location -29.8271388,-51.0251659
snmp traps config-commit
snmp traps cpu-core
snmp traps cpu-load
snmp traps link-status
snmp traps login-success
snmp agent enabled
snmp agent version v2c
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
 negotiation
 duplex full
 speed 1G
 advertising-abilities 10Mfull 100Mfull 1Gfull
 mdix normal
 mtu 12266
!
interface gigabit-ethernet 1/1/6
 shutdown
 no negotiation
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
 no shutdown
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

interface l3 L3_VLAN1106_MPLS
 lower-layer-if vlan 1106
 ipv4 address 10.244.106.2/30
!
interface loopback 0
 ipv4 address 10.244.188.6/32
!

clock timezone BRA -3
hostname SW1POP06_BELA_VISTA
telnet-server enabled


router ospf 1 vrf global
 router-id 10.244.188.6
 redistribute static
 !
 area 0.0.0.0
  interface l3-L3_VLAN1106_MPLS
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
 vlan 1106
  name VL_1106_SW1POP07_SW1POP06_MPLS
  interface ten-gigabit-ethernet-1/1/1
  !
 !
!


```




## POP00

```kotlin
ospf 1 router-id 10.244.189.0
 silent-interface Vlanif1106
  area 0.0.0.0
    undo network 10.244.106.1 0.0.0.3
#


interface XGigabitEthernet0/0/3
 description SWITCHs_BANCADA
 port link-type trunk
 undo port trunk allow-pass vlan 1
 undo port trunk allow-pass vlan 1106
 jumboframe enable 12288
#

undo interface Vlanif1106

undo vlan 1106
undo vlan batch 1106

```


## POP07


```kotlin


interface l3 L3_VLAN1106_MPLS
 lower-layer-if vlan 1106
 ipv4 address 10.244.106.1/30
!

router ospf 1 vrf global
 area 0.0.0.0
  interface l3-L3_VLAN1106_MPLS
   cost 100
   bfd
    session-type desired
   !
   network-type point-to-point
  !
 !
!
dot1q
 vlan 1106
  name VL_1106_SW1POP07_SW1POP06_MPLS
  interface ten-gigabit-ethernet-1/1/2
  !
 !
!

interface ten-gigabit-ethernet 1/1/2
 description SW1POP07_PX02_OLT1_POP06_PX01
 
 
```


## POP00

```bash
vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
 pwsignal ldp
  vsi-id 60
  peer 10.244.188.6
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
 pwsignal ldp
  vsi-id 61
  undo peer 10.244.188.7
  peer 10.244.188.6
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet



vsi VSI_150_CY_NOC0_POP15_MGNT static
 pwsignal ldp
  vsi-id 150
  peer 10.244.188.6
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_151_CY_NOC0_POP15_OLT_PF static
 pwsignal ldp
  vsi-id 151
  peer 10.244.188.6
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vlan 150
 description VLAN_151_POP15_MARGARETE_MGNT
 vlan 151
 description VLAN_151_POP15_MARGARETE_OLT1
 
 
interface Vlanif150
 description VLAN_150_POP15_EXPOINTER_GERENCIA
 l2 binding vsi VSI_150_CY_NOC0_POP15_MGNT
 interface Vlanif151
 description VLAN_151_CY_NOC0_POP15_OLT_PF
 l2 binding vsi VSI_151_CY_NOC0_POP15_OLT_PF
# 
 
 undo vsi VSI_150_CY_POP00_POP15_EXP_MGNT
 undo vsi VSI_151_CY_POP0-2_POP15_EX_OLT1
 undo vsi VSI_150_CY_POP0-2_POP15_EX_OLT1

```

## POP02

```bash
vsi VSI_61_CY_NOC0-2_POP06_B_V_OLT1 static
 pwsignal ldp
  peer 10.244.188.6
  undo peer 10.244.188.7
#
vsi VSI_60_CY_NOC0_POP06_B_VIS_MGNT static
 pwsignal ldp
  peer 10.244.188.6
  undo peer 10.244.188.7
#

mpls ldp remote-peer 10.244.188.6
 remote-ip 10.244.188.6
 
 
 
 
 undo vsi VSI_150_POP00-02_POP15_EXP_MGNT
 undo vsi VSI_151_POP00-02_POP15_EXP_OLT1
 
 
 
 
```


## Limpando POP07

```python
mpls l2vpn
vpls-group POP07_S_TECLA
  no vpn VSI_60_CY_NOC0_POP06_B_VIS_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 60
    !
    neighbor 10.244.189.0
     pw-id 60
    !
   !
   bridge-domain
    dot1q 60
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
  no vpn VSI_61_CY_NOC0_POP06_B_VIS_OLT1
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 61
    !
    neighbor 10.244.189.0
     pw-id 61
    !
   !
   bridge-domain
    dot1q 61
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/2
    !
   !
  !
```



## POP06

```python
mpls l2vpn
vpls-group POP15_MARGARETE
  vpn VSI_150_CY_NOC0_POP15_MGNT
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 150
    !
    neighbor 10.244.189.0
     pw-id 150
    !
   !
   bridge-domain
    dot1q 150
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
  vpn VSI_151_CY_NOC0_POP15_OLT_PF
   vfi
    pw-type ethernet
    neighbor 10.244.188.2
     pw-id 151
    !
    neighbor 10.244.189.0
     pw-id 151
    !
   !
   bridge-domain
    dot1q 151
    bridge-mtu 9000
    access-interface ten-gigabit-ethernet-1/1/3
    !
   !
  !
```
