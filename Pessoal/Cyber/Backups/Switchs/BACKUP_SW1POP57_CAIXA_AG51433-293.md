---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP57

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP57 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP57]]
     2|
     3|     1|```kotlin
     4|     2|
     5|     3|DmOS
     6|     4|SW1POP57_CAIXA_AG51433-293 login: admin
     7|     5|Password:
     8|     6|Welcome to the DmOS CLI
     9|     7|admin connected from 127.0.0.1 using console on SW1POP57_CAIXA_AG51433-293
    10|     8|SW1POP57_CAIXA_AG51433-293# show running-config
    11|     9|aaa authentication-order [ local ]
    12|    10|aaa user admin
    13|    11| password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
    14|    12| group admin
    15|    13|!
    16|    14|aaa user zandona
    17|    15| password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
    18|    16| group admin
    19|    17|!
    20|    18|mpls ldp
    21|    19| lsr-id loopback-0
    22|    20|  interface l3-L3_VLAN1157_MPLS
    23|    21|  !
    24|    22|  neighbor targeted 10.244.188.2
    25|    23|  !
    26|    24| !
    27|    25|!
    28|    26|mpls l2vpn
    29|    27| vpls-group POP57_CAIXA_POP02_TELIUM
    30|    28|  vpn VSI_23_POP02-57
    31|    29|   vfi
    32|    30|    pw-type ethernet
    33|    31|    neighbor 10.244.188.2
    34|    32|     pw-id 23
    35|    33|    !
    36|    34|   !
    37|    35|   bridge-domain
    38|    36|    bridge-mtu 9000
    39|    37|    access-interface gigabit-ethernet-1/1/4
    40|    38|    !
    41|    39|   !
    42|    40|  !
    43|    41|  vpn VSI_3964_POP02-57
    44|    42|   vfi
    45|    43|    pw-type ethernet
    46|    44|    neighbor 10.244.188.2
    47|    45|     pw-id 3964
    48|    46|    !
    49|    47|   !
    50|    48|   bridge-domain
    51|    49|    bridge-mtu 9000
    52|    50|    access-interface ten-gigabit-ethernet-1/1/4
    53|    51|    !
    54|    52|   !
    55|    53|  !
    56|    54| !
    57|    55|!
    58|    56|snmp system location -29.762990,-51.039995
    59|    57|snmp traps config-commit
    60|    58|snmp traps cpu-core
    61|    59|snmp traps cpu-load
    62|    60|snmp traps link-status
    63|    61|snmp traps login-success
    64|    62|snmp agent enabled
    65|    63|snmp agent version v2c
    66|    64|snmp agent version v3
    67|    65|snmp agent engine-id from-mac-address 18:81:ed:56:95:e3
    68|    66|snmp community CyberWeb
    69|    67| sec-name CyberWeb
    70|    68|!
    71|    69|snmp community public
    72|    70| sec-name public
    73|    71|!
    74|    72|snmp notify std_v1_trap
    75|    73| tag std_v1_trap
    76|    74|!
    77|    75|snmp notify std_v2_inform
    78|    76| tag std_v2_inform
    79|    77| type inform
    80|    78|!
    81|    79|snmp notify std_v2_trap
    82|    80| tag std_v2_trap
    83|    81|!
    84|    82|snmp notify std_v3_inform
    85|    83| tag std_v3_inform
    86|    84| type inform
    87|    85|!
    88|    86|snmp notify std_v3_trap
    89|    87| tag std_v3_trap
    90|    88|!
    91|    89|snmp vacm group CyberWeb
    92|    90| member CyberWeb
    93|    91|  sec-model [ v2c ]
    94|    92| !
    95|    93| access "" v2c no-auth-no-priv
    96|    94|  read-view root
    97|    95|  notify-view root
    98|    96| !
    99|    97|!
   100|    98|snmp vacm group public
   101|    99| member public
   102|   100|  sec-model [ v2c ]
   103|   101| !
   104|   102| access "" v2c no-auth-no-priv
   105|   103|  read-view root
   106|   104|  write-view root
   107|   105|  notify-view root
   108|   106| !
   109|   107|!
   110|   108|snmp vacm view root
   111|   109| subtree 1.3
   112|   110|  included
   113|   111| !
   114|   112|!
   115|   113|interface gigabit-ethernet 1/1/1
   116|   114| shutdown
   117|   115| negotiation
   118|   116| duplex full
   119|   117| speed 100M
   120|   118| advertising-abilities 10Mfull 100Mfull 1Gfull
   121|   119| mdix auto
   122|   120| mtu 12266
   123|   121|!
   124|   122|interface gigabit-ethernet 1/1/2
   125|   123| shutdown
   126|   124| negotiation
   127|   125| duplex full
   128|   126| speed 100M
   129|   127| advertising-abilities 10Mfull 100Mfull 1Gfull
   130|   128| mdix auto
   131|   129| mtu 12266
   132|   130|!
   133|   131|interface gigabit-ethernet 1/1/3
   134|   132| shutdown
   135|   133| negotiation
   136|   134| duplex full
   137|   135| speed 100M
   138|   136| advertising-abilities 10Mfull 100Mfull 1Gfull
   139|   137| mdix auto
   140|   138| mtu 12266
   141|   139|!
   142|   140|interface gigabit-ethernet 1/1/4
   143|   141| no shutdown
   144|   142| negotiation
   145|   143| duplex full
   146|   144| speed 100M
   147|   145| advertising-abilities 10Mfull 100Mfull 1Gfull
   148|   146| mdix auto
   149|   147| mtu 12266
   150|   148|!
   151|   149|interface gigabit-ethernet 1/1/5
   152|   150| shutdown
   153|   151| negotiation
   154|   152| duplex full
   155|   153| speed 1G
   156|   154| advertising-abilities 10Mfull 100Mfull 1Gfull
   157|   155| mdix normal
   158|   156| mtu 12266
   159|   157|!
   160|   158|interface gigabit-ethernet 1/1/6
   161|   159| shutdown
   162|   160| negotiation
   163|   161| duplex full
   164|   162| speed 1G
   165|   163| advertising-abilities 10Mfull 100Mfull 1Gfull
   166|   164| mdix normal
   167|   165| mtu 12266
   168|   166|!
   169|   167|interface gigabit-ethernet 1/1/7
   170|   168| shutdown
   171|   169| negotiation
   172|   170| duplex full
   173|   171| speed 1G
   174|   172| advertising-abilities 10Mfull 100Mfull 1Gfull
   175|   173| mdix normal
   176|   174| mtu 12266
   177|   175|!
   178|   176|interface gigabit-ethernet 1/1/8
   179|   177| shutdown
   180|   178| negotiation
   181|   179| duplex full
   182|   180| speed 1G
   183|   181| advertising-abilities 10Mfull 100Mfull 1Gfull
   184|   182| mdix normal
   185|   183| mtu 12266
   186|   184|!
   187|   185|interface ten-gigabit-ethernet 1/1/1
   188|   186| shutdown
   189|   187| no negotiation
   190|   188| duplex full
   191|   189| speed 10G
   192|   190| advertising-abilities 10Mfull 100Mfull 1Gfull
   193|   191| mdix normal
   194|   192| mtu 12266
   195|   193|!
   196|   194|interface ten-gigabit-ethernet 1/1/2
   197|   195| description PTP_SW1POP57_PX02_SW1_POP02_PX02
   198|   196| no shutdown
   199|   197| no negotiation
   200|   198| duplex full
   201|   199| speed 10G
   202|   200| advertising-abilities 10Mfull 100Mfull 1Gfull
   203|   201| mdix normal
   204|   202| mtu 12266
   205|   203|!
   206|   204|interface ten-gigabit-ethernet 1/1/3
   207|   205| shutdown
   208|   206| no negotiation
   209|   207| duplex full
   210|   208| speed 10G
   211|   209| advertising-abilities 10Mfull 100Mfull 1Gfull
   212|   210| mdix normal
   213|   211| mtu 12266
   214|   212|!
   215|   213|interface ten-gigabit-ethernet 1/1/4
   216|   214| description PTP_SW1POP57_PX04_SW_CLIENTE_PX02
   217|   215| no shutdown
   218|   216| no negotiation
   219|   217| duplex full
   220|   218| speed 10G
   221|   219| advertising-abilities 10Mfull 100Mfull 1Gfull
   222|   220| mdix normal
   223|   221| mtu 12266
   224|   222|!
   225|   223|interface l3 L3_VLAN1157_MPLS
   226|   224| lower-layer-if vlan 1157
   227|   225| ipv4 address 10.244.157.2/30
   228|   226|!
   229|   227|interface mgmt 1/1/1
   230|   228| ipv4 address 192.168.0.25/24
   231|   229|!
   232|   230|interface loopback 0
   233|   231| ipv4 address 10.244.188.57/32
   234|   232|!
   235|   233|clock timezone BRAZIL -3
   236|   234|hostname SW1POP57_CAIXA_AG51433-293
   237|   235|telnet-server enabled
   238|   236|oam
   239|   237| efm
   240|   238|  interface gigabit-ethernet-1/1/1
   241|   239|   mode passive
   242|   240|  !
   243|   241|  interface gigabit-ethernet-1/1/2
   244|   242|   mode passive
   245|   243|  !
   246|   244|  interface gigabit-ethernet-1/1/3
   247|   245|   mode passive
   248|   246|  !
   249|   247|  interface gigabit-ethernet-1/1/4
   250|   248|   mode passive
   251|   249|  !
   252|   250|  interface gigabit-ethernet-1/1/5
   253|   251|   mode passive
   254|   252|  !
   255|   253|  interface gigabit-ethernet-1/1/6
   256|   254|   mode passive
   257|   255|  !
   258|   256|  interface gigabit-ethernet-1/1/7
   259|   257|   mode passive
   260|   258|  !
   261|   259|  interface gigabit-ethernet-1/1/8
   262|   260|   mode passive
   263|   261|  !
   264|   262|  interface ten-gigabit-ethernet-1/1/1
   265|   263|   mode passive
   266|   264|  !
   267|   265|  interface ten-gigabit-ethernet-1/1/2
   268|   266|   mode passive
   269|   267|  !
   270|   268|  interface ten-gigabit-ethernet-1/1/3
   271|   269|   mode passive
   272|   270|  !
   273|   271|  interface ten-gigabit-ethernet-1/1/4
   274|   272|   mode passive
   275|   273|  !
   276|   274| !
   277|   275|!
   278|   276|loopback-detection
   279|   277| destination-address alternative
   280|   278|!
   281|   279|mac-address-table
   282|   280| aging-time 600
   283|   281|!
   284|   282|layer2-control-protocol
   285|   283| tunnel-mac datacom
   286|   284| tunnel-priority 7
   287|   285|!
   288|   286|sntp client
   289|   287|sntp server 200.160.0.8
   290|   288|sntp server 200.189.40.8
   291|   289|switchport
   292|   290| interface ten-gigabit-ethernet-1/1/2
   293|   291| !
   294|   292|!
   295|   293|vrf global
   296|   294|!
   297|   295|vrf mgmt
   298|   296|!
   299|   297|router ospf 1 vrf global
   300|   298| router-id 10.244.188.57
   301|   299| redistribute static
   302|   300| !
   303|   301| area 0.0.0.0
   304|   302|  interface l3-L3_VLAN1157_MPLS
   305|   303|   cost 100
   306|   304|   bfd
   307|   305|    session-type desired
   308|   306|   !
   309|   307|   network-type point-to-point
   310|   308|  !
   311|   309|  interface loopback-0
   312|   310|  !
   313|   311| !
   314|   312|!
   315|   313|dot1q
   316|   314| vlan 1157
   317|   315|  name VL_1157_SW1POP02_SW1POP57_MPLS
   318|   316|  interface ten-gigabit-ethernet-1/1/2
   319|   317|  !
   320|   318| !
   321|   319|!
   322|   320|license mpls enabled
   323|   321|license mpls key ***
   324|   322|remote-devices
   325|   323| interface gigabit-ethernet-1/1/1
   326|   324| !
   327|   325| interface gigabit-ethernet-1/1/2
   328|   326| !
   329|   327| interface gigabit-ethernet-1/1/3
   330|   328| !
   331|   329| interface gigabit-ethernet-1/1/4
   332|   330| !
   333|   331| interface gigabit-ethernet-1/1/5
   334|   332| !
   335|   333| interface gigabit-ethernet-1/1/6
   336|   334| !
   337|   335| interface gigabit-ethernet-1/1/7
   338|   336| !
   339|   337| interface gigabit-ethernet-1/1/8
   340|   338| !
   341|   339| interface ten-gigabit-ethernet-1/1/1
   342|   340| !
   343|   341| interface ten-gigabit-ethernet-1/1/2
   344|   342| !
   345|   343| interface ten-gigabit-ethernet-1/1/3
   346|   344| !
   347|   345| interface ten-gigabit-ethernet-1/1/4
   348|   346| !
   349|   347|!
   350|   348|SW1POP57_CAIXA_AG51433-293#
   351|   349|
   352|   350|```
   353|   351|
```

## 🗒️ Observações
- {{notes}}
