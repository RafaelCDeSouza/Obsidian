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





## Versão 1


```python

[SW2POP13_HAVANA]display current-configuration
!Software Version V200R022C00SPC500
#
sysname SW2POP13_HAVANA
#
router id 10.244.189.13
#
vlan batch 1145
#
authentication-profile name default_authen_profile
authentication-profile name dot1x_authen_profile
authentication-profile name dot1xmac_authen_profile
authentication-profile name mac_authen_profile
authentication-profile name multi_authen_profile
authentication-profile name portal_authen_profile
#
set save-configuration delay 1
set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
#
http server-source -i MEth0/0/1
#
clock timezone Brasilia minus 03:00:00
#
diffserv domain default
#
radius-server template default
#
bfd
#
mpls lsr-id 10.244.189.13
mpls
 mpls te
 mpls rsvp-te
 mpls te cspf
#
mpls l2vpn
#
pki realm default
 certificate-check none
#
free-rule-template name default_free_rule
#
portal-access-profile name portal_access_profile
#
drop-profile default
#
aaa
 authentication-scheme default
  authentication-mode local
 authentication-scheme radius
  authentication-mode radius
 authorization-scheme default
  authorization-mode local
 accounting-scheme default
  accounting-mode none
 local-aaa-user password policy administrator
  password history record number 0
  password expire 0
 domain default
  authentication-scheme radius
  accounting-scheme default
  radius-server default
 domain default_admin
  authentication-scheme default
  accounting-scheme default
 local-user admin password irreversible-cipher $1c$g_d3B5B]*A$zK*V5jx&k3K/Lj-;r;=Ma0A!"uS\UEap)HQc#"h4$
 local-user admin privilege level 15
 local-user admin service-type ssh http
#
ntp-service server disable
ntp-service ipv6 server disable
ntp-service unicast-server 200.189.40.8
ntp-service unicast-server 200.160.0.8
#
interface Vlanif1
#
interface Vlanif1145
 description VLAN_1265_SW1POP45_SW2PO13_MPLS
 mtu 9216
 ip address 10.244.145.1 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
#
interface Vlanif1465
 description VLAN_1465_SW1POP65_SW2PO13_MPLS
 mtu 9216
 ip address 10.244.165.13 255.255.255.252
 ospf cost 10
 ospf network-type p2p
 ospf enable 1 area 0.0.0.0
 mpls
 mpls te
 mpls rsvp-te
#
interface MEth0/0/1
 ip address 192.168.1.253 255.255.255.0
#
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
 description PTP_SW2POP13_PX05_SW1POP65_PX01
 port link-type trunk
 undo port trunk allow-pass vlan 1
 port trunk allow-pass vlan 1145
 l2protocol-tunnel stp lldp enable
 jumboframe enable 12288
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
interface NULL0
#
interface LoopBack1
 ip address 10.244.189.13 255.255.255.255
#
ospf 1 router-id 10.244.189.13
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1145
 opaque-capability enable
 area 0.0.0.0
  mpls-te enable
#
undo icmp name timestamp-request receive
#
snmp-agent
snmp-agent local-engineid 800007DB030CC6CCC68E10
snmp-agent community read cipher %^%#!TkD,#"sk*_\(3X"P)y#gj>X7tEiV%InMTOz(C#6gdaQQ)I4^T-q|q&o"Ay:q)@^L't2i3[4X!NYBWb%%^%#
snmp-agent sys-info contact CyberWeb
snmp-agent sys-info location -30.0059644,-51.1923515
snmp-agent sys-info version v2c v3
snmp-agent protocol source-status all-interface
undo snmp-agent protocol source-status ipv6 all-interface
#
stelnet server enable
ssh client first-time enable
ssh server-source all-interface
ssh server cipher aes256_ctr aes128_ctr
ssh server hmac sha2_256
ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
ssh client cipher aes256_ctr aes128_ctr
ssh client hmac sha2_256
ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256
ssh server dh-exchange min-len 2048
ssh server publickey rsa_sha2_512 rsa_sha2_256
#
user-interface con 0
 authentication-mode password
 set authentication password cipher $1c$1@0d)Ps=T2$qkw#M2iU6PX$N@5d$JMUY8<(0sc:lX#_+k$O]Tz6$
user-interface vty 0 4
 authentication-mode aaa
 idle-timeout 3600 0
 protocol inbound all
user-interface vty 16 20
#
dot1x-access-profile name dot1x_access_profile
#
mac-access-profile name mac_access_profile
#
ops
#
remote-unit
#
return

```


## POP00

```bash
mpls ldp remote-peer 10.244.189.13
 remote-ip 10.244.189.13
#
vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
 pwsignal ldp
  peer 10.244.189.13
#
vsi VSI_3107_POP00_POP02_TR_POA_SEG static
 pwsignal ldp
  peer 10.244.189.13

 vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
 pwsignal ldp
  peer 10.244.189.13
```


## POP002
```yaml
mpls ldp remote-peer 10.244.189.13
 remote-ip 10.244.189.13
#
vsi VSI_3907_POP02-42_TR1_ALIANCA static
 pwsignal ldp
  peer 10.244.189.13
#
vsi VSI_133_CY_POP0-2_POP13_HA_OLT1 static
 pwsignal ldp
  peer 10.244.189.13

vsi VSI_131_CY_POP0-2_POP13_HA_OLT1 static
 pwsignal ldp
  peer 10.244.189.13
```

## POP05

```bash
mpls ldp remote-peer 10.244.189.13
 remote-ip 10.244.189.13
#
vsi VSI3540_RN_MEDIA_NA_CYBER_PPPOE static
 pwsignal ldp
  peer 10.244.189.13
#`
```


## POP12

```bash
mpls ldp remote-peer 10.244.189.13
 remote-ip 10.244.189.13
#
vsi VSI3510_RN_FENIX_NA_CYBER_PPPOE static
 pwsignal ldp
  peer 10.244.189.13
#
```

```csharp
vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
 pwsignal ldp
  vsi-id 130
  peer 10.244.188.13
 
```
