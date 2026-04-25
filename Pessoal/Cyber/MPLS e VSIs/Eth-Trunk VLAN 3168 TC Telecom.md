```bash
interface Eth-Trunk7.3168
 description VLAN_3168_PROV_TCTELECOM
 ipv6 enable
 ipv6 address auto link-local
 statistic enable
 8021p 0
 user-vlan 3168
 
 bas
 #
  access-type layer2-subscriber
  default-domain authentication ppp-user domain-ce01-cyberweb
 #
#
```
