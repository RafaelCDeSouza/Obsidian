```csharp
mpls l2vpn
 vpls-group POP07_POP15_OLT_MARGARETE
  vpn VSI_POP07_POP15_OLT_PF
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 151
    !
   !
   bridge-domain
    dot1q 151
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/6
    !
   !
  !
  
  
  interface gigabit-ethernet 1/1/6
  description PTP_POP07_OLT_POP15
  
  mpls l2vpn
 vpls-group POP07_POP15_OLT_MARGARETE
  vpn VSI_POP07_POP15_OLT_PF
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 151
    !
   !
   bridge-domain
    dot1q 151
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/6
    !
   !
  !
  
  
  interface gigabit-ethernet 1/1/6
  description PTP_POP07_OLT_POP15
```


## POP00

```yaml
interface Vlanif151
 description VLAN_151_POP15_MARGARETE_OLT1
 l2 binding vsi VSI_151_CY_POP0-2_POP15_EX_OLT1
#

vlan 151
 description VLAN_151_POP15_MARGARETE_OLT1

vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
 pwsignal ldp
  vsi-id 151
  peer 10.244.188.23
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#

interface Vlanif150
 description VLAN_150_POP15_MARGARETE_MGMT
 l2 binding vsi VSI_150_CY_POP0-2_POP15_EX_OLT1
#

vlan 150
 description VLAN_150_POP15_MARGARETE_OLT1

vsi VSI_150_CY_POP0-2_POP15_EX_OLT1 static
 pwsignal ldp
  vsi-id 150
  peer 10.244.188.23
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
```
