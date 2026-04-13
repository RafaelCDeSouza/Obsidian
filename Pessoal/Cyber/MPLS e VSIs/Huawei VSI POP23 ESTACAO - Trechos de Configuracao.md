```yaml
vsi VSI_230_POP0-2_POP23_EST_MGNT static
 pwsignal ldp
  vsi-id 230
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 quit

vsi VSI_231_POP0-2_POP23_EST_OLT1 static
 pwsignal ldp
  vsi-id 231
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 quit

vsi VSI_233_POP0-2_POP23_EST_OLT1 static
 pwsignal ldp
  vsi-id 233
  peer 10.244.189.15
  traffic-statistics enable
 mtu 9000
 encapsulation ethernet
 quit

vlan 230
 description VLAN_230_POP23_EST_GERENCIA
quit

vlan 231
 description VLAN_231_POP23_ESTEIO_OLT1
quit

vlan 233
 description VLAN_233_POP23_ESTEIO_OLT1
quit


interface Vlanif230
 description VLAN_230_POP23_ESTEIO_GERENCIA
 l2 binding vsi VSI_230_POP0-2_POP23_EST_MGNT
quit

interface Vlanif231
 description VLAN_231_POP23_ESTEIO_OLT1
 l2 binding vsi VSI_231_POP0-2_POP23_EST_OLT1
quit

interface Vlanif233
 description VLAN_233_POP23_ESTEIO_OLT1
 l2 binding vsi VSI_233_POP0-2_POP23_EST_OLT1
quit


interface XGigabitEthernet0/0/1
 undo port trunk allow-pass vlan 150 to 151
 port trunk allow-pass vlan 230 to 233
 description PTP_SW1POP23_PX01_OLT1POP23_PX01
quit







interface XGigabitEthernet0/0/15
 port trunk allow-pass vlan 2 10 to 13 16 to 17 21 23 31 39 41 51 53
 port trunk allow-pass vlan 61 71 81 83 91 101 111 113 133 140
 port trunk allow-pass vlan 150 to 151 161 171 173 181 193 201 203 230 231 232 251 271
 port trunk allow-pass vlan 273 281 283 915 1111 1395 3005 3103 3105 3107
 port trunk allow-pass vlan 3111 3119 3341 3540 to 3541 3571 3581 3592 3964 to 3965
#
```
