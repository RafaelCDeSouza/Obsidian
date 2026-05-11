```csharp
mpls l2vpn
 vpls-group POP07_POP15_OLT_MARGARETE
  vpn VSI_POP07_POP15_OLT_PF
   vfi
    pw-type ethernet
    neighbor 10.244.189.0
     pw-id 151
    !
   !
   bridge-domain
    dot1q 151
    bridge-mtu 9000
    access-interface gigabit-ethernet-1/1/6
    !
   !
  !
  
  
  interface gigabit-ethernet 1/1/6
  description PTP_POP07_OLT_POP15
```
