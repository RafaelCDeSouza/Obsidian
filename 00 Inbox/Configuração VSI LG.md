## POP13

```bash
mpls l2vpn
vsi VSI_2191_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 2191
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet

vsi VSI_3610_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3610
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3611_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3611
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3612_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3612
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3613_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3613
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3614_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3614
  peer 10.244.188.2
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet


vlan 2191
 description VLAN_2191_POP00_2_POP13_C_HAV_LG

vlan 3610
 description VLAN_3610_POP00_2_POP13_C_HAV_LG
vlan 3611
 description VLAN_3611_POP00_2_POP13_C_HAV_LG
vlan 3612
 description VLAN_3612_POP00_2_POP13_C_HAV_LG
vlan 3613
 description VLAN_3613_POP00_2_POP13_C_HAV_LG 
vlan 3614
 description VLAN_3614_POP00_2_POP13_C_HAV_LG
  
interface Vlanif2191
 description VLAN_2191_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_2191_POP00_2_POP13_C_HAV_LG
#
  
interface Vlanif3610
 description VLAN_3610_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3610_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3611
 description VLAN_3611_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3611_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3612
 description VLAN_3612_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3612_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3613
 description VLAN_3613_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3613_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3614
 description VLAN_3614_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3614_POP00_2_POP13_C_HAV_LG
#

interface XGigabitEthernet0/0/7
	port trunk allow-pass vlan 3610
	port trunk allow-pass vlan 3611
	port trunk allow-pass vlan 3612
	port trunk allow-pass vlan 3613
	port trunk allow-pass vlan 3614
	



```


##POP00

```yaml
vsi VSI_3610_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3610
  peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3611_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3611
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3612_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3612
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3613_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3613
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3614_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3614
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet


vlan 3610
 description VLAN_3610_POP00_2_POP13_C_HAV_LG
vlan 3611
 description VLAN_3611_POP00_2_POP13_C_HAV_LG
vlan 3612
 description VLAN_3612_POP00_2_POP13_C_HAV_LG
vlan 3613
 description VLAN_3613_POP00_2_POP13_C_HAV_LG 
vlan 3614
 description VLAN_3614_POP00_2_POP13_C_HAV_LG
  
  
interface Vlanif3610
 description VLAN_3610_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3610_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3611
 description VLAN_3611_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3611_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3612
 description VLAN_3612_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3612_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3613
 description VLAN_3613_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3613_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3614
 description VLAN_3614_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3614_POP00_2_POP13_C_HAV_LG
#


interface XGigabitEthernet0/0/15
 description PTP_SW1POP00_PX15_CGNAT1_sfp-sfpplus2
 port trunk allow-pass vlan 3610 3611 3612 3613 3614

interface Eth-Trunk7
 description LAG7_SW1POP00_P12_P13__PSCE01_P12_P13
 port trunk allow-pass vlan 3611 3612 3613 3614
 
interface Eth-Trunk5
 description LAG5_BGP1CY_PCX00_PCX01__SW1POP00_PCX01_PCX02
 port trunk allow-pass vlan 3610 3611 3612 3613 3614
 
interface Eth-Trunk1
 description LAG1_BGP1_CYBER_PX08-09__SW1POP00_PX08-09
 port trunk allow-pass vlan 3610 3611 3612 3613 3614

```


## POP02

```yaml
vsi VSI_3610_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3610
  peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI_3611_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3611
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3612_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3612
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3613_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3613
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 
 vsi VSI_3614_POP00_2_POP13_C_HAV_LG static
 pwsignal ldp
  vsi-id 3614
peer 10.244.189.13
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet


vlan 3610
 description VLAN_3610_POP00_2_POP13_C_HAV_LG
vlan 3611
 description VLAN_3611_POP00_2_POP13_C_HAV_LG
vlan 3612
 description VLAN_3612_POP00_2_POP13_C_HAV_LG
vlan 3613
 description VLAN_3613_POP00_2_POP13_C_HAV_LG 
vlan 3614
 description VLAN_3614_POP00_2_POP13_C_HAV_LG
  
  
interface Vlanif3610
 description VLAN_3610_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3610_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3611
 description VLAN_3611_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3611_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3612
 description VLAN_3612_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3612_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3613
 description VLAN_3613_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3613_POP00_2_POP13_C_HAV_LG
#
interface Vlanif3614
 description VLAN_3614_POP00_2_POP13_C_HAV_LG
 l2 binding vsi VSI_3614_POP00_2_POP13_C_HAV_LG
#

interface XGigabitEthernet0/0/17
 description PTP_SW1_CY_P17_CY_CGNAT2_SFPPLUS1
 port trunk allow-pass vlan 3610 3611 3612 3613 3614

interface Eth-Trunk1
 description LAG1_SW1POP02_PS_CE02_POP02
 port trunk allow-pass vlan 3611 3612 3613 3614
```
