---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP42

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP42 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP42]]
     2|
     3|     1|```kotlin
     4|     2|(admin@10.244.188.42) Password:
     5|     3|Welcome to the DmOS CLI
     6|     4|User admin last logged in 2021-06-25T13:07:55.527694+00:00, to DM4370, from 10.244.244.250 using cli-tcp
     7|     5|admin connected from 45.235.208.49 using ssh on SW1POP42_ALIANCA
     8|     6|SW1POP42_ALIANCA# display-
     9|     7|SW1POP42_ALIANCA# show cu
    10|     8|                       ^
    11|     9|% Invalid input detected at '^' marker.
    12|    10|SW1POP42_ALIANCA# show running-config
    13|    11|aaa authentication-order [ local ]
    14|    12|aaa user admin
    15|    13| password $1$GTXiBJ.R$kjFlYCbQctROGl9N16szg1
    16|    14| group admin
    17|    15|!
    18|    16|aaa user zandona
    19|    17| password $1$GML1y/.8$KyN6mO6yu1WGeE0sivLEm1
    20|    18| group admin
    21|    19|!
    22|    20|mpls ldp
    23|    21| lsr-id loopback-0
    24|    22|  interface l3-L3_VLAN1142_MPLS
    25|    23|  !
    26|    24|  neighbor targeted 10.244.188.2
    27|    25|  !
    28|    26| !
    29|    27|!
    30|    28|mpls l2vpn
    31|    29| vpls-group POP42_ALIANCA_POP02_TELIUM
    32|    30|  vpn VSI_3907_POP02-42_TR1_ALIANCA
    33|    31|   vfi
    34|    32|    pw-type ethernet
    35|    33|    neighbor 10.244.188.2
    36|    34|     pw-id 3907
    37|    35|    !
    38|    36|   !
    39|    37|   bridge-domain
    40|    38|    bridge-mtu 9000
    41|    39|    access-interface gigabit-ethernet-1/1/4
    42|    40|    !
    43|    41|   !
    44|    42|  !
    45|    43| !
    46|    44|!
    47|    45|snmp traps config-commit
    48|    46|snmp traps cpu-core
    49|    47|snmp traps cpu-load
    50|    48|snmp traps link-status
    51|    49|snmp traps login-success
    52|    50|snmp agent enabled
    53|    51|snmp agent version v2c
    54|    52|snmp agent version v3
    55|    53|snmp agent engine-id from-mac-address 18:81:ed:4e:72:d8
    56|    54|snmp community CyberWeb
    57|    55| sec-name CyberWeb
    58|    56|!
    59|    57|snmp community public
    60|    58| sec-name public
    61|    59|!
    62|    60|snmp notify std_v1_trap
    63|    61| tag std_v1_trap
    64|    62|!
    65|    63|snmp notify std_v2_inform
    66|    64| tag std_v2_inform
    67|    65| type inform
    68|    66|!
    69|    67|snmp notify std_v2_trap
    70|    68| tag std_v2_trap
    71|    69|!
    72|    70|snmp notify std_v3_inform
    73|    71| tag std_v3_inform
    74|    72| type inform
    75|    73|!
    76|    74|snmp notify std_v3_trap
    77|    75| tag std_v3_trap
    78|    76|!
    79|    77|snmp vacm group CyberWeb
    80|    78| member CyberWeb
    81|    79|  sec-model [ v2c ]
    82|    80| !
    83|    81| access "" v2c no-auth-no-priv
    84|    82|  read-view root
    85|    83|  notify-view root
    86|    84| !
    87|    85|!
    88|    86|snmp vacm group public
    89|    87| member public
    90|    88|  sec-model [ v2c ]
    91|    89| !
    92|    90| access "" v2c no-auth-no-priv
    93|    91|  read-view root
    94|    92|  write-view root
    95|    93|  notify-view root
    96|    94| !
    97|    95|!
    98|    96|snmp vacm view root
    99|    97| subtree 1.3
   100|    98|  included
   101|    99| !
   102|   100|!
   103|   101|interface gigabit-ethernet 1/1/1
   104|   102| shutdown
   105|   103| negotiation
   106|   104| duplex full
   107|   105| speed 100M
   108|   106| advertising-abilities 10Mfull 100Mfull 1Gfull
   109|   107| mdix auto
   110|   108| mtu 12266
   111|   109|!
   112|   110|interface gigabit-ethernet 1/1/2
   113|   111| shutdown
   114|   112| negotiation
   115|   113| duplex full
   116|   114| speed 100M
   117|   115| advertising-abilities 10Mfull 100Mfull 1Gfull
   118|   116| mdix auto
   119|   117| mtu 12266
   120|   118|!
   121|   119|interface gigabit-ethernet 1/1/3
   122|   120| shutdown
   123|   121| negotiation
   124|   122| duplex full
   125|   123| speed 100M
   126|   124| advertising-abilities 10Mfull 100Mfull 1Gfull
   127|   125| mdix auto
   128|   126| mtu 12266
   129|   127|!
   130|   128|interface gigabit-ethernet 1/1/4
   131|   129| no shutdown
   132|   130| negotiation
   133|   131| duplex full
   134|   132| speed 100M
   135|   133| advertising-abilities 10Mfull 100Mfull 1Gfull
   136|   134| mdix auto
   137|   135| mtu 12266
   138|   136|!
   139|   137|interface gigabit-ethernet 1/1/5
   140|   138| shutdown
   141|   139| negotiation
   142|   140| duplex full
   143|   141| speed 1G
   144|   142| advertising-abilities 10Mfull 100Mfull 1Gfull
   145|   143| mdix normal
   146|   144| mtu 12266
   147|   145|!
   148|   146|interface gigabit-ethernet 1/1/6
   149|   147| shutdown
   150|   148| negotiation
   151|   149| duplex full
   152|   150| speed 1G
   153|   151| advertising-abilities 10Mfull 100Mfull 1Gfull
   154|   152| mdix normal
   155|   153| mtu 12266
   156|   154|!
   157|   155|interface gigabit-ethernet 1/1/7
   158|   156| shutdown
   159|   157| negotiation
   160|   158| duplex full
   161|   159| speed 1G
   162|   160| advertising-abilities 10Mfull 100Mfull 1Gfull
   163|   161| mdix normal
   164|   162| mtu 12266
   165|   163|!
   166|   164|interface gigabit-ethernet 1/1/8
   167|   165| shutdown
   168|   166| negotiation
   169|   167| duplex full
   170|   168| speed 1G
   171|   169| advertising-abilities 10Mfull 100Mfull 1Gfull
   172|   170| mdix normal
   173|   171| mtu 12266
   174|   172|!
   175|   173|interface ten-gigabit-ethernet 1/1/1
   176|   174| shutdown
   177|   175| no negotiation
   178|   176| duplex full
   179|   177| speed 10G
   180|   178| advertising-abilities 10Mfull 100Mfull 1Gfull
   181|   179| mdix normal
   182|   180| mtu 12266
   183|   181|!
   184|   182|interface ten-gigabit-ethernet 1/1/2
   185|   183| shutdown
   186|   184| no negotiation
   187|   185| duplex full
   188|   186| speed 10G
   189|   187| advertising-abilities 10Mfull 100Mfull 1Gfull
   190|   188| mdix normal
   191|   189| mtu 12266
   192|   190|!
   193|   191|interface ten-gigabit-ethernet 1/1/3
   194|   192| shutdown
   195|   193| no negotiation
   196|   194| duplex full
   197|   195| speed 10G
   198|   196| advertising-abilities 10Mfull 100Mfull 1Gfull
   199|   197| mdix normal
   200|   198| mtu 12266
   201|   199|!
   202|   200|interface ten-gigabit-ethernet 1/1/4
   203|   201| no shutdown
   204|   202| no negotiation
   205|   203| duplex full
   206|   204| speed 10G
   207|   205| advertising-abilities 10Mfull 100Mfull 1Gfull
   208|   206| mdix normal
   209|   207| mtu 12266
   210|   208|!
   211|   209|interface l3 L3_VLAN1142_MPLS
   212|   210| lower-layer-if vlan 1142
   213|   211| ipv4 address 10.244.142.2/30
   214|   212|!
   215|   213|interface mgmt 1/1/1
   216|   214| ipv4 address 192.168.0.25/24
   217|   215|!
   218|   216|interface loopback 0
   219|   217| ipv4 address 10.244.188.42/32
   220|   218|!
   221|   219|clock timezone BRA -3
   222|   220|hostname SW1POP42_ALIANCA
   223|   221|telnet-server enabled
   224|   222|oam
   225|   223| efm
   226|   224|  interface gigabit-ethernet-1/1/1
   227|   225|   mode passive
   228|   226|  !
   229|   227|  interface gigabit-ethernet-1/1/2
   230|   228|   mode passive
   231|   229|  !
   232|   230|  interface gigabit-ethernet-1/1/3
   233|   231|   mode passive
   234|   232|  !
   235|   233|  interface gigabit-ethernet-1/1/4
   236|   234|   mode passive
   237|   235|  !
   238|   236|  interface gigabit-ethernet-1/1/5
   239|   237|   mode passive
   240|   238|  !
   241|   239|  interface gigabit-ethernet-1/1/6
   242|   240|   mode passive
   243|   241|  !
   244|   242|  interface gigabit-ethernet-1/1/7
   245|   243|   mode passive
   246|   244|  !
   247|   245|  interface gigabit-ethernet-1/1/8
   248|   246|   mode passive
   249|   247|  !
   250|   248|  interface ten-gigabit-ethernet-1/1/1
   251|   249|   mode passive
   252|   250|  !
   253|   251|  interface ten-gigabit-ethernet-1/1/2
   254|   252|   mode passive
   255|   253|  !
   256|   254|  interface ten-gigabit-ethernet-1/1/3
   257|   255|   mode passive
   258|   256|  !
   259|   257|  interface ten-gigabit-ethernet-1/1/4
   260|   258|   mode passive
   261|   259|  !
   262|   260| !
   263|   261|!
   264|   262|loopback-detection
   265|   263| destination-address alternative
   266|   264|!
   267|   265|mac-address-table
   268|   266| aging-time 600
   269|   267|!
   270|   268|layer2-control-protocol
   271|   269| tunnel-mac datacom
   272|   270| tunnel-priority 7
   273|   271|!
   274|   272|vrf global
   275|   273|!
   276|   274|vrf mgmt
   277|   275|!
   278|   276|router ospf 1 vrf global
   279|   277| router-id 10.244.188.42
   280|   278| redistribute static
   281|   279| !
   282|   280| area 0.0.0.0
   283|   281|  interface l3-L3_VLAN1142_MPLS
   284|   282|   cost 100
   285|   283|   network-type point-to-point
   286|   284|  !
   287|   285|  interface loopback-0
   288|   286|  !
   289|   287| !
   290|   288|!
   291|   289|dot1q
   292|   290| vlan 1142
   293|   291|  name VL_1142_SW1POP02_SW1POP42_MPLS
   294|   292|  interface ten-gigabit-ethernet-1/1/1
   295|   293|  !
   296|   294|  interface ten-gigabit-ethernet-1/1/2
   297|   295|  !
   298|   296|  interface ten-gigabit-ethernet-1/1/3
   299|   297|  !
   300|   298|  interface ten-gigabit-ethernet-1/1/4
   301|   299|  !
   302|   300| !
   303|   301|!
   304|   302|license mpls enabled
   305|   303|license mpls key ***
   306|   304|remote-devices
   307|   305| interface gigabit-ethernet-1/1/1
   308|   306| !
   309|   307| interface gigabit-ethernet-1/1/2
   310|   308| !
   311|   309| interface gigabit-ethernet-1/1/3
   312|   310| !
   313|   311| interface gigabit-ethernet-1/1/4
   314|   312| !
   315|   313| interface gigabit-ethernet-1/1/5
   316|   314| !
   317|   315| interface gigabit-ethernet-1/1/6
   318|   316| !
   319|   317| interface gigabit-ethernet-1/1/7
   320|   318| !
   321|   319| interface gigabit-ethernet-1/1/8
   322|   320| !
   323|   321| interface ten-gigabit-ethernet-1/1/1
   324|   322| !
   325|   323| interface ten-gigabit-ethernet-1/1/2
   326|   324| !
   327|   325| interface ten-gigabit-ethernet-1/1/3
   328|   326| !
   329|   327| interface ten-gigabit-ethernet-1/1/4
   330|   328| !
   331|   329|!
   332|   330|SW1POP42_ALIANCA#
   333|   331|```
   334|   332|
```

## 🗒️ Observações
- {{notes}}
