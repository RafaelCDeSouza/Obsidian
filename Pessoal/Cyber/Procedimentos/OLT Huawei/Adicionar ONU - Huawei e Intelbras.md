

Huawei
```python
  ont add 8 88 sn-auth "465354540000FDDA" omci ont-lineprofile-id 31 ont-srvprofile-id 31 desc "Sindicato_Metropolitano"
  

 ont port native-vlan 8 88 eth 1 vlan 31 priority 0
 ont port native-vlan 8 88 eth 2 vlan 31 priority 0

 service-port 3428 vlan 31 gpon 0/1/8 ont 88 gemport 31 multi-service user-vlan 31 tag-transform translate
```



Intelbras

```csharp

onu set gpon 4 onu 10 serial-number FSTT0000FE73 meprof intelbras-default

onu description add gpon 4 onu 10 text Natalia_de_Oliveira_da_Silva

bridge add gpon 4 onu 10 downlink vlan 91 tagged data eth 1
bridge-path modify gpon 4 onu 10 gem 318 mode flap


Free slots in GPON Link 4:
=======================================
  2   10   12   13   14   15   17   18
 19   21   22   23   24   25   26   27
 28   29   30   31   32   33   34   35
 36   37   38   39   40   41   42   43
 44   45   47   48   49   51   52   53
 54   55   56   57   58   59   60   61
 62   63   64   65   66   68   69   70
 71   72   73   74   75   76   77   78
 79   80   81   82   83   84   85   86
 87   88   89   90   91   93   94   95
 96   97   98   99  100  101  102  103
104  105  106  107  108  109  110  111
112  113  114  115  116  117  118  119
120  121  122  123  124  125  126  127
128

Discovered serial numbers
==============================================
sernoID   Vendor  Serial Number   Model       Time Discovered
4         FSTT    0000FE73        F10-G10-NWV1.0Feb 26 11:26:06 2025

```
