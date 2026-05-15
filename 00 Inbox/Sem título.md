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
 area 0.0.0.0
  undo network 10.244.106.0 0.0.0.3 description Vlanif1106
```
