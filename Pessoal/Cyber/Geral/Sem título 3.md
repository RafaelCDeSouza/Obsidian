```sql
Remover ONU Huawai



undo service-port 11



interface gpon 0/1

ont port native-vlan 6 57 eth 1 vlan 3907 priority 0
ont port native-vlan 6 57 eth 2 vlan 133 priority 0

service-port 8 vlan 133 gpon 0/1/6 ont 57 gemport 133 multi-service user-vlan 133 tag-transform translate
service-port 11 vlan 3907 gpon 0/1/6 ont 57 gemport 907 multi-service user-vlan 3907 tag-transform translate

ont add 6 57 sn-auth "485754431DD9A39B" omci ont-lineprofile-id 3907 ont-srvprofile-id 3907 desc "CLIENTE_DEDICADO_ADVICEIT"











interface gpon 0/1
ont add 12 62 sn-auth "48575443BE89B688" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ADVANTA _PONTO3"

ont port native-vlan 12 62 eth 1 vlan 133 priority 0
ont port native-vlan 12 62 eth 2 vlan 133 priority 0

service-port 261 vlan 133 gpon 0/1/12 ont 62 gemport 133 multi-service user-vlan 133 tag-transform translate





Remover 
undo service-port 260

interface gpon 0/1
ont delete 12 61


ont add 12 61 sn-auth "485754432F15D37D" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ADVANTA _PONTO19"
ont port native-vlan 12 61 eth 1 vlan 133 priority 0

quit
service-port 260 vlan 133 gpon 0/1/12 ont 61 gemport 133 multi-service user-vlan 133 tag-transform translate




0/1/13 5 

interface gpon 0/1
 ont add 13 5 sn-auth "485754431DAB889B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "DGT_SMSEG333"
 ont port native-vlan 13 5 eth 1 vlan 3107 priority 0
quit 
 service-port 28 vlan 201 gpon 0/1/13 ont 5 gemport 107 multi-service user-vlan 3107 tag-transform translate

```
