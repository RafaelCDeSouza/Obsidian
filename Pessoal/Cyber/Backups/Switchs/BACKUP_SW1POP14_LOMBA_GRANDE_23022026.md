---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP14

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP14 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP14]]
     2|
     3|     1|```kotlin
     4|     2|SW1POP14_LOMBA_GRANDE# show running-config
     5|     3|aaa authentication-order [ local ]
     6|     4|aaa user admin
     7|     5| password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
     8|     6| group admin
     9|     7|!
    10|     8|aaa user zandona
    11|     9| password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
    12|    10| group admin
    13|    11|!
    14|    12|mpls ldp
    15|    13| lsr-id loopback-0
    16|    14|  interface l3-L3_VLAN1114_MPLS
    17|    15|  !
    18|    16|  interface l3-L3_VLAN2311_MPLS
    19|    17|  !
    20|    18|  neighbor targeted 10.244.189.0
    21|    19|  !
    22|    20|  neighbor targeted 10.244.188.1
    23|    21|  !
    24|    22|  neighbor targeted 10.244.188.2
    25|    23|  !
    26|    24| !
    27|    25|!
    28|    26|mpls l2vpn
    29|    27| vpls-group POP14_L_GRANDE_POP01_IX_SP
    30|    28|  vpn VSI_3057_POP01_POP14_TR_CDNTV
    31|    29|   vfi
    32|    30|    pw-type ethernet
    33|    31|    neighbor 10.244.188.1
    34|    32|     pw-id 3057
    35|    33|    !
    36|    34|   !
    37|    35|   bridge-domain
    38|    36|    dot1q 3057
    39|    37|    bridge-mtu 1600
    40|    38|    access-interface ten-gigabit-ethernet-1/1/3
    41|    39|    !
    42|    40|   !
    43|    41|  !
    44|    42| !
    45|    43| vpls-group POP14_L_GRANDE_POP02_POA
    46|    44|  vpn VSI_3214_BGP2_POA_POP14_LOMBA
    47|    45|   vfi
    48|    46|    pw-type ethernet
    49|    47|    neighbor 10.244.188.2
    50|    48|     pw-id 3214
    51|    49|    !
    52|    50|   !
    53|    51|   bridge-domain
    54|    52|    dot1q 3214
    55|    53|    bridge-mtu 9000
    56|    54|    access-interface gigabit-ethernet-1/1/5
    57|    55|    !
    58|    56|   !
    59|    57|  !
    60|    58| !
    61|    59|!
    62|    60|snmp system location -29.762990,-51.039995
    63|    61|snmp traps config-commit
    64|    62|snmp traps cpu-core
    65|    63|snmp traps cpu-load
    66|    64|snmp traps link-status
    67|    65|snmp traps login-success
    68|    66|snmp agent enabled
    69|    67|snmp agent version v2c
    70|    68|snmp agent version v3
    71|    69|snmp agent engine-id from-mac-address 18:81:ed:56:95:e3
    72|    70|snmp community CyberWeb
    73|    71| sec-name CyberWeb
    74|    72|!
    75|    73|snmp community public
    76|    74| sec-name public
    77|    75|!
    78|    76|snmp notify std_v1_trap
    79|    77| tag std_v1_trap
    80|    78|!
    81|    79|snmp notify std_v2_inform
    82|    80| tag std_v2_inform
    83|    81| type inform
    84|    82|!
    85|    83|snmp notify std_v2_trap
    86|    84| tag std_v2_trap
    87|    85|!
    88|    86|snmp notify std_v3_inform
    89|    87| tag std_v3_inform
    90|    88| type inform
    91|    89|!
    92|    90|snmp notify std_v3_trap
    93|    91| tag std_v3_trap
    94|    92|!
    95|    93|snmp vacm group CyberWeb
    96|    94| member CyberWeb
    97|    95|  sec-model [ v2c ]
    98|    96| !
    99|    97| access "" v2c no-auth-no-priv
   100|    98|  read-view root
   101|    99|  notify-view root
   102|   100| !
   103|   101|!
   104|   102|snmp vacm group public
   105|   103| member public
   106|   104|  sec-model [ v2c ]
   107|   105| !
   108|   106| access "" v2c no-auth-no-priv
   109|   107|  read-view root
   110|   108|  write-view root
   111|   109|  notify-view root
   112|   110| !
   113|   111|!
   114|   112|snmp vacm view root
   115|   113| subtree 1.3
   116|   114|  included
   117|   115| !
   118|   116|!
   119|   117|interface gigabit-ethernet 1/1/1
   120|   118| shutdown
   121|   119| negotiation
   122|   120| duplex full
   123|   121| speed 100M
   124|   122| advertising-abilities 10Mfull 100Mfull 1Gfull
   125|   123| mdix auto
   126|   124| mtu 12266
   127|   125|!
   128|   126|interface gigabit-ethernet 1/1/2
   129|   127| shutdown
   130|   128| negotiation
   131|   129| duplex full
   132|   130| speed 100M
   133|   131| advertising-abilities 10Mfull 100Mfull 1Gfull
   134|   132| mdix auto
   135|   133| mtu 12266
   136|   134|!
   137|   135|interface gigabit-ethernet 1/1/3
   138|   136| shutdown
   139|   137| negotiation
   140|   138| duplex full
   141|   139| speed 100M
   142|   140| advertising-abilities 10Mfull 100Mfull 1Gfull
   143|   141| mdix auto
   144|   142| mtu 12266
   145|   143|!
   146|   144|interface gigabit-ethernet 1/1/4
   147|   145| shutdown
   148|   146| negotiation
   149|   147| duplex full
   150|   148| speed 100M
   151|   149| advertising-abilities 10Mfull 100Mfull 1Gfull
   152|   150| mdix auto
   153|   151| mtu 12266
   154|   152|!
   155|   153|interface gigabit-ethernet 1/1/5
   156|   154| description PTP_SW1POP14_P05__CE14_SFP1
   157|   155| no shutdown
   158|   156| negotiation
   159|   157| duplex full
   160|   158| speed 1G
   161|   159| advertising-abilities 10Mfull 100Mfull 1Gfull
   162|   160| mdix normal
   163|   161| mtu 12266
   164|   162|!
   165|   163|interface gigabit-ethernet 1/1/6
   166|   164| shutdown
   167|   165| negotiation
   168|   166| duplex full
   169|   167| speed 1G
   170|   168| advertising-abilities 10Mfull 100Mfull 1Gfull
   171|   169| mdix normal
   172|   170| mtu 12266
   173|   171|!
   174|   172|interface gigabit-ethernet 1/1/7
   175|   173| shutdown
   176|   174| negotiation
   177|   175| duplex full
   178|   176| speed 1G
   179|   177| advertising-abilities 10Mfull 100Mfull 1Gfull
   180|   178| mdix normal
   181|   179| mtu 12266
   182|   180|!
   183|   181|interface gigabit-ethernet 1/1/8
   184|   182| description PTP_SW1POP14_P08_SWXXXISTI_Pxx
   185|   183| shutdown
   186|   184| negotiation
   187|   185| duplex full
   188|   186| speed 1G
   189|   187| advertising-abilities 10Mfull 100Mfull 1Gfull
   190|   188| mdix normal
   191|   189| mtu 12266
   192|   190|!
   193|   191|interface ten-gigabit-ethernet 1/1/1
   194|   192| description PTP_SW1POP14_PX01_SW1POP59_PX01
   195|   193| no shutdown
   196|   194| no negotiation
   197|   195| duplex full
   198|   196| speed 10G
   199|   197| advertising-abilities 10Mfull 100Mfull 1Gfull
   200|   198| mdix normal
   201|   199| mtu 12266
   202|   200|!
   203|   201|interface ten-gigabit-ethernet 1/1/2
   204|   202| description PTP_SW1POP14_PX02_SW1ISTI_PX16
   205|   203| no shutdown
   206|   204| no negotiation
   207|   205| duplex full
   208|   206| speed 10G
   209|   207| advertising-abilities 10Mfull 100Mfull 1Gfull
   210|   208| mdix normal
   211|   209| mtu 12266
   212|   210|!
   213|   211|interface ten-gigabit-ethernet 1/1/3
   214|   212| description PTP_SW1POP14_PX03_SW1CDNTV_PX02
   215|   213| no shutdown
   216|   214| no negotiation
   217|   215| duplex full
   218|   216| speed 10G
   219|   217| advertising-abilities 10Mfull 100Mfull 1Gfull
   220|   218| mdix normal
   221|   219| mtu 12266
   222|   220|!
   223|   221|interface ten-gigabit-ethernet 1/1/4
   224|   222| description PTP_SW1POP14_PX04_OLT1POP14_PXXX
   225|   223| shutdown
   226|   224| no negotiation
   227|   225| duplex full
   228|   226| speed 10G
   229|   227| advertising-abilities 10Mfull 100Mfull 1Gfull
   230|   228| mdix normal
   231|   229| mtu 12266
   232|   230|!
   233|   231|interface l3 L3_VLAN1114_MPLS
   234|   232| lower-layer-if vlan 1114
   235|   233| ipv4 address 10.244.114.2/30
   236|   234|!
   237|   235|interface l3 L3_VLAN2311_MPLS
   238|   236| lower-layer-if vlan 2311
   239|   237| ipv4 address 10.244.114.6/30
   240|   238|!
   241|   239|interface mgmt 1/1/1
   242|   240| ipv4 address 192.168.0.25/24
   243|   241|!
   244|   242|interface loopback 0
   245|   243| ipv4 address 10.244.188.14/32
   246|   244|!
   247|   245|clock timezone BRAZIL -3
   248|   246|hostname SW1POP14_LOMBA_GRANDE
   249|   247|telnet-server enabled
   250|   248|oam
   251|   249| efm
   252|   250|  interface gigabit-ethernet-1/1/1
   253|   251|   mode passive
   254|   252|  !
   255|   253|  interface gigabit-ethernet-1/1/2
   256|   254|   mode passive
   257|   255|  !
   258|   256|  interface gigabit-ethernet-1/1/3
   259|   257|   mode passive
   260|   258|  !
   261|   259|  interface gigabit-ethernet-1/1/4
   262|   260|   mode passive
   263|   261|  !
   264|   262|  interface gigabit-ethernet-1/1/5
   265|   263|   mode passive
   266|   264|  !
   267|   265|  interface gigabit-ethernet-1/1/6
   268|   266|   mode passive
   269|   267|  !
   270|   268|  interface gigabit-ethernet-1/1/7
   271|   269|   mode passive
   272|   270|  !
   273|   271|  interface gigabit-ethernet-1/1/8
   274|   272|   mode passive
   275|   273|  !
   276|   274|  interface ten-gigabit-ethernet-1/1/1
   277|   275|   mode passive
   278|   276|  !
   279|   277|  interface ten-gigabit-ethernet-1/1/2
   280|   278|   mode passive
   281|   279|  !
   282|   280|  interface ten-gigabit-ethernet-1/1/3
   283|   281|   mode passive
   284|   282|  !
   285|   283|  interface ten-gigabit-ethernet-1/1/4
   286|   284|   mode passive
   287|   285|  !
   288|   286| !
   289|   287|!
   290|   288|loopback-detection
   291|   289| destination-address alternative
   292|   290|!
   293|   291|mac-address-table
   294|   292| aging-time 600
   295|   293|!
   296|   294|layer2-control-protocol
   297|   295| tunnel-mac datacom
   298|   296| tunnel-priority 7
   299|   297|!
   300|   298|sntp client
   301|   299|sntp server 200.160.0.8
   302|   300|sntp server 200.189.40.8
   303|   301|vrf global
   304|   302|!
   305|   303|vrf mgmt
   306|   304|!
   307|   305|router ospf 1 vrf global
   308|   306| router-id 10.244.188.14
   309|   307| redistribute static
   310|   308| !
   311|   309| area 0.0.0.0
   312|   310|  interface l3-L3_VLAN1114_MPLS
   313|   311|   cost 100
   314|   312|   bfd
   315|   313|    session-type desired
   316|   314|   !
   317|   315|   network-type point-to-point
   318|   316|  !
   319|   317|  interface l3-L3_VLAN2311_MPLS
   320|   318|   cost 120
   321|   319|   bfd
   322|   320|    session-type desired
   323|   321|   !
   324|   322|   network-type point-to-point
   325|   323|  !
   326|   324|  interface loopback-0
   327|   325|  !
   328|   326| !
   329|   327|!
   330|   328|dot1q
   331|   329| vlan 140
   332|   330|  interface gigabit-ethernet-1/1/5
   333|   331|  !
   334|   332|  interface ten-gigabit-ethernet-1/1/4
   335|   333|  !
   336|   334| !
   337|   335| vlan 141
   338|   336|  interface gigabit-ethernet-1/1/5
   339|   337|  !
   340|   338|  interface ten-gigabit-ethernet-1/1/1
   341|   339|  !
   342|   340|  interface ten-gigabit-ethernet-1/1/4
   343|   341|  !
   344|   342| !
   345|   343| vlan 1114
   346|   344|  name VLAN_1114_SW1POP59_SW1POP14_OSPF
   347|   345|  interface ten-gigabit-ethernet-1/1/1
   348|   346|  !
   349|   347| !
   350|   348| vlan 2311
   351|   349|  name VLAN2311_SW1POP14_SW1POP00_TRVER
   352|   350|  interface ten-gigabit-ethernet-1/1/2
   353|   351|  !
   354|   352| !
   355|   353| vlan 3114
   356|   354|  interface gigabit-ethernet-1/1/5
   357|   355|  !
   358|   356|  interface ten-gigabit-ethernet-1/1/1
   359|   357|  !
   360|   358| !
   361|   359|!
   362|   360|license mpls enabled
   363|   361|license mpls key ***
   364|   362|remote-devices
   365|   363| interface gigabit-ethernet-1/1/1
   366|   364| !
   367|   365| interface gigabit-ethernet-1/1/2
   368|   366| !
   369|   367| interface gigabit-ethernet-1/1/3
   370|   368| !
   371|   369| interface gigabit-ethernet-1/1/4
   372|   370| !
   373|   371| interface gigabit-ethernet-1/1/5
   374|   372| !
   375|   373| interface gigabit-ethernet-1/1/6
   376|   374| !
   377|   375| interface gigabit-ethernet-1/1/7
   378|   376| !
   379|   377| interface gigabit-ethernet-1/1/8
   380|   378| !
   381|   379| interface ten-gigabit-ethernet-1/1/1
   382|   380| !
   383|   381| interface ten-gigabit-ethernet-1/1/2
   384|   382| !
   385|   383| interface ten-gigabit-ethernet-1/1/3
   386|   384| !
   387|   385| interface ten-gigabit-ethernet-1/1/4
   388|   386| !
   389|   387|!
   390|   388|
   391|   389|
   392|   390|```
   393|   391|
```

## 🗒️ Observações
- {{notes}}
