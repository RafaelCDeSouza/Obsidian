[[SW1POP57]]

     1|```kotlin
     2|
     3|DmOS
     4|SW1POP57_CAIXA_AG51433-293 login: admin
     5|Password:
     6|Welcome to the DmOS CLI
     7|admin connected from 127.0.0.1 using console on SW1POP57_CAIXA_AG51433-293
     8|SW1POP57_CAIXA_AG51433-293# show running-config
     9|aaa authentication-order [ local ]
    10|aaa user admin
    11| password $1$Jfl.QgeU$K8v5IZdiS8iNxyrydoAV60
    12| group admin
    13|!
    14|aaa user zandona
    15| password $1$JAxKdktC$gMegws.NVm48AHSV9ig4z.
    16| group admin
    17|!
    18|mpls ldp
    19| lsr-id loopback-0
    20|  interface l3-L3_VLAN1157_MPLS
    21|  !
    22|  neighbor targeted 10.244.188.2
    23|  !
    24| !
    25|!
    26|mpls l2vpn
    27| vpls-group POP57_CAIXA_POP02_TELIUM
    28|  vpn VSI_23_POP02-57
    29|   vfi
    30|    pw-type ethernet
    31|    neighbor 10.244.188.2
    32|     pw-id 23
    33|    !
    34|   !
    35|   bridge-domain
    36|    bridge-mtu 9000
    37|    access-interface gigabit-ethernet-1/1/4
    38|    !
    39|   !
    40|  !
    41|  vpn VSI_3964_POP02-57
    42|   vfi
    43|    pw-type ethernet
    44|    neighbor 10.244.188.2
    45|     pw-id 3964
    46|    !
    47|   !
    48|   bridge-domain
    49|    bridge-mtu 9000
    50|    access-interface ten-gigabit-ethernet-1/1/4
    51|    !
    52|   !
    53|  !
    54| !
    55|!
    56|snmp system location -29.762990,-51.039995
    57|snmp traps config-commit
    58|snmp traps cpu-core
    59|snmp traps cpu-load
    60|snmp traps link-status
    61|snmp traps login-success
    62|snmp agent enabled
    63|snmp agent version v2c
    64|snmp agent version v3
    65|snmp agent engine-id from-mac-address 18:81:ed:56:95:e3
    66|snmp community CyberWeb
    67| sec-name CyberWeb
    68|!
    69|snmp community public
    70| sec-name public
    71|!
    72|snmp notify std_v1_trap
    73| tag std_v1_trap
    74|!
    75|snmp notify std_v2_inform
    76| tag std_v2_inform
    77| type inform
    78|!
    79|snmp notify std_v2_trap
    80| tag std_v2_trap
    81|!
    82|snmp notify std_v3_inform
    83| tag std_v3_inform
    84| type inform
    85|!
    86|snmp notify std_v3_trap
    87| tag std_v3_trap
    88|!
    89|snmp vacm group CyberWeb
    90| member CyberWeb
    91|  sec-model [ v2c ]
    92| !
    93| access "" v2c no-auth-no-priv
    94|  read-view root
    95|  notify-view root
    96| !
    97|!
    98|snmp vacm group public
    99| member public
   100|  sec-model [ v2c ]
   101| !
   102| access "" v2c no-auth-no-priv
   103|  read-view root
   104|  write-view root
   105|  notify-view root
   106| !
   107|!
   108|snmp vacm view root
   109| subtree 1.3
   110|  included
   111| !
   112|!
   113|interface gigabit-ethernet 1/1/1
   114| shutdown
   115| negotiation
   116| duplex full
   117| speed 100M
   118| advertising-abilities 10Mfull 100Mfull 1Gfull
   119| mdix auto
   120| mtu 12266
   121|!
   122|interface gigabit-ethernet 1/1/2
   123| shutdown
   124| negotiation
   125| duplex full
   126| speed 100M
   127| advertising-abilities 10Mfull 100Mfull 1Gfull
   128| mdix auto
   129| mtu 12266
   130|!
   131|interface gigabit-ethernet 1/1/3
   132| shutdown
   133| negotiation
   134| duplex full
   135| speed 100M
   136| advertising-abilities 10Mfull 100Mfull 1Gfull
   137| mdix auto
   138| mtu 12266
   139|!
   140|interface gigabit-ethernet 1/1/4
   141| no shutdown
   142| negotiation
   143| duplex full
   144| speed 100M
   145| advertising-abilities 10Mfull 100Mfull 1Gfull
   146| mdix auto
   147| mtu 12266
   148|!
   149|interface gigabit-ethernet 1/1/5
   150| shutdown
   151| negotiation
   152| duplex full
   153| speed 1G
   154| advertising-abilities 10Mfull 100Mfull 1Gfull
   155| mdix normal
   156| mtu 12266
   157|!
   158|interface gigabit-ethernet 1/1/6
   159| shutdown
   160| negotiation
   161| duplex full
   162| speed 1G
   163| advertising-abilities 10Mfull 100Mfull 1Gfull
   164| mdix normal
   165| mtu 12266
   166|!
   167|interface gigabit-ethernet 1/1/7
   168| shutdown
   169| negotiation
   170| duplex full
   171| speed 1G
   172| advertising-abilities 10Mfull 100Mfull 1Gfull
   173| mdix normal
   174| mtu 12266
   175|!
   176|interface gigabit-ethernet 1/1/8
   177| shutdown
   178| negotiation
   179| duplex full
   180| speed 1G
   181| advertising-abilities 10Mfull 100Mfull 1Gfull
   182| mdix normal
   183| mtu 12266
   184|!
   185|interface ten-gigabit-ethernet 1/1/1
   186| shutdown
   187| no negotiation
   188| duplex full
   189| speed 10G
   190| advertising-abilities 10Mfull 100Mfull 1Gfull
   191| mdix normal
   192| mtu 12266
   193|!
   194|interface ten-gigabit-ethernet 1/1/2
   195| description PTP_SW1POP57_PX02_SW1_POP02_PX02
   196| no shutdown
   197| no negotiation
   198| duplex full
   199| speed 10G
   200| advertising-abilities 10Mfull 100Mfull 1Gfull
   201| mdix normal
   202| mtu 12266
   203|!
   204|interface ten-gigabit-ethernet 1/1/3
   205| shutdown
   206| no negotiation
   207| duplex full
   208| speed 10G
   209| advertising-abilities 10Mfull 100Mfull 1Gfull
   210| mdix normal
   211| mtu 12266
   212|!
   213|interface ten-gigabit-ethernet 1/1/4
   214| description PTP_SW1POP57_PX04_SW_CLIENTE_PX02
   215| no shutdown
   216| no negotiation
   217| duplex full
   218| speed 10G
   219| advertising-abilities 10Mfull 100Mfull 1Gfull
   220| mdix normal
   221| mtu 12266
   222|!
   223|interface l3 L3_VLAN1157_MPLS
   224| lower-layer-if vlan 1157
   225| ipv4 address 10.244.157.2/30
   226|!
   227|interface mgmt 1/1/1
   228| ipv4 address 192.168.0.25/24
   229|!
   230|interface loopback 0
   231| ipv4 address 10.244.188.57/32
   232|!
   233|clock timezone BRAZIL -3
   234|hostname SW1POP57_CAIXA_AG51433-293
   235|telnet-server enabled
   236|oam
   237| efm
   238|  interface gigabit-ethernet-1/1/1
   239|   mode passive
   240|  !
   241|  interface gigabit-ethernet-1/1/2
   242|   mode passive
   243|  !
   244|  interface gigabit-ethernet-1/1/3
   245|   mode passive
   246|  !
   247|  interface gigabit-ethernet-1/1/4
   248|   mode passive
   249|  !
   250|  interface gigabit-ethernet-1/1/5
   251|   mode passive
   252|  !
   253|  interface gigabit-ethernet-1/1/6
   254|   mode passive
   255|  !
   256|  interface gigabit-ethernet-1/1/7
   257|   mode passive
   258|  !
   259|  interface gigabit-ethernet-1/1/8
   260|   mode passive
   261|  !
   262|  interface ten-gigabit-ethernet-1/1/1
   263|   mode passive
   264|  !
   265|  interface ten-gigabit-ethernet-1/1/2
   266|   mode passive
   267|  !
   268|  interface ten-gigabit-ethernet-1/1/3
   269|   mode passive
   270|  !
   271|  interface ten-gigabit-ethernet-1/1/4
   272|   mode passive
   273|  !
   274| !
   275|!
   276|loopback-detection
   277| destination-address alternative
   278|!
   279|mac-address-table
   280| aging-time 600
   281|!
   282|layer2-control-protocol
   283| tunnel-mac datacom
   284| tunnel-priority 7
   285|!
   286|sntp client
   287|sntp server 200.160.0.8
   288|sntp server 200.189.40.8
   289|switchport
   290| interface ten-gigabit-ethernet-1/1/2
   291| !
   292|!
   293|vrf global
   294|!
   295|vrf mgmt
   296|!
   297|router ospf 1 vrf global
   298| router-id 10.244.188.57
   299| redistribute static
   300| !
   301| area 0.0.0.0
   302|  interface l3-L3_VLAN1157_MPLS
   303|   cost 100
   304|   bfd
   305|    session-type desired
   306|   !
   307|   network-type point-to-point
   308|  !
   309|  interface loopback-0
   310|  !
   311| !
   312|!
   313|dot1q
   314| vlan 1157
   315|  name VL_1157_SW1POP02_SW1POP57_MPLS
   316|  interface ten-gigabit-ethernet-1/1/2
   317|  !
   318| !
   319|!
   320|license mpls enabled
   321|license mpls key ***
   322|remote-devices
   323| interface gigabit-ethernet-1/1/1
   324| !
   325| interface gigabit-ethernet-1/1/2
   326| !
   327| interface gigabit-ethernet-1/1/3
   328| !
   329| interface gigabit-ethernet-1/1/4
   330| !
   331| interface gigabit-ethernet-1/1/5
   332| !
   333| interface gigabit-ethernet-1/1/6
   334| !
   335| interface gigabit-ethernet-1/1/7
   336| !
   337| interface gigabit-ethernet-1/1/8
   338| !
   339| interface ten-gigabit-ethernet-1/1/1
   340| !
   341| interface ten-gigabit-ethernet-1/1/2
   342| !
   343| interface ten-gigabit-ethernet-1/1/3
   344| !
   345| interface ten-gigabit-ethernet-1/1/4
   346| !
   347|!
   348|SW1POP57_CAIXA_AG51433-293#
   349|
   350|```
   351|