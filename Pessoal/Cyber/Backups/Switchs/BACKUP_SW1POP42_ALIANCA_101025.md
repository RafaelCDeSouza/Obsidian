[[SW1POP42]]

     1|```kotlin
     2|(admin@10.244.188.42) Password:
     3|Welcome to the DmOS CLI
     4|User admin last logged in 2021-06-25T13:07:55.527694+00:00, to DM4370, from 10.244.244.250 using cli-tcp
     5|admin connected from 45.235.208.49 using ssh on SW1POP42_ALIANCA
     6|SW1POP42_ALIANCA# display-
     7|SW1POP42_ALIANCA# show cu
     8|                       ^
     9|% Invalid input detected at '^' marker.
    10|SW1POP42_ALIANCA# show running-config
    11|aaa authentication-order [ local ]
    12|aaa user admin
    13| password $1$GTXiBJ.R$kjFlYCbQctROGl9N16szg1
    14| group admin
    15|!
    16|aaa user zandona
    17| password $1$GML1y/.8$KyN6mO6yu1WGeE0sivLEm1
    18| group admin
    19|!
    20|mpls ldp
    21| lsr-id loopback-0
    22|  interface l3-L3_VLAN1142_MPLS
    23|  !
    24|  neighbor targeted 10.244.188.2
    25|  !
    26| !
    27|!
    28|mpls l2vpn
    29| vpls-group POP42_ALIANCA_POP02_TELIUM
    30|  vpn VSI_3907_POP02-42_TR1_ALIANCA
    31|   vfi
    32|    pw-type ethernet
    33|    neighbor 10.244.188.2
    34|     pw-id 3907
    35|    !
    36|   !
    37|   bridge-domain
    38|    bridge-mtu 9000
    39|    access-interface gigabit-ethernet-1/1/4
    40|    !
    41|   !
    42|  !
    43| !
    44|!
    45|snmp traps config-commit
    46|snmp traps cpu-core
    47|snmp traps cpu-load
    48|snmp traps link-status
    49|snmp traps login-success
    50|snmp agent enabled
    51|snmp agent version v2c
    52|snmp agent version v3
    53|snmp agent engine-id from-mac-address 18:81:ed:4e:72:d8
    54|snmp community CyberWeb
    55| sec-name CyberWeb
    56|!
    57|snmp community public
    58| sec-name public
    59|!
    60|snmp notify std_v1_trap
    61| tag std_v1_trap
    62|!
    63|snmp notify std_v2_inform
    64| tag std_v2_inform
    65| type inform
    66|!
    67|snmp notify std_v2_trap
    68| tag std_v2_trap
    69|!
    70|snmp notify std_v3_inform
    71| tag std_v3_inform
    72| type inform
    73|!
    74|snmp notify std_v3_trap
    75| tag std_v3_trap
    76|!
    77|snmp vacm group CyberWeb
    78| member CyberWeb
    79|  sec-model [ v2c ]
    80| !
    81| access "" v2c no-auth-no-priv
    82|  read-view root
    83|  notify-view root
    84| !
    85|!
    86|snmp vacm group public
    87| member public
    88|  sec-model [ v2c ]
    89| !
    90| access "" v2c no-auth-no-priv
    91|  read-view root
    92|  write-view root
    93|  notify-view root
    94| !
    95|!
    96|snmp vacm view root
    97| subtree 1.3
    98|  included
    99| !
   100|!
   101|interface gigabit-ethernet 1/1/1
   102| shutdown
   103| negotiation
   104| duplex full
   105| speed 100M
   106| advertising-abilities 10Mfull 100Mfull 1Gfull
   107| mdix auto
   108| mtu 12266
   109|!
   110|interface gigabit-ethernet 1/1/2
   111| shutdown
   112| negotiation
   113| duplex full
   114| speed 100M
   115| advertising-abilities 10Mfull 100Mfull 1Gfull
   116| mdix auto
   117| mtu 12266
   118|!
   119|interface gigabit-ethernet 1/1/3
   120| shutdown
   121| negotiation
   122| duplex full
   123| speed 100M
   124| advertising-abilities 10Mfull 100Mfull 1Gfull
   125| mdix auto
   126| mtu 12266
   127|!
   128|interface gigabit-ethernet 1/1/4
   129| no shutdown
   130| negotiation
   131| duplex full
   132| speed 100M
   133| advertising-abilities 10Mfull 100Mfull 1Gfull
   134| mdix auto
   135| mtu 12266
   136|!
   137|interface gigabit-ethernet 1/1/5
   138| shutdown
   139| negotiation
   140| duplex full
   141| speed 1G
   142| advertising-abilities 10Mfull 100Mfull 1Gfull
   143| mdix normal
   144| mtu 12266
   145|!
   146|interface gigabit-ethernet 1/1/6
   147| shutdown
   148| negotiation
   149| duplex full
   150| speed 1G
   151| advertising-abilities 10Mfull 100Mfull 1Gfull
   152| mdix normal
   153| mtu 12266
   154|!
   155|interface gigabit-ethernet 1/1/7
   156| shutdown
   157| negotiation
   158| duplex full
   159| speed 1G
   160| advertising-abilities 10Mfull 100Mfull 1Gfull
   161| mdix normal
   162| mtu 12266
   163|!
   164|interface gigabit-ethernet 1/1/8
   165| shutdown
   166| negotiation
   167| duplex full
   168| speed 1G
   169| advertising-abilities 10Mfull 100Mfull 1Gfull
   170| mdix normal
   171| mtu 12266
   172|!
   173|interface ten-gigabit-ethernet 1/1/1
   174| shutdown
   175| no negotiation
   176| duplex full
   177| speed 10G
   178| advertising-abilities 10Mfull 100Mfull 1Gfull
   179| mdix normal
   180| mtu 12266
   181|!
   182|interface ten-gigabit-ethernet 1/1/2
   183| shutdown
   184| no negotiation
   185| duplex full
   186| speed 10G
   187| advertising-abilities 10Mfull 100Mfull 1Gfull
   188| mdix normal
   189| mtu 12266
   190|!
   191|interface ten-gigabit-ethernet 1/1/3
   192| shutdown
   193| no negotiation
   194| duplex full
   195| speed 10G
   196| advertising-abilities 10Mfull 100Mfull 1Gfull
   197| mdix normal
   198| mtu 12266
   199|!
   200|interface ten-gigabit-ethernet 1/1/4
   201| no shutdown
   202| no negotiation
   203| duplex full
   204| speed 10G
   205| advertising-abilities 10Mfull 100Mfull 1Gfull
   206| mdix normal
   207| mtu 12266
   208|!
   209|interface l3 L3_VLAN1142_MPLS
   210| lower-layer-if vlan 1142
   211| ipv4 address 10.244.142.2/30
   212|!
   213|interface mgmt 1/1/1
   214| ipv4 address 192.168.0.25/24
   215|!
   216|interface loopback 0
   217| ipv4 address 10.244.188.42/32
   218|!
   219|clock timezone BRA -3
   220|hostname SW1POP42_ALIANCA
   221|telnet-server enabled
   222|oam
   223| efm
   224|  interface gigabit-ethernet-1/1/1
   225|   mode passive
   226|  !
   227|  interface gigabit-ethernet-1/1/2
   228|   mode passive
   229|  !
   230|  interface gigabit-ethernet-1/1/3
   231|   mode passive
   232|  !
   233|  interface gigabit-ethernet-1/1/4
   234|   mode passive
   235|  !
   236|  interface gigabit-ethernet-1/1/5
   237|   mode passive
   238|  !
   239|  interface gigabit-ethernet-1/1/6
   240|   mode passive
   241|  !
   242|  interface gigabit-ethernet-1/1/7
   243|   mode passive
   244|  !
   245|  interface gigabit-ethernet-1/1/8
   246|   mode passive
   247|  !
   248|  interface ten-gigabit-ethernet-1/1/1
   249|   mode passive
   250|  !
   251|  interface ten-gigabit-ethernet-1/1/2
   252|   mode passive
   253|  !
   254|  interface ten-gigabit-ethernet-1/1/3
   255|   mode passive
   256|  !
   257|  interface ten-gigabit-ethernet-1/1/4
   258|   mode passive
   259|  !
   260| !
   261|!
   262|loopback-detection
   263| destination-address alternative
   264|!
   265|mac-address-table
   266| aging-time 600
   267|!
   268|layer2-control-protocol
   269| tunnel-mac datacom
   270| tunnel-priority 7
   271|!
   272|vrf global
   273|!
   274|vrf mgmt
   275|!
   276|router ospf 1 vrf global
   277| router-id 10.244.188.42
   278| redistribute static
   279| !
   280| area 0.0.0.0
   281|  interface l3-L3_VLAN1142_MPLS
   282|   cost 100
   283|   network-type point-to-point
   284|  !
   285|  interface loopback-0
   286|  !
   287| !
   288|!
   289|dot1q
   290| vlan 1142
   291|  name VL_1142_SW1POP02_SW1POP42_MPLS
   292|  interface ten-gigabit-ethernet-1/1/1
   293|  !
   294|  interface ten-gigabit-ethernet-1/1/2
   295|  !
   296|  interface ten-gigabit-ethernet-1/1/3
   297|  !
   298|  interface ten-gigabit-ethernet-1/1/4
   299|  !
   300| !
   301|!
   302|license mpls enabled
   303|license mpls key ***
   304|remote-devices
   305| interface gigabit-ethernet-1/1/1
   306| !
   307| interface gigabit-ethernet-1/1/2
   308| !
   309| interface gigabit-ethernet-1/1/3
   310| !
   311| interface gigabit-ethernet-1/1/4
   312| !
   313| interface gigabit-ethernet-1/1/5
   314| !
   315| interface gigabit-ethernet-1/1/6
   316| !
   317| interface gigabit-ethernet-1/1/7
   318| !
   319| interface gigabit-ethernet-1/1/8
   320| !
   321| interface ten-gigabit-ethernet-1/1/1
   322| !
   323| interface ten-gigabit-ethernet-1/1/2
   324| !
   325| interface ten-gigabit-ethernet-1/1/3
   326| !
   327| interface ten-gigabit-ethernet-1/1/4
   328| !
   329|!
   330|SW1POP42_ALIANCA#
   331|```
   332|