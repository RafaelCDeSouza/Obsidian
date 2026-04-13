```yaml
vsi VSI3170_CY_POP00_PROV_TC_TELECOM static
 pwsignal ldp
  vsi-id 3170
  peer 10.244.189.0
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#
vsi VSI3270_CY_POP02_PROV_TC_TELECOM static
 pwsignal ldp
  vsi-id 3270
  peer 10.244.188.2
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
#


interface Vlanif1170
 description VLAN1170_SW1POP70_SW1POP10_MPLS
 mtu 9216
 ip address 10.244.170.2 255.255.255.252
 ospf cost 1
 ospf network-type p2p
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#

vlan 3170
 description VLAN_3170_R_NEUTRA_TC_NA_REDE_CYBER
vlan 3270
 description VLAN_3170_R_NEUTRA_TC_NA_REDE_CYBER



vlan 1170
 description VLAN1170_SW1POP10_SW1POP70_MPLS
 
 
 
 
 
 
 Ligaria entre eles
 As mesmas portas no FG de cada um 
 Um link de internet para cada Switch
```
