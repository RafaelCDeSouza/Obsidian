## POP13

Transceivers 
Porta 5 - 1270 - 1330


```undefined
sysname SW2POP13_HAVANA
router id 10.244.189.13
#
set save-configuration delay 1
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei

clock timezone Brasilia minus 03:00:00


ddr isolation disable
#
undo mac-address learning self-healing enable
#
capwap unknown-unicast cir 0


bfd

mpls lsr-id 10.244.189.13
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn


snmp-agent
snmp-agent community read cipher %^%#rW^YCfmZn6`yx1&u}Qy@9\O[0&:\FQ3rmKSj0OW'/O{%>rTl"/{ckuSdp)JN;5zW@2@w\V<9+M!]*5FN%^%#
snmp-agent sys-info contact CyberWeb
snmp-agent sys-info location -30.0059644,-51.1923515
snmp-agent sys-info version v2c v3
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface


stelnet server enable
ssh client first-time enable
ssh server-source all-interface
ssh server cipher aes256_ctr aes128_ctr
ssh server hmac sha2_256
ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
ssh client cipher aes256_ctr aes128_ctr
ssh client hmac sha2_256
ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
ssh server dh-exchange min-len 2048
ssh server publickey rsa_sha2_512 rsa_sha2_256


user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
 protocol inbound all


```

```graphql
interface XGigabitEthernet0/0/1
shutdown
#
interface XGigabitEthernet0/0/2
shutdown
#
interface XGigabitEthernet0/0/3
shutdown
#
interface XGigabitEthernet0/0/4
shutdown
#
interface XGigabitEthernet0/0/5
shutdown
#
interface XGigabitEthernet0/0/6
shutdown
#
interface XGigabitEthernet0/0/7
shutdown
#
interface XGigabitEthernet0/0/8
shutdown
#
interface XGigabitEthernet0/0/9
shutdown
#
interface XGigabitEthernet0/0/10
shutdown
#
interface XGigabitEthernet0/0/11
shutdown
#
interface XGigabitEthernet0/0/12
shutdown
#
interface XGigabitEthernet0/0/13
shutdown
#
interface XGigabitEthernet0/0/14
shutdown
#
interface XGigabitEthernet0/0/15
shutdown
#
interface XGigabitEthernet0/0/16
shutdown
#
interface XGigabitEthernet0/0/17
shutdown
#
interface XGigabitEthernet0/0/18
shutdown
#
interface XGigabitEthernet0/0/19
shutdown
#
interface XGigabitEthernet0/0/20
shutdown
#
interface XGigabitEthernet0/0/21
shutdown
#
interface XGigabitEthernet0/0/22
shutdown
#
interface XGigabitEthernet0/0/23
shutdown
#
interface XGigabitEthernet0/0/24
shutdown
#
interface 40GE0/0/1
shutdown
#
interface 40GE0/0/2
shutdown
#

```

```kotlin
interface LoopBack1
 ip address 10.244.189.13 255.255.255.255
#
ospf 1 router-id 10.244.189.13
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 opaque-capability enable
 area 0.0.0.0
  mpls-te enable
#
```

```python
interface XGigabitEthernet0/0/5
 description PTP_SW2POP13_PX05_SW1POP65_PX01
 port link-type trunk
 l2protocol-tunnel stp lldp enable
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1145
 jumboframe enable 12288
#
```


```graphql
interface Vlanif1145
 description VLAN_1145_SW1POP45_SW2PO13_MPLS
 mtu 9216
 ip address 10.244.145.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
 mpls ldp
#
```



```undefined
vlan 1465
 description VLAN_1465_MPLS_POP13_POP65
```





## POP45 (LP-CONNECT)


```kotlin




  !
 !
!


```
