---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP13

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP13 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP13]]
     2|
     3|     1|```kotlin
     4|     2|(admin@10.244.188.13) Password:
     5|     3|Welcome to the DmOS CLI
     6|     4|admin connected from 10.244.19.90 using ssh on SW1POP13_COND_HAVANA
     7|     5|SW1POP13_COND_HAVANA# show running-config
     8|     6|aaa authentication-order [ local ]
     9|     7|aaa user admin
    10|     8| password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
    11|     9| group admin
    12|    10|!
    13|    11|aaa user zandona
    14|    12| password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
    15|    13| group admin
    16|    14|!
    17|    15|mpls ldp
    18|    16| lsr-id loopback-0
    19|    17|  interface l3-L3_VLAN1113_MPLS1
    20|    18|  !
    21|    19|  interface l3-L3_VLAN1145_MPLS
    22|    20|  !
    23|    21|  interface l3-L3_VLAN1213_OSPF1
    24|    22|  !
    25|    23|  neighbor targeted 10.244.188.2
    26|    24|  !
    27|    25|  neighbor targeted 10.244.189.0
    28|    26|  !
    29|    27|  neighbor targeted 10.244.188.5
    30|    28|  !
    31|    29|  neighbor targeted 10.244.189.12
    32|    30|  !
    33|    31| !
    34|    32|!
    35|    33|mpls l2vpn
    36|    34| vpls-group POP00-02_POP13_C_HAVANA
    37|    35|  vpn VSI_131_POP0-2_POP13_C_HAV_OLT1
    38|    36|   vfi
    39|    37|    pw-type ethernet
    40|    38|    neighbor 10.244.188.2
    41|    39|     pw-id 131
    42|    40|    !
    43|    41|    neighbor 10.244.189.0
    44|    42|     pw-id 131
    45|    43|    !
    46|    44|   !
    47|    45|   bridge-domain
    48|    46|    dot1q 131
    49|    47|    bridge-mtu 9000
    50|    48|    access-interface lag-1
    51|    49|    !
    52|    50|   !
    53|    51|  !
    54|    52|  vpn VSI_133_POP0-2_POP13_C_HAV_OLT1
    55|    53|   vfi
    56|    54|    pw-type ethernet
    57|    55|    neighbor 10.244.188.2
    58|    56|     pw-id 133
    59|    57|    !
    60|    58|    neighbor 10.244.189.0
    61|    59|     pw-id 133
    62|    60|    !
    63|    61|   !
    64|    62|   bridge-domain
    65|    63|    dot1q 133
    66|    64|    bridge-mtu 9000
    67|    65|    access-interface lag-1
    68|    66|    !
    69|    67|   !
    70|    68|  !
    71|    69|  vpn VSI_3107_POP00_POP02_TR_POA_SEG
    72|    70|   vfi
    73|    71|    pw-type ethernet
    74|    72|    neighbor 10.244.189.0
    75|    73|     pw-id 3107
    76|    74|    !
    77|    75|   !
    78|    76|   bridge-domain
    79|    77|    dot1q 3107
    80|    78|    bridge-mtu 9000
    81|    79|    access-interface lag-1
    82|    80|    !
    83|    81|   !
    84|    82|  !
    85|    83|  vpn VSI_3907_POP02-42_TR1_ALIANCA
    86|    84|   vfi
    87|    85|    pw-type ethernet
    88|    86|    neighbor 10.244.188.2
    89|    87|     pw-id 3907
    90|    88|    !
    91|    89|   !
    92|    90|   bridge-domain
    93|    91|    dot1q 3907
    94|    92|    bridge-mtu 9000
    95|    93|    access-interface lag-1
    96|    94|    !
    97|    95|   !
    98|    96|  !
    99|    97| !
   100|    98| vpls-group POP12_BETANIA_POP13_C_HAVANA
   101|    99|  vpn 3510
   102|   100|   vfi
   103|   101|    pw-type ethernet
   104|   102|    neighbor 10.244.189.12
   105|   103|     pw-id 3510
   106|   104|    !
   107|   105|   !
   108|   106|   bridge-domain
   109|   107|    dot1q 3510
   110|   108|    bridge-mtu 9000
   111|   109|    access-interface lag-1
   112|   110|    !
   113|   111|   !
   114|   112|  !
   115|   113| !
   116|   114| vpls-group POP13_C_HAVANA_POP05_M_RINCAO
   117|   115|  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
   118|   116|   vfi
   119|   117|    pw-type ethernet
   120|   118|    neighbor 10.244.188.5
   121|   119|     pw-id 3540
   122|   120|    !
   123|   121|   !
   124|   122|   bridge-domain
   125|   123|    dot1q 3540
   126|   124|    bridge-mtu 9000
   127|   125|    access-interface lag-1
   128|   126|    !
   129|   127|   !
   130|   128|  !
   131|   129| !
   132|   130|!
   133|   131|snmp system location -29.811147,-51.152546
   134|   132|snmp traps config-commit
   135|   133|snmp traps cpu-core
   136|   134|snmp traps cpu-load
   137|   135|snmp traps link-status
   138|   136|snmp traps login-success
   139|   137|snmp agent enabled
   140|   138|snmp agent version v2c
   141|   139|snmp agent version v3
   142|   140|snmp community CyberWeb
   143|   141| sec-name CyberWeb
   144|   142|!
   145|   143|snmp community public
   146|   144| sec-name public
   147|   145|!
   148|   146|snmp notify std_v1_trap
   149|   147| tag std_v1_trap
   150|   148|!
   151|   149|snmp notify std_v2_inform
   152|   150| tag std_v2_inform
   153|   151| type inform
   154|   152|!
   155|   153|snmp notify std_v2_trap
   156|   154| tag std_v2_trap
   157|   155|!
   158|   156|snmp notify std_v3_inform
   159|   157| tag std_v3_inform
   160|   158| type inform
   161|   159|!
   162|   160|snmp notify std_v3_trap
   163|   161| tag std_v3_trap
   164|   162|!
   165|   163|snmp vacm group CyberWeb
   166|   164| member CyberWeb
   167|   165|  sec-model [ v2c ]
   168|   166| !
   169|   167| access "" v2c no-auth-no-priv
   170|   168|  read-view root
   171|   169|  notify-view root
   172|   170| !
   173|   171|!
   174|   172|snmp vacm group public
   175|   173| member public
   176|   174|  sec-model [ v2c ]
   177|   175| !
   178|   176| access "" v2c no-auth-no-priv
   179|   177|  read-view root
   180|   178|  write-view root
   181|   179|  notify-view root
   182|   180| !
   183|   181|!
   184|   182|snmp vacm view root
   185|   183| subtree 1.3
   186|   184|  included
   187|   185| !
   188|   186|!
   189|   187|interface gigabit-ethernet 1/1/1
   190|   188| description SW1POP13_P01__OLT1POP13_P_MGNT
   191|   189| no shutdown
   192|   190| negotiation
   193|   191| duplex full
   194|   192| speed 100M
   195|   193| advertising-abilities 10Mfull 100Mfull 1Gfull
   196|   194| mdix auto
   197|   195| mtu 12266
   198|   196|!
   199|   197|interface gigabit-ethernet 1/1/2
   200|   198| shutdown
   201|   199| negotiation
   202|   200| duplex full
   203|   201| speed 100M
   204|   202| advertising-abilities 10Mfull 100Mfull 1Gfull
   205|   203| mdix auto
   206|   204| mtu 12266
   207|   205|!
   208|   206|interface gigabit-ethernet 1/1/3
   209|   207| shutdown
   210|   208| negotiation
   211|   209| duplex full
   212|   210| speed 100M
   213|   211| advertising-abilities 10Mfull 100Mfull 1Gfull
   214|   212| mdix auto
   215|   213| mtu 12266
   216|   214|!
   217|   215|interface gigabit-ethernet 1/1/4
   218|   216| shutdown
   219|   217| negotiation
   220|   218| duplex full
   221|   219| speed 100M
   222|   220| advertising-abilities 10Mfull 100Mfull 1Gfull
   223|   221| mdix auto
   224|   222| mtu 12266
   225|   223|!
   226|   224|interface gigabit-ethernet 1/1/5
   227|   225| description LAG1_PG05-06__OLT1POP13_LAG1_P00-01
   228|   226| no shutdown
   229|   227| negotiation
   230|   228| duplex full
   231|   229| speed 1G
   232|   230| advertising-abilities 10Mfull 100Mfull 1Gfull
   233|   231| mdix normal
   234|   232| mtu 12266
   235|   233|!
   236|   234|interface gigabit-ethernet 1/1/6
   237|   235| description LAG1_PG05-06__OLT1POP13_LAG1_P00-01
   238|   236| no shutdown
   239|   237| negotiation
   240|   238| duplex full
   241|   239| speed 1G
   242|   240| advertising-abilities 10Mfull 100Mfull 1Gfull
   243|   241| mdix normal
   244|   242| mtu 12266
   245|   243|!
   246|   244|interface gigabit-ethernet 1/1/7
   247|   245| shutdown
   248|   246| negotiation
   249|   247| duplex full
   250|   248| speed 1G
   251|   249| advertising-abilities 10Mfull 100Mfull 1Gfull
   252|   250| mdix normal
   253|   251| mtu 12266
   254|   252|!
   255|   253|interface gigabit-ethernet 1/1/8
   256|   254| shutdown
   257|   255| negotiation
   258|   256| duplex full
   259|   257| speed 1G
   260|   258| advertising-abilities 10Mfull 100Mfull 1Gfull
   261|   259| mdix normal
   262|   260| mtu 12266
   263|   261|!
   264|   262|interface ten-gigabit-ethernet 1/1/1
   265|   263| description PTP_SW1POP13_PX01_SW1POP45_PX01
   266|   264| no shutdown
   267|   265| no negotiation
   268|   266| duplex full
   269|   267| speed 10G
   270|   268| advertising-abilities 10Mfull 100Mfull 1Gfull
   271|   269| mdix normal
   272|   270| mtu 12266
   273|   271|!
   274|   272|interface ten-gigabit-ethernet 1/1/2
   275|   273| description PTP_SW1POP02_PX12_SW1POP13_PX02
   276|   274| no shutdown
   277|   275| no negotiation
   278|   276| duplex full
   279|   277| speed 10G
   280|   278| advertising-abilities 10Mfull 100Mfull 1Gfull
   281|   279| mdix normal
   282|   280| mtu 12266
   283|   281|!
   284|   282|interface ten-gigabit-ethernet 1/1/3
   285|   283| description PTP_SW1POP13_PX03_SW1POP65_PX03
   286|   284| no shutdown
   287|   285| no negotiation
   288|   286| duplex full
   289|   287| speed 10G
   290|   288| advertising-abilities 10Mfull 100Mfull 1Gfull
   291|   289| mdix normal
   292|   290| mtu 12266
   293|   291|!
   294|   292|interface ten-gigabit-ethernet 1/1/4
   295|   293| description PTP_SW1POP13_PX04_SW1POP18_PX04
   296|   294| no shutdown
   297|   295| no negotiation
   298|   296| duplex full
   299|   297| speed 10G
   300|   298| advertising-abilities 10Mfull 100Mfull 1Gfull
   301|   299| mdix normal
   302|   300| mtu 12266
   303|   301|!
   304|   302|interface l3 L3_VLAN1113_MPLS1
   305|   303| lower-layer-if vlan 1113
   306|   304| ipv4 address 10.244.113.2/30
   307|   305|!
   308|   306|interface l3 L3_VLAN1145_MPLS
   309|   307| lower-layer-if vlan 1145
   310|   308| ipv4 address 10.244.145.1/30
   311|   309|!
   312|   310|interface l3 L3_VLAN1213_OSPF1
   313|   311| lower-layer-if vlan 1213
   314|   312| ipv4 address 10.244.113.6/30
   315|   313|!
   316|   314|interface l3 L3_VLAN1265_OSPF1
   317|   315| lower-layer-if vlan 1265
   318|   316| ipv4 address 10.244.165.5/30
   319|   317|!
   320|   318|interface mgmt 1/1/1
   321|   319| ipv4 address 192.168.0.25/24
   322|   320|!
   323|   321|interface loopback 0
   324|   322| ipv4 address 10.244.188.13/32
   325|   323|!
   326|   324|clock timezone BRA -3
   327|   325|hostname SW1POP13_COND_HAVANA
   328|   326|telnet-server enabled
   329|   327|oam
   330|   328| efm
   331|   329|  interface gigabit-ethernet-1/1/1
   332|   330|   mode passive
   333|   331|  !
   334|   332|  interface gigabit-ethernet-1/1/2
   335|   333|   mode passive
   336|   334|  !
   337|   335|  interface gigabit-ethernet-1/1/3
   338|   336|   mode passive
   339|   337|  !
   340|   338|  interface gigabit-ethernet-1/1/4
   341|   339|   mode passive
   342|   340|  !
   343|   341|  interface gigabit-ethernet-1/1/5
   344|   342|   mode passive
   345|   343|  !
   346|   344|  interface gigabit-ethernet-1/1/6
   347|   345|   mode passive
   348|   346|  !
   349|   347|  interface gigabit-ethernet-1/1/7
   350|   348|   mode passive
   351|   349|  !
   352|   350|  interface gigabit-ethernet-1/1/8
   353|   351|   mode passive
   354|   352|  !
   355|   353|  interface ten-gigabit-ethernet-1/1/1
   356|   354|   mode passive
   357|   355|  !
   358|   356|  interface ten-gigabit-ethernet-1/1/2
   359|   357|   mode passive
   360|   358|  !
   361|   359|  interface ten-gigabit-ethernet-1/1/3
   362|   360|   mode passive
   363|   361|  !
   364|   362|  interface ten-gigabit-ethernet-1/1/4
   365|   363|   mode passive
   366|   364|  !
   367|   365| !
   368|   366|!
   369|   367|loopback-detection
   370|   368| destination-address alternative
   371|   369|!
   372|   370|mac-address-table
   373|   371| aging-time 600
   374|   372|!
   375|   373|layer2-control-protocol
   376|   374| tunnel-mac datacom
   377|   375| tunnel-priority 7
   378|   376|!
   379|   377|switchport
   380|   378| interface gigabit-ethernet-1/1/1
   381|   379|  native-vlan
   382|   380|   vlan-id 130
   383|   381|  !
   384|   382| !
   385|   383|!
   386|   384|vrf global
   387|   385|!
   388|   386|vrf mgmt
   389|   387|!
   390|   388|router ospf 1 vrf global
   391|   389| router-id 10.244.188.13
   392|   390| redistribute static
   393|   391| !
   394|   392| area 0.0.0.0
   395|   393|  interface l3-L3_VLAN1113_MPLS1
   396|   394|   cost 10
   397|   395|   bfd
   398|   396|    session-type desired
   399|   397|   !
   400|   398|   network-type point-to-point
   401|   399|  !
   402|   400|  interface l3-L3_VLAN1145_MPLS
   403|   401|   cost 10
   404|   402|   bfd
   405|   403|    session-type desired
   406|   404|   !
   407|   405|   network-type point-to-point
   408|   406|  !
   409|   407|  interface l3-L3_VLAN1213_OSPF1
   410|   408|   cost 10
   411|   409|   bfd
   412|   410|    session-type desired
   413|   411|   !
   414|   412|   network-type point-to-point
   415|   413|  !
   416|   414|  interface l3-L3_VLAN1265_OSPF1
   417|   415|   cost 10
   418|   416|   bfd
   419|   417|    session-type desired
   420|   418|   !
   421|   419|   network-type point-to-point
   422|   420|  !
   423|   421|  interface loopback-0
   424|   422|  !
   425|   423| !
   426|   424|!
   427|   425|dot1q
   428|   426| vlan 21,3106
   429|   427|  interface lag-1
   430|   428|  !
   431|   429|  interface ten-gigabit-ethernet-1/1/2
   432|   430|  !
   433|   431| !
   434|   432| vlan 130
   435|   433|  interface gigabit-ethernet-1/1/1
   436|   434|    untagged
   437|   435|  !
   438|   436|  interface lag-1
   439|   437|  !
   440|   438|  interface ten-gigabit-ethernet-1/1/2
   441|   439|  !
   442|   440|  interface ten-gigabit-ethernet-1/1/3
   443|   441|  !
   444|   442|  interface ten-gigabit-ethernet-1/1/4
   445|   443|  !
   446|   444| !
   447|   445| vlan 1113
   448|   446|  interface ten-gigabit-ethernet-1/1/3
   449|   447|  !
   450|   448| !
   451|   449| vlan 1118
   452|   450|  interface ten-gigabit-ethernet-1/1/2
   453|   451|  !
   454|   452|  interface ten-gigabit-ethernet-1/1/3
   455|   453|  !
   456|   454|  interface ten-gigabit-ethernet-1/1/4
   457|   455|  !
   458|   456| !
   459|   457| vlan 1145
   460|   458|  name VLAN1145_SW1POP13_SW1POP45_MPLS
   461|   459|  interface ten-gigabit-ethernet-1/1/1
   462|   460|  !
   463|   461| !
   464|   462| vlan 1213
   465|   463|  name VLAN1213_SW1POP02_SW1POP13_OSPF
   466|   464|  interface ten-gigabit-ethernet-1/1/2
   467|   465|  !
   468|   466| !
   469|   467| vlan 1219
   470|   468|  interface ten-gigabit-ethernet-1/1/2
   471|   469|  !
   472|   470|  interface ten-gigabit-ethernet-1/1/3
   473|   471|  !
   474|   472| !
   475|   473| vlan 1265
   476|   474|  name VLAN1265_SW1POP13_SW1POP65_OSPF
   477|   475|  interface ten-gigabit-ethernet-1/1/1
   478|   476|  !
   479|   477| !
   480|   478| vlan 1365
   481|   479|  name VLAN1365_SW2POP65_POP13_SW1POP02
   482|   480|  interface ten-gigabit-ethernet-1/1/2
   483|   481|  !
   484|   482|  interface ten-gigabit-ethernet-1/1/3
   485|   483|  !
   486|   484| !
   487|   485| vlan 3005
   488|   486|  name VLAN_3005_TRANSP_L2_TELIUM
   489|   487|  interface lag-1
   490|   488|  !
   491|   489|  interface ten-gigabit-ethernet-1/1/3
   492|   490|  !
   493|   491|  interface ten-gigabit-ethernet-1/1/4
   494|   492|  !
   495|   493| !
   496|   494| vlan 3104-3105,3964
   497|   495|  interface lag-1
   498|   496|  !
   499|   497|  interface ten-gigabit-ethernet-1/1/2
   500|   498|  !
   501|   499|  interface ten-gigabit-ethernet-1/1/3
   502|   500|  !
   503|   501| !
   504|   502| vlan 3108
   505|   503|  name VLAN_3108_POA_MAIS_SEGURA
   506|   504|  interface lag-1
   507|   505|  !
   508|   506|  interface ten-gigabit-ethernet-1/1/3
   509|   507|  !
   510|   508|  interface ten-gigabit-ethernet-1/1/4
   511|   509|  !
   512|   510| !
   513|   511|!
   514|   512|link-aggregation
   515|   513| interface lag 1
   516|   514|  description SW1POP13_LAG1_PG05-06__OLT1POP13_LAG1_P00-01
   517|   515|  mode active
   518|   516|  interface gigabit-ethernet-1/1/5
   519|   517|  !
   520|   518|  interface gigabit-ethernet-1/1/6
   521|   519|  !
   522|   520| !
   523|   521|!
   524|   522|license mpls enabled
   525|   523|license mpls key ***
   526|   524|remote-devices
   527|   525| interface gigabit-ethernet-1/1/1
   528|   526| !
   529|   527| interface gigabit-ethernet-1/1/2
   530|   528| !
   531|   529| interface gigabit-ethernet-1/1/3
   532|   530| !
   533|   531| interface gigabit-ethernet-1/1/4
   534|   532| !
   535|   533| interface gigabit-ethernet-1/1/5
   536|   534| !
   537|   535| interface gigabit-ethernet-1/1/6
   538|   536| !
   539|   537| interface gigabit-ethernet-1/1/7
   540|   538| !
   541|   539| interface gigabit-ethernet-1/1/8
   542|   540| !
   543|   541| interface ten-gigabit-ethernet-1/1/1
   544|   542| !
   545|   543| interface ten-gigabit-ethernet-1/1/2
   546|   544| !
   547|   545| interface ten-gigabit-ethernet-1/1/3
   548|   546| !
   549|   547| interface ten-gigabit-ethernet-1/1/4
   550|   548| !
   551|   549|!
   552|   550|SW1POP13_COND_HAVANA#
   553|   551|```
   554|   552|
```

## 🗒️ Observações
- {{notes}}
