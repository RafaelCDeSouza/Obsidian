```java

POP15-OLT1-EXPOINTER>
POP15-OLT1-EXPOINTER>
POP15-OLT1-EXPOINTER>
POP15-OLT1-EXPOINTER>dis
                     ^
 % Unrecognized command, and error detected at '^' marker.
POP15-OLT1-EXPOINTER>show runn

!LanSwitch BuildRun
enable
configure terminal
![EPON]
onu-type onu 4 vlan-cfg-mode ctc
no admin-enable-pon slot 0 pon 1
![VLAN]
interface range ethernet 0/1 to ethernet 0/3
switchport mode access
exit
interface range ethernet 1/1 to ethernet 1/4
switchport mode trunk
exit
vlan 153
description VLAN_153_BANRISUL
exit
vlan 3001
description VLAN-3001-BANRISUL-4PONTOS
exit
vlan 3256
description VLAN-3256-TELIUM-4
exit
vlan 3572
description VLAN_3572_LP
exit
vlan 3573
description VLAN_3573_LP
exit
vlan 150-152
exit
![DEVICE]
interface ethernet 0/1
switchport default vlan 151
exit
interface ethernet 0/2
switchport default vlan 151
exit
interface ethernet 0/3
switchport default vlan 151
exit
interface ethernet 0/4
switchport default vlan 151
no switchport hybrid vlan 1
switchport hybrid untagged vlan 151
exit
interface ethernet 0/5
exit
interface ethernet 0/6
exit
interface ethernet 0/7
exit
interface ethernet 0/8
exit
interface pon 0/1
shutdown
switchport default vlan 151
switchport hybrid tagged vlan 152-153,3001,3572-3573
switchport hybrid untagged vlan 151
exit
interface pon 0/2
onu-p2p
switchport default vlan 151
switchport hybrid tagged vlan 152-153,3001,3572-3573
switchport hybrid untagged vlan 151
exit
interface pon 0/3
onu-p2p
switchport default vlan 151
switchport hybrid tagged vlan 152-153
switchport hybrid untagged vlan 151
exit
interface pon 0/4
onu-p2p
switchport default vlan 151
switchport hybrid tagged vlan 152-153,3001,3256
switchport hybrid untagged vlan 151
exit
interface ethernet 1/1
description SW1POP15_PX01_OLT1POP15_PX01
switchport trunk allowed vlan 150-152,3001,3256,3572-3573
exit
interface ethernet 1/2
switchport trunk allowed vlan 1149,1249
exit
interface ethernet 1/3
description SW1POP15_PX03_CE15_PX03
switchport trunk allowed vlan 15,150-153,1149,3001,3256
exit
interface ethernet 1/4
description SW1POP15_PX04_OLT1POP15_PX04
switchport trunk allowed vlan 150-152,3001,3256,3572-3573
exit
![OAM]
service password-encryption
username admin privilege 15 password 7 4ab72308
username zandona privilege 15 password 7 aaf44d4e
username cyberweb privilege 15 password 7 4ab72308
screen-rows per-page 0
hostname POP15-OLT1-EXPOINTER
![SNMP]
snmp-server name POP15-OLT1-EXPOINTER
![IF]
interface vlan-interface 1
exit
interface vlan-interface 150
ip address 10.244.15.254 255.255.255.252
exit
interface meth-interface 0
ip address 192.168.100.1 255.255.255.0
exit
![STATIC_ROUTE]
ip route 0.0.0.0 0.0.0.0 10.244.15.253
![SSH]
ssh
![SYSLOG]
logging monitor 0
logging monitor 1
logging monitor 2
logging monitor 3
logging monitor 4
logging monitor 5
![CLASSIFICATION]
![ONUMNT]
onu 0/2/5
onu-binding mac 98:e5:5b:0e:71:87 type other
interface pon 0/0
exit
interface ethernet 0/1
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit
onu 0/2/17
onu-binding mac 98:e5:5b:0e:71:82 type other
interface pon 0/0
exit
interface ethernet 0/1
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit
onu 0/2/20
onu-binding mac 98:2a:0a:6c:8c:e8 type other
interface pon 0/0
exit
interface ethernet 0/1
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit
onu 0/2/38
onu-binding mac 54:6c:ac:9a:c7:13 type other
interface pon 0/0
exit
interface ethernet 0/1
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit
onu 0/2/39
onu-binding mac 98:e5:5b:5c:fb:73 type other
interface pon 0/0
exit
interface ethernet 0/1
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit
onu 0/2/45
onu-binding mac 80:85:44:a0:fb:31 type other
interface pon 0/0
exit
interface ethernet 0/1
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit
onu 0/2/56
onu-binding mac 98:e5:5b:0e:71:60 type other
interface pon 0/0
exit
interface ethernet 0/1
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit
onu 0/4/1
onu-binding mac 98:e5:5b:0c:01:74 type other
onu-description TELIUM-P4
interface pon 0/0
exit
interface ethernet 0/1
onu-vlan-mode tag vlan 3256
exit
interface ethernet 0/2
exit
interface ethernet 0/3
exit
interface ethernet 0/4
exit
exit

POP15-OLT1-EXPOINTER>

```
