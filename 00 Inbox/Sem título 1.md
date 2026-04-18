

Huawei
```python
  ont add 8 88 sn-auth "465354540000FDDA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Sindicato_Metropolitano"
  

 ont port native-vlan 8 88 eth 1 vlan 31 priority 0
 ont port native-vlan 8 88 eth 2 vlan 31 priority 0

 service-port 3428 vlan 31 gpon 0/1/8 ont 88 gemport 31 multi-service user-vlan 31 tag-transform translate
```



Intelbras

```csharp

onu set gpon 4 onu 10 serial-number 0000FE73 meprof intelbras-default



onu description add gpon 8 onu 60 text Celanira_Vieira_Cavalheiro
```
