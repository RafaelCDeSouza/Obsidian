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
