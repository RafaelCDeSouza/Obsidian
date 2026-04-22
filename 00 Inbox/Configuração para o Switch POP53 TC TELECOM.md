
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


