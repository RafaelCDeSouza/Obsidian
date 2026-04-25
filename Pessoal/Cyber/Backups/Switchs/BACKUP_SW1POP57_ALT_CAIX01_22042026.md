[[SW1POP57]]

     1|```kotlin
     2|(admin@10.244.188.57) Password:
     3|Welcome to the DmOS CLI
     4|User admin last logged in 2026-04-06T12:46:38.207399+00:00, to DM4370, from 10.244.19.90 using cli-ssh
     5|admin connected from 10.244.19.90 using ssh on SW1POP57_ALT_CAIX01
     6|SW1POP57_ALT_CAIX01# show running-config
     7|aaa authentication-order [ local ]
     8|aaa user admin
     9| password $1$Ao3N.Vl3$q1NAbzd8RKkrJ1mvNcCDS1
    10| group admin
    11|!
    12|aaa user future
    13| password $1$wQuXjN4Y$MzcmWr088DBWQGzkeW62O.
    14| group admin
    15|!
    16|mpls ldp
    17| lsr-id loopback-0
    18|  interface l3-L3_VLAN1157_MPLS
    19|  !
    20|  neighbor targeted 10.244.188.2
    21|  !
    22| !
    23|!
    24|mpls l2vpn
    25| vpls-group POP57_ALT_CAIX01_POP02_TELIUM
    26|  vpn VSI_23_POP02_POP57_VLAN23
    27|   vfi
    28|    pw-type ethernet
    29|    neighbor 10.244.188.2
    30|     pw-id 23
    31|    !
    32|   !
    33|   bridge-domain
    34|    dot1q 23
    35|    bridge-mtu 9000
    36|    access-interface gigabit-ethernet-1/1/4
    37|    !
    38|   !
    39|  !
    40|  vpn VSI_3964_POP02-11_TR_ALT_CAIX01
    41|   vfi
    42|    pw-type ethernet
    43|    neighbor 10.244.188.2
    44|     pw-id 3964
    45|    !
    46|   !
    47|   bridge-domain
    48|    bridge-mtu 9000
    49|    access-interface gigabit-ethernet-1/1/2
    50|    !
    51|    access-interface ten-gigabit-ethernet-1/1/4
    52|    !
    53|   !
    54|  !
    55| !
    56|!
    57|snmp traps config-commit
    58|snmp traps cpu-core
    59|snmp traps cpu-load
    60|snmp traps link-status
    61|snmp traps login-success
    62|snmp agent disabled
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
   123| description PORTA_NOTE
   124| no shutdown
   125| negotiation
   126| duplex full
   127| speed 100M
   128| advertising-abilities 10Mfull 100Mfull 1Gfull
   129| mdix auto
   130| mtu 12266
   131|!
   132|interface gigabit-ethernet 1/1/3
   133| shutdown
   134| negotiation
   135| duplex full
   136| speed 100M
   137| advertising-abilities 10Mfull 100Mfull 1Gfull
   138| mdix auto
   139| mtu 12266
   140|!
   141|interface gigabit-ethernet 1/1/4
   142| description PORTA_PC
   143| no shutdown
   144| negotiation
   145| duplex full
   146| speed 100M
   147| advertising-abilities 10Mfull 100Mfull 1Gfull
   148| mdix auto
   149| mtu 12266
   150|!
   151|interface gigabit-ethernet 1/1/5
   152| shutdown
   153| negotiation
   154| duplex full
   155| speed 1G
   156| advertising-abilities 10Mfull 100Mfull 1Gfull
   157| mdix normal
   158| mtu 12266
   159|!
   160|interface gigabit-ethernet 1/1/6
   161| shutdown
   162| negotiation
   163| duplex full
   164| speed 1G
   165| advertising-abilities 10Mfull 100Mfull 1Gfull
   166| mdix normal
   167| mtu 12266
   168|!
   169|interface gigabit-ethernet 1/1/7
   170| shutdown
   171| negotiation
   172| duplex full
   173| speed 1G
   174| advertising-abilities 10Mfull 100Mfull 1Gfull
   175| mdix normal
   176| mtu 12266
   177|!
   178|interface gigabit-ethernet 1/1/8
   179| shutdown
   180| negotiation
   181| duplex full
   182| speed 1G
   183| advertising-abilities 10Mfull 100Mfull 1Gfull
   184| mdix normal
   185| mtu 12266
   186|!
   187|interface ten-gigabit-ethernet 1/1/1
   188| shutdown
   189| no negotiation
   190| duplex full
   191| speed 10G
   192| advertising-abilities 10Mfull 100Mfull 1Gfull
   193| mdix normal
   194| mtu 12266
   195|!
   196|interface ten-gigabit-ethernet 1/1/2
   197| no shutdown
   198| no negotiation
   199| duplex full
   200| speed 10G
   201| advertising-abilities 10Mfull 100Mfull 1Gfull
   202| mdix normal
   203| mtu 12266
   204|!
   205|interface ten-gigabit-ethernet 1/1/3
   206| shutdown
   207| no negotiation
   208| duplex full
   209| speed 10G
   210| advertising-abilities 10Mfull 100Mfull 1Gfull
   211| mdix normal
   212| mtu 12266
   213|!
   214|interface ten-gigabit-ethernet 1/1/4
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
   233|clock timezone BRA -3
   234|hostname SW1POP57_ALT_CAIX01
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
   286|vrf global
   287|!
   288|vrf mgmt
   289|!
   290|router ospf 1 vrf global
   291| router-id 10.244.188.57
   292| redistribute static
   293| !
   294| area 0.0.0.0
   295|  interface l3-L3_VLAN1157_MPLS
   296|   cost 100
   297|   bfd
   298|    session-type desired
   299|   !
   300|   network-type point-to-point
   301|  !
   302|  interface loopback-0
   303|  !
   304| !
   305|!
   306|dot1q
   307| vlan 1157
   308|  name VL_1157_SW1POP02_SW1POP57_MPLS
   309|  interface ten-gigabit-ethernet-1/1/2
   310|  !
   311| !
   312|!
   313|license mpls enabled
   314|license mpls key ***
   315|remote-devices
   316| interface gigabit-ethernet-1/1/1
   317| !
   318| interface gigabit-ethernet-1/1/2
   319| !
   320| interface gigabit-ethernet-1/1/3
   321| !
   322| interface gigabit-ethernet-1/1/4
   323| !
   324| interface gigabit-ethernet-1/1/5
   325| !
   326| interface gigabit-ethernet-1/1/6
   327| !
   328| interface gigabit-ethernet-1/1/7
   329| !
   330| interface gigabit-ethernet-1/1/8
   331| !
   332| interface ten-gigabit-ethernet-1/1/1
   333| !
   334| interface ten-gigabit-ethernet-1/1/2
   335| !
   336| interface ten-gigabit-ethernet-1/1/3
   337| !
   338| interface ten-gigabit-ethernet-1/1/4
   339| !
   340|!
   341|SW1POP57_ALT_CAIX01#
   342|```
   343|