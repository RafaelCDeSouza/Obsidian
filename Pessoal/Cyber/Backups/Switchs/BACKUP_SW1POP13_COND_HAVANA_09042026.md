[[SW1POP13]]

     1|```kotlin
     2|(admin@10.244.188.13) Password:
     3|Welcome to the DmOS CLI
     4|admin connected from 10.244.19.90 using ssh on SW1POP13_COND_HAVANA
     5|SW1POP13_COND_HAVANA# show running-config
     6|aaa authentication-order [ local ]
     7|aaa user admin
     8| password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
     9| group admin
    10|!
    11|aaa user zandona
    12| password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
    13| group admin
    14|!
    15|mpls ldp
    16| lsr-id loopback-0
    17|  interface l3-L3_VLAN1113_MPLS1
    18|  !
    19|  interface l3-L3_VLAN1145_MPLS
    20|  !
    21|  interface l3-L3_VLAN1213_OSPF1
    22|  !
    23|  neighbor targeted 10.244.188.2
    24|  !
    25|  neighbor targeted 10.244.189.0
    26|  !
    27|  neighbor targeted 10.244.188.5
    28|  !
    29|  neighbor targeted 10.244.189.12
    30|  !
    31| !
    32|!
    33|mpls l2vpn
    34| vpls-group POP00-02_POP13_C_HAVANA
    35|  vpn VSI_131_POP0-2_POP13_C_HAV_OLT1
    36|   vfi
    37|    pw-type ethernet
    38|    neighbor 10.244.188.2
    39|     pw-id 131
    40|    !
    41|    neighbor 10.244.189.0
    42|     pw-id 131
    43|    !
    44|   !
    45|   bridge-domain
    46|    dot1q 131
    47|    bridge-mtu 9000
    48|    access-interface lag-1
    49|    !
    50|   !
    51|  !
    52|  vpn VSI_133_POP0-2_POP13_C_HAV_OLT1
    53|   vfi
    54|    pw-type ethernet
    55|    neighbor 10.244.188.2
    56|     pw-id 133
    57|    !
    58|    neighbor 10.244.189.0
    59|     pw-id 133
    60|    !
    61|   !
    62|   bridge-domain
    63|    dot1q 133
    64|    bridge-mtu 9000
    65|    access-interface lag-1
    66|    !
    67|   !
    68|  !
    69|  vpn VSI_3107_POP00_POP02_TR_POA_SEG
    70|   vfi
    71|    pw-type ethernet
    72|    neighbor 10.244.189.0
    73|     pw-id 3107
    74|    !
    75|   !
    76|   bridge-domain
    77|    dot1q 3107
    78|    bridge-mtu 9000
    79|    access-interface lag-1
    80|    !
    81|   !
    82|  !
    83|  vpn VSI_3907_POP02-42_TR1_ALIANCA
    84|   vfi
    85|    pw-type ethernet
    86|    neighbor 10.244.188.2
    87|     pw-id 3907
    88|    !
    89|   !
    90|   bridge-domain
    91|    dot1q 3907
    92|    bridge-mtu 9000
    93|    access-interface lag-1
    94|    !
    95|   !
    96|  !
    97| !
    98| vpls-group POP12_BETANIA_POP13_C_HAVANA
    99|  vpn 3510
   100|   vfi
   101|    pw-type ethernet
   102|    neighbor 10.244.189.12
   103|     pw-id 3510
   104|    !
   105|   !
   106|   bridge-domain
   107|    dot1q 3510
   108|    bridge-mtu 9000
   109|    access-interface lag-1
   110|    !
   111|   !
   112|  !
   113| !
   114| vpls-group POP13_C_HAVANA_POP05_M_RINCAO
   115|  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
   116|   vfi
   117|    pw-type ethernet
   118|    neighbor 10.244.188.5
   119|     pw-id 3540
   120|    !
   121|   !
   122|   bridge-domain
   123|    dot1q 3540
   124|    bridge-mtu 9000
   125|    access-interface lag-1
   126|    !
   127|   !
   128|  !
   129| !
   130|!
   131|snmp system location -29.811147,-51.152546
   132|snmp traps config-commit
   133|snmp traps cpu-core
   134|snmp traps cpu-load
   135|snmp traps link-status
   136|snmp traps login-success
   137|snmp agent enabled
   138|snmp agent version v2c
   139|snmp agent version v3
   140|snmp community CyberWeb
   141| sec-name CyberWeb
   142|!
   143|snmp community public
   144| sec-name public
   145|!
   146|snmp notify std_v1_trap
   147| tag std_v1_trap
   148|!
   149|snmp notify std_v2_inform
   150| tag std_v2_inform
   151| type inform
   152|!
   153|snmp notify std_v2_trap
   154| tag std_v2_trap
   155|!
   156|snmp notify std_v3_inform
   157| tag std_v3_inform
   158| type inform
   159|!
   160|snmp notify std_v3_trap
   161| tag std_v3_trap
   162|!
   163|snmp vacm group CyberWeb
   164| member CyberWeb
   165|  sec-model [ v2c ]
   166| !
   167| access "" v2c no-auth-no-priv
   168|  read-view root
   169|  notify-view root
   170| !
   171|!
   172|snmp vacm group public
   173| member public
   174|  sec-model [ v2c ]
   175| !
   176| access "" v2c no-auth-no-priv
   177|  read-view root
   178|  write-view root
   179|  notify-view root
   180| !
   181|!
   182|snmp vacm view root
   183| subtree 1.3
   184|  included
   185| !
   186|!
   187|interface gigabit-ethernet 1/1/1
   188| description SW1POP13_P01__OLT1POP13_P_MGNT
   189| no shutdown
   190| negotiation
   191| duplex full
   192| speed 100M
   193| advertising-abilities 10Mfull 100Mfull 1Gfull
   194| mdix auto
   195| mtu 12266
   196|!
   197|interface gigabit-ethernet 1/1/2
   198| shutdown
   199| negotiation
   200| duplex full
   201| speed 100M
   202| advertising-abilities 10Mfull 100Mfull 1Gfull
   203| mdix auto
   204| mtu 12266
   205|!
   206|interface gigabit-ethernet 1/1/3
   207| shutdown
   208| negotiation
   209| duplex full
   210| speed 100M
   211| advertising-abilities 10Mfull 100Mfull 1Gfull
   212| mdix auto
   213| mtu 12266
   214|!
   215|interface gigabit-ethernet 1/1/4
   216| shutdown
   217| negotiation
   218| duplex full
   219| speed 100M
   220| advertising-abilities 10Mfull 100Mfull 1Gfull
   221| mdix auto
   222| mtu 12266
   223|!
   224|interface gigabit-ethernet 1/1/5
   225| description LAG1_PG05-06__OLT1POP13_LAG1_P00-01
   226| no shutdown
   227| negotiation
   228| duplex full
   229| speed 1G
   230| advertising-abilities 10Mfull 100Mfull 1Gfull
   231| mdix normal
   232| mtu 12266
   233|!
   234|interface gigabit-ethernet 1/1/6
   235| description LAG1_PG05-06__OLT1POP13_LAG1_P00-01
   236| no shutdown
   237| negotiation
   238| duplex full
   239| speed 1G
   240| advertising-abilities 10Mfull 100Mfull 1Gfull
   241| mdix normal
   242| mtu 12266
   243|!
   244|interface gigabit-ethernet 1/1/7
   245| shutdown
   246| negotiation
   247| duplex full
   248| speed 1G
   249| advertising-abilities 10Mfull 100Mfull 1Gfull
   250| mdix normal
   251| mtu 12266
   252|!
   253|interface gigabit-ethernet 1/1/8
   254| shutdown
   255| negotiation
   256| duplex full
   257| speed 1G
   258| advertising-abilities 10Mfull 100Mfull 1Gfull
   259| mdix normal
   260| mtu 12266
   261|!
   262|interface ten-gigabit-ethernet 1/1/1
   263| description PTP_SW1POP13_PX01_SW1POP45_PX01
   264| no shutdown
   265| no negotiation
   266| duplex full
   267| speed 10G
   268| advertising-abilities 10Mfull 100Mfull 1Gfull
   269| mdix normal
   270| mtu 12266
   271|!
   272|interface ten-gigabit-ethernet 1/1/2
   273| description PTP_SW1POP02_PX12_SW1POP13_PX02
   274| no shutdown
   275| no negotiation
   276| duplex full
   277| speed 10G
   278| advertising-abilities 10Mfull 100Mfull 1Gfull
   279| mdix normal
   280| mtu 12266
   281|!
   282|interface ten-gigabit-ethernet 1/1/3
   283| description PTP_SW1POP13_PX03_SW1POP65_PX03
   284| no shutdown
   285| no negotiation
   286| duplex full
   287| speed 10G
   288| advertising-abilities 10Mfull 100Mfull 1Gfull
   289| mdix normal
   290| mtu 12266
   291|!
   292|interface ten-gigabit-ethernet 1/1/4
   293| description PTP_SW1POP13_PX04_SW1POP18_PX04
   294| no shutdown
   295| no negotiation
   296| duplex full
   297| speed 10G
   298| advertising-abilities 10Mfull 100Mfull 1Gfull
   299| mdix normal
   300| mtu 12266
   301|!
   302|interface l3 L3_VLAN1113_MPLS1
   303| lower-layer-if vlan 1113
   304| ipv4 address 10.244.113.2/30
   305|!
   306|interface l3 L3_VLAN1145_MPLS
   307| lower-layer-if vlan 1145
   308| ipv4 address 10.244.145.1/30
   309|!
   310|interface l3 L3_VLAN1213_OSPF1
   311| lower-layer-if vlan 1213
   312| ipv4 address 10.244.113.6/30
   313|!
   314|interface l3 L3_VLAN1265_OSPF1
   315| lower-layer-if vlan 1265
   316| ipv4 address 10.244.165.5/30
   317|!
   318|interface mgmt 1/1/1
   319| ipv4 address 192.168.0.25/24
   320|!
   321|interface loopback 0
   322| ipv4 address 10.244.188.13/32
   323|!
   324|clock timezone BRA -3
   325|hostname SW1POP13_COND_HAVANA
   326|telnet-server enabled
   327|oam
   328| efm
   329|  interface gigabit-ethernet-1/1/1
   330|   mode passive
   331|  !
   332|  interface gigabit-ethernet-1/1/2
   333|   mode passive
   334|  !
   335|  interface gigabit-ethernet-1/1/3
   336|   mode passive
   337|  !
   338|  interface gigabit-ethernet-1/1/4
   339|   mode passive
   340|  !
   341|  interface gigabit-ethernet-1/1/5
   342|   mode passive
   343|  !
   344|  interface gigabit-ethernet-1/1/6
   345|   mode passive
   346|  !
   347|  interface gigabit-ethernet-1/1/7
   348|   mode passive
   349|  !
   350|  interface gigabit-ethernet-1/1/8
   351|   mode passive
   352|  !
   353|  interface ten-gigabit-ethernet-1/1/1
   354|   mode passive
   355|  !
   356|  interface ten-gigabit-ethernet-1/1/2
   357|   mode passive
   358|  !
   359|  interface ten-gigabit-ethernet-1/1/3
   360|   mode passive
   361|  !
   362|  interface ten-gigabit-ethernet-1/1/4
   363|   mode passive
   364|  !
   365| !
   366|!
   367|loopback-detection
   368| destination-address alternative
   369|!
   370|mac-address-table
   371| aging-time 600
   372|!
   373|layer2-control-protocol
   374| tunnel-mac datacom
   375| tunnel-priority 7
   376|!
   377|switchport
   378| interface gigabit-ethernet-1/1/1
   379|  native-vlan
   380|   vlan-id 130
   381|  !
   382| !
   383|!
   384|vrf global
   385|!
   386|vrf mgmt
   387|!
   388|router ospf 1 vrf global
   389| router-id 10.244.188.13
   390| redistribute static
   391| !
   392| area 0.0.0.0
   393|  interface l3-L3_VLAN1113_MPLS1
   394|   cost 10
   395|   bfd
   396|    session-type desired
   397|   !
   398|   network-type point-to-point
   399|  !
   400|  interface l3-L3_VLAN1145_MPLS
   401|   cost 10
   402|   bfd
   403|    session-type desired
   404|   !
   405|   network-type point-to-point
   406|  !
   407|  interface l3-L3_VLAN1213_OSPF1
   408|   cost 10
   409|   bfd
   410|    session-type desired
   411|   !
   412|   network-type point-to-point
   413|  !
   414|  interface l3-L3_VLAN1265_OSPF1
   415|   cost 10
   416|   bfd
   417|    session-type desired
   418|   !
   419|   network-type point-to-point
   420|  !
   421|  interface loopback-0
   422|  !
   423| !
   424|!
   425|dot1q
   426| vlan 21,3106
   427|  interface lag-1
   428|  !
   429|  interface ten-gigabit-ethernet-1/1/2
   430|  !
   431| !
   432| vlan 130
   433|  interface gigabit-ethernet-1/1/1
   434|    untagged
   435|  !
   436|  interface lag-1
   437|  !
   438|  interface ten-gigabit-ethernet-1/1/2
   439|  !
   440|  interface ten-gigabit-ethernet-1/1/3
   441|  !
   442|  interface ten-gigabit-ethernet-1/1/4
   443|  !
   444| !
   445| vlan 1113
   446|  interface ten-gigabit-ethernet-1/1/3
   447|  !
   448| !
   449| vlan 1118
   450|  interface ten-gigabit-ethernet-1/1/2
   451|  !
   452|  interface ten-gigabit-ethernet-1/1/3
   453|  !
   454|  interface ten-gigabit-ethernet-1/1/4
   455|  !
   456| !
   457| vlan 1145
   458|  name VLAN1145_SW1POP13_SW1POP45_MPLS
   459|  interface ten-gigabit-ethernet-1/1/1
   460|  !
   461| !
   462| vlan 1213
   463|  name VLAN1213_SW1POP02_SW1POP13_OSPF
   464|  interface ten-gigabit-ethernet-1/1/2
   465|  !
   466| !
   467| vlan 1219
   468|  interface ten-gigabit-ethernet-1/1/2
   469|  !
   470|  interface ten-gigabit-ethernet-1/1/3
   471|  !
   472| !
   473| vlan 1265
   474|  name VLAN1265_SW1POP13_SW1POP65_OSPF
   475|  interface ten-gigabit-ethernet-1/1/1
   476|  !
   477| !
   478| vlan 1365
   479|  name VLAN1365_SW2POP65_POP13_SW1POP02
   480|  interface ten-gigabit-ethernet-1/1/2
   481|  !
   482|  interface ten-gigabit-ethernet-1/1/3
   483|  !
   484| !
   485| vlan 3005
   486|  name VLAN_3005_TRANSP_L2_TELIUM
   487|  interface lag-1
   488|  !
   489|  interface ten-gigabit-ethernet-1/1/3
   490|  !
   491|  interface ten-gigabit-ethernet-1/1/4
   492|  !
   493| !
   494| vlan 3104-3105,3964
   495|  interface lag-1
   496|  !
   497|  interface ten-gigabit-ethernet-1/1/2
   498|  !
   499|  interface ten-gigabit-ethernet-1/1/3
   500|  !
   501| !
   502| vlan 3108
   503|  name VLAN_3108_POA_MAIS_SEGURA
   504|  interface lag-1
   505|  !
   506|  interface ten-gigabit-ethernet-1/1/3
   507|  !
   508|  interface ten-gigabit-ethernet-1/1/4
   509|  !
   510| !
   511|!
   512|link-aggregation
   513| interface lag 1
   514|  description SW1POP13_LAG1_PG05-06__OLT1POP13_LAG1_P00-01
   515|  mode active
   516|  interface gigabit-ethernet-1/1/5
   517|  !
   518|  interface gigabit-ethernet-1/1/6
   519|  !
   520| !
   521|!
   522|license mpls enabled
   523|license mpls key ***
   524|remote-devices
   525| interface gigabit-ethernet-1/1/1
   526| !
   527| interface gigabit-ethernet-1/1/2
   528| !
   529| interface gigabit-ethernet-1/1/3
   530| !
   531| interface gigabit-ethernet-1/1/4
   532| !
   533| interface gigabit-ethernet-1/1/5
   534| !
   535| interface gigabit-ethernet-1/1/6
   536| !
   537| interface gigabit-ethernet-1/1/7
   538| !
   539| interface gigabit-ethernet-1/1/8
   540| !
   541| interface ten-gigabit-ethernet-1/1/1
   542| !
   543| interface ten-gigabit-ethernet-1/1/2
   544| !
   545| interface ten-gigabit-ethernet-1/1/3
   546| !
   547| interface ten-gigabit-ethernet-1/1/4
   548| !
   549|!
   550|SW1POP13_COND_HAVANA#
   551|```
   552|