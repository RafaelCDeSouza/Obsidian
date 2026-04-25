[[SW1POP14]]

     1|```kotlin
     2|SW1POP14_LOMBA_GRANDE# show running-config
     3|aaa authentication-order [ local ]
     4|aaa user admin
     5| password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
     6| group admin
     7|!
     8|aaa user zandona
     9| password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
    10| group admin
    11|!
    12|mpls ldp
    13| lsr-id loopback-0
    14|  interface l3-L3_VLAN1114_MPLS
    15|  !
    16|  interface l3-L3_VLAN2311_MPLS
    17|  !
    18|  neighbor targeted 10.244.189.0
    19|  !
    20|  neighbor targeted 10.244.188.1
    21|  !
    22|  neighbor targeted 10.244.188.2
    23|  !
    24| !
    25|!
    26|mpls l2vpn
    27| vpls-group POP14_L_GRANDE_POP01_IX_SP
    28|  vpn VSI_3057_POP01_POP14_TR_CDNTV
    29|   vfi
    30|    pw-type ethernet
    31|    neighbor 10.244.188.1
    32|     pw-id 3057
    33|    !
    34|   !
    35|   bridge-domain
    36|    dot1q 3057
    37|    bridge-mtu 1600
    38|    access-interface ten-gigabit-ethernet-1/1/3
    39|    !
    40|   !
    41|  !
    42| !
    43| vpls-group POP14_L_GRANDE_POP02_POA
    44|  vpn VSI_3214_BGP2_POA_POP14_LOMBA
    45|   vfi
    46|    pw-type ethernet
    47|    neighbor 10.244.188.2
    48|     pw-id 3214
    49|    !
    50|   !
    51|   bridge-domain
    52|    dot1q 3214
    53|    bridge-mtu 9000
    54|    access-interface gigabit-ethernet-1/1/5
    55|    !
    56|   !
    57|  !
    58| !
    59|!
    60|snmp system location -29.762990,-51.039995
    61|snmp traps config-commit
    62|snmp traps cpu-core
    63|snmp traps cpu-load
    64|snmp traps link-status
    65|snmp traps login-success
    66|snmp agent enabled
    67|snmp agent version v2c
    68|snmp agent version v3
    69|snmp agent engine-id from-mac-address 18:81:ed:56:95:e3
    70|snmp community CyberWeb
    71| sec-name CyberWeb
    72|!
    73|snmp community public
    74| sec-name public
    75|!
    76|snmp notify std_v1_trap
    77| tag std_v1_trap
    78|!
    79|snmp notify std_v2_inform
    80| tag std_v2_inform
    81| type inform
    82|!
    83|snmp notify std_v2_trap
    84| tag std_v2_trap
    85|!
    86|snmp notify std_v3_inform
    87| tag std_v3_inform
    88| type inform
    89|!
    90|snmp notify std_v3_trap
    91| tag std_v3_trap
    92|!
    93|snmp vacm group CyberWeb
    94| member CyberWeb
    95|  sec-model [ v2c ]
    96| !
    97| access "" v2c no-auth-no-priv
    98|  read-view root
    99|  notify-view root
   100| !
   101|!
   102|snmp vacm group public
   103| member public
   104|  sec-model [ v2c ]
   105| !
   106| access "" v2c no-auth-no-priv
   107|  read-view root
   108|  write-view root
   109|  notify-view root
   110| !
   111|!
   112|snmp vacm view root
   113| subtree 1.3
   114|  included
   115| !
   116|!
   117|interface gigabit-ethernet 1/1/1
   118| shutdown
   119| negotiation
   120| duplex full
   121| speed 100M
   122| advertising-abilities 10Mfull 100Mfull 1Gfull
   123| mdix auto
   124| mtu 12266
   125|!
   126|interface gigabit-ethernet 1/1/2
   127| shutdown
   128| negotiation
   129| duplex full
   130| speed 100M
   131| advertising-abilities 10Mfull 100Mfull 1Gfull
   132| mdix auto
   133| mtu 12266
   134|!
   135|interface gigabit-ethernet 1/1/3
   136| shutdown
   137| negotiation
   138| duplex full
   139| speed 100M
   140| advertising-abilities 10Mfull 100Mfull 1Gfull
   141| mdix auto
   142| mtu 12266
   143|!
   144|interface gigabit-ethernet 1/1/4
   145| shutdown
   146| negotiation
   147| duplex full
   148| speed 100M
   149| advertising-abilities 10Mfull 100Mfull 1Gfull
   150| mdix auto
   151| mtu 12266
   152|!
   153|interface gigabit-ethernet 1/1/5
   154| description PTP_SW1POP14_P05__CE14_SFP1
   155| no shutdown
   156| negotiation
   157| duplex full
   158| speed 1G
   159| advertising-abilities 10Mfull 100Mfull 1Gfull
   160| mdix normal
   161| mtu 12266
   162|!
   163|interface gigabit-ethernet 1/1/6
   164| shutdown
   165| negotiation
   166| duplex full
   167| speed 1G
   168| advertising-abilities 10Mfull 100Mfull 1Gfull
   169| mdix normal
   170| mtu 12266
   171|!
   172|interface gigabit-ethernet 1/1/7
   173| shutdown
   174| negotiation
   175| duplex full
   176| speed 1G
   177| advertising-abilities 10Mfull 100Mfull 1Gfull
   178| mdix normal
   179| mtu 12266
   180|!
   181|interface gigabit-ethernet 1/1/8
   182| description PTP_SW1POP14_P08_SWXXXISTI_Pxx
   183| shutdown
   184| negotiation
   185| duplex full
   186| speed 1G
   187| advertising-abilities 10Mfull 100Mfull 1Gfull
   188| mdix normal
   189| mtu 12266
   190|!
   191|interface ten-gigabit-ethernet 1/1/1
   192| description PTP_SW1POP14_PX01_SW1POP59_PX01
   193| no shutdown
   194| no negotiation
   195| duplex full
   196| speed 10G
   197| advertising-abilities 10Mfull 100Mfull 1Gfull
   198| mdix normal
   199| mtu 12266
   200|!
   201|interface ten-gigabit-ethernet 1/1/2
   202| description PTP_SW1POP14_PX02_SW1ISTI_PX16
   203| no shutdown
   204| no negotiation
   205| duplex full
   206| speed 10G
   207| advertising-abilities 10Mfull 100Mfull 1Gfull
   208| mdix normal
   209| mtu 12266
   210|!
   211|interface ten-gigabit-ethernet 1/1/3
   212| description PTP_SW1POP14_PX03_SW1CDNTV_PX02
   213| no shutdown
   214| no negotiation
   215| duplex full
   216| speed 10G
   217| advertising-abilities 10Mfull 100Mfull 1Gfull
   218| mdix normal
   219| mtu 12266
   220|!
   221|interface ten-gigabit-ethernet 1/1/4
   222| description PTP_SW1POP14_PX04_OLT1POP14_PXXX
   223| shutdown
   224| no negotiation
   225| duplex full
   226| speed 10G
   227| advertising-abilities 10Mfull 100Mfull 1Gfull
   228| mdix normal
   229| mtu 12266
   230|!
   231|interface l3 L3_VLAN1114_MPLS
   232| lower-layer-if vlan 1114
   233| ipv4 address 10.244.114.2/30
   234|!
   235|interface l3 L3_VLAN2311_MPLS
   236| lower-layer-if vlan 2311
   237| ipv4 address 10.244.114.6/30
   238|!
   239|interface mgmt 1/1/1
   240| ipv4 address 192.168.0.25/24
   241|!
   242|interface loopback 0
   243| ipv4 address 10.244.188.14/32
   244|!
   245|clock timezone BRAZIL -3
   246|hostname SW1POP14_LOMBA_GRANDE
   247|telnet-server enabled
   248|oam
   249| efm
   250|  interface gigabit-ethernet-1/1/1
   251|   mode passive
   252|  !
   253|  interface gigabit-ethernet-1/1/2
   254|   mode passive
   255|  !
   256|  interface gigabit-ethernet-1/1/3
   257|   mode passive
   258|  !
   259|  interface gigabit-ethernet-1/1/4
   260|   mode passive
   261|  !
   262|  interface gigabit-ethernet-1/1/5
   263|   mode passive
   264|  !
   265|  interface gigabit-ethernet-1/1/6
   266|   mode passive
   267|  !
   268|  interface gigabit-ethernet-1/1/7
   269|   mode passive
   270|  !
   271|  interface gigabit-ethernet-1/1/8
   272|   mode passive
   273|  !
   274|  interface ten-gigabit-ethernet-1/1/1
   275|   mode passive
   276|  !
   277|  interface ten-gigabit-ethernet-1/1/2
   278|   mode passive
   279|  !
   280|  interface ten-gigabit-ethernet-1/1/3
   281|   mode passive
   282|  !
   283|  interface ten-gigabit-ethernet-1/1/4
   284|   mode passive
   285|  !
   286| !
   287|!
   288|loopback-detection
   289| destination-address alternative
   290|!
   291|mac-address-table
   292| aging-time 600
   293|!
   294|layer2-control-protocol
   295| tunnel-mac datacom
   296| tunnel-priority 7
   297|!
   298|sntp client
   299|sntp server 200.160.0.8
   300|sntp server 200.189.40.8
   301|vrf global
   302|!
   303|vrf mgmt
   304|!
   305|router ospf 1 vrf global
   306| router-id 10.244.188.14
   307| redistribute static
   308| !
   309| area 0.0.0.0
   310|  interface l3-L3_VLAN1114_MPLS
   311|   cost 100
   312|   bfd
   313|    session-type desired
   314|   !
   315|   network-type point-to-point
   316|  !
   317|  interface l3-L3_VLAN2311_MPLS
   318|   cost 120
   319|   bfd
   320|    session-type desired
   321|   !
   322|   network-type point-to-point
   323|  !
   324|  interface loopback-0
   325|  !
   326| !
   327|!
   328|dot1q
   329| vlan 140
   330|  interface gigabit-ethernet-1/1/5
   331|  !
   332|  interface ten-gigabit-ethernet-1/1/4
   333|  !
   334| !
   335| vlan 141
   336|  interface gigabit-ethernet-1/1/5
   337|  !
   338|  interface ten-gigabit-ethernet-1/1/1
   339|  !
   340|  interface ten-gigabit-ethernet-1/1/4
   341|  !
   342| !
   343| vlan 1114
   344|  name VLAN_1114_SW1POP59_SW1POP14_OSPF
   345|  interface ten-gigabit-ethernet-1/1/1
   346|  !
   347| !
   348| vlan 2311
   349|  name VLAN2311_SW1POP14_SW1POP00_TRVER
   350|  interface ten-gigabit-ethernet-1/1/2
   351|  !
   352| !
   353| vlan 3114
   354|  interface gigabit-ethernet-1/1/5
   355|  !
   356|  interface ten-gigabit-ethernet-1/1/1
   357|  !
   358| !
   359|!
   360|license mpls enabled
   361|license mpls key ***
   362|remote-devices
   363| interface gigabit-ethernet-1/1/1
   364| !
   365| interface gigabit-ethernet-1/1/2
   366| !
   367| interface gigabit-ethernet-1/1/3
   368| !
   369| interface gigabit-ethernet-1/1/4
   370| !
   371| interface gigabit-ethernet-1/1/5
   372| !
   373| interface gigabit-ethernet-1/1/6
   374| !
   375| interface gigabit-ethernet-1/1/7
   376| !
   377| interface gigabit-ethernet-1/1/8
   378| !
   379| interface ten-gigabit-ethernet-1/1/1
   380| !
   381| interface ten-gigabit-ethernet-1/1/2
   382| !
   383| interface ten-gigabit-ethernet-1/1/3
   384| !
   385| interface ten-gigabit-ethernet-1/1/4
   386| !
   387|!
   388|
   389|
   390|```
   391|