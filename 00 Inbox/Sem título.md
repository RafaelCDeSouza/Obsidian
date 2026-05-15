```csharp
 ont-lineprofile gpon profile-id 3907 profile-name "LINE_PROFILE_3907"
  omcc encrypt on
  tcont 1 dba-profile-id 12
  tcont 2 dba-profile-id 12
  gem add 133 eth tcont 2 encrypt on
  gem add 907 eth tcont 1 encrypt on
  gem mapping 133 0 vlan 133
  gem mapping 907 0 vlan 3907
  commit
  quit
```


```yaml
vlan 1106
 description VLAN1106_SW1POP00_SW1POP06_MPLS
```


```python
interface XGigabitEthernet0/0/3
 undo port trunk allow-pass vlan 1106
#
```


```kotlin
ospf 1 router-id 10.244.189.0
 default-route-advertise
 bfd all-interfaces enable
 import-route direct cost 15 type 1
 import-route static cost 15 type 1
 silent-interface all
 undo silent-interface Vlanif1112
 undo silent-interface Vlanif1100
 undo silent-interface Vlanif1108
 undo silent-interface Vlanif1166
 undo silent-interface Vlanif1152
 undo silent-interface Vlanif1125
 undo silent-interface Vlanif2733
 undo silent-interface Vlanif1121
 undo silent-interface Vlanif1195
 undo silent-interface Vlanif1295
 undo silent-interface Vlanif1144
 undo silent-interface Vlanif2311
 opaque-capability enable
 area 0.0.0.0
  network 10.244.100.0 0.0.0.3 description Vlanif1100
  network 10.244.100.4 0.0.0.3 description Vlanif1201
  network 10.244.100.8 0.0.0.3 description Vlanif2733_TR_VERO
  network 10.244.105.8 0.0.0.3 description Vlanif1305
  network 10.244.106.0 0.0.0.3 description Vlanif1106
```
