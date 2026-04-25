[[SW1POP12]]

     1|```yaml
     2|User Authentication
     3|(admin@10.244.189.12) Password:
     4|
     5|Info: The max number of VTY users is 10, and the number
     6|      of current VTY users on line is 1.
     7|      The current login time is 2026-02-04 08:06:23-03:00.
     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-01-31 15:41:21-03:00  Password will expire in: -
     9|
    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    11|<SW1POP12_BETANIA_N>displ
    12|<SW1POP12_BETANIA_N>display cu
    13|<SW1POP12_BETANIA_N>display current-configuration
    14|!Software Version V200R023C00SPC500
    15|#
    16|sysname SW1POP12_BETANIA_N
    17|#
    18|router id 10.244.189.12
    19|#
    20|vlan batch 120 to 121 140 to 141 1103 1110 1112 1214 3114 3510 to 3512 3540
    21|#
    22|authentication-profile name default_authen_profile
    23| authentication ipv6-control enable
    24|authentication-profile name dot1x_authen_profile
    25| authentication ipv6-control enable
    26|authentication-profile name dot1xmac_authen_profile
    27| authentication ipv6-control enable
    28|authentication-profile name mac_authen_profile
    29| authentication ipv6-control enable
    30|authentication-profile name multi_authen_profile
    31| authentication ipv6-control enable
    32|authentication-profile name portal_authen_profile
    33| authentication ipv6-control enable
    34|#
    35|set save-configuration delay 1
    36|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    37|#
    38|http server-source all-interface
    39|#
    40|clock timezone Brasilia minus 03:00:00
    41|#
    42|ddr isolation disable
    43|#
    44|undo mac-address learning self-healing enable
    45|#
    46|capwap unknown-unicast cir 0
    47|#
    48|diffserv domain default
    49|#
    50|radius-server template default
    51|#
    52|bfd
    53|#
    54|mpls lsr-id 10.244.189.12
    55|mpls
    56| mpls te
    57| mpls rsvp-te
    58| mpls te cspf
    59|#
    60|mpls l2vpn
    61|#
    62|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
    63| pwsignal ldp
    64|  vsi-id 121
    65|  peer 10.244.188.2
    66|  peer 10.244.189.0
    67|  traffic-statistics enable
    68| mtu 9000
    69| encapsulation ethernet
    70|#
    71|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
    72| pwsignal ldp
    73|  vsi-id 120
    74|  peer 10.244.188.2
    75|  peer 10.244.189.0
    76|  traffic-statistics enable
    77| mtu 9000
    78| encapsulation ethernet
    79|#
    80|vsi VSI3512_POP12_TR_CYBER_FENIX_RN static
    81| pwsignal ldp
    82|  vsi-id 3512
    83|  peer 10.244.188.8
    84|  traffic-statistics enable
    85| mtu 9000
    86| encapsulation ethernet
    87|#
    88|vsi VSI3511_RN_CYBER_NA_FENIX_PPPOE static
    89| pwsignal ldp
    90|  vsi-id 3511
    91|  peer 10.244.189.0
    92|  peer 10.244.188.2
    93| mtu 9000
    94| encapsulation ethernet
    95|#
    96|vsi VSI3540_RN_MEDIA_NA_CYBER_PPPOE static
    97| pwsignal ldp
    98|  vsi-id 3540
    99|  peer 10.244.188.5
   100| mtu 9000
   101| encapsulation ethernet
   102|#
   103|vsi VSI3510_RN_FENIX_NA_CYBER_PPPOE static
   104| pwsignal ldp
   105|  vsi-id 3510
   106|  peer 10.244.189.3
   107| mtu 9000
   108| encapsulation ethernet
   109|#
   110|mpls ldp
   111|#
   112|#
   113|mpls ldp remote-peer 10.244.188.2
   114| remote-ip 10.244.188.2
   115|#
   116|mpls ldp remote-peer 10.244.188.5
   117| remote-ip 10.244.188.5
   118|#
   119|mpls ldp remote-peer 10.244.188.8
   120| remote-ip 10.244.188.8
   121|#
   122|mpls ldp remote-peer 10.244.189.0
   123| remote-ip 10.244.189.0
   124|#
   125|mpls ldp remote-peer 10.244.189.3
   126| remote-ip 10.244.189.3
   127|#
   128|pki realm default
   129| certificate-check none
   130|#
   131|free-rule-template name default_free_rule
   132|#
   133|portal-access-profile name portal_access_profile
   134|#
   135|drop-profile default
   136|#
   137|vlan 120
   138| description VLAN_120_POP12_BETANIA_GERENCIA
   139|vlan 121
   140| description VLAN_121_POP12_BETANIA_OLT1
   141|vlan 1103
   142| description VLAN1103_SW1POP12_SW1POP03_MPLS1
   143|vlan 1110
   144| description VLAN1110_SW1POP12_SW1POP10_MPLS1
   145|vlan 1112
   146| description VLAN1112_SW1POP00_SW1POP12_MPLS1
   147|vlan 1214
   148| description VLAN_1214_PTP_POP12__SW2POP14_OSPF
   149|vlan 3510
   150| description VLAN_3510_RN_CLIENTES_CYBER_NA_REDE_FENIX
   151|vlan 3511
   152| description VLAN_3511_RN_CLIENTES_CYBER_NA_REDE_DA_FENIX
   153|vlan 3512
   154| description VLAN_3512_TR_CYBER_FENIX_R_NEUTRA
   155|vlan 3540
   156| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
   157|#
   158|aaa
   159| authentication-scheme default
   160|  authentication-mode local
   161| authentication-scheme radius
   162|  authentication-mode radius
   163| authorization-scheme default
   164|  authorization-mode local
   165| accounting-scheme default
   166|  accounting-mode none
   167| local-aaa-user password policy administrator
   168|  password history record number 0
   169|  password expire 0
   170| domain default
   171|  authentication-scheme radius
   172|  accounting-scheme default
   173|  radius-server default
   174| domain default_admin
   175|  authentication-scheme default
   176|  accounting-scheme default
   177| local-user admin password irreversible-cipher $1c$\,0m>}DUP~$=%U^OKK9-5Ka9',6W>!#^dfYD2IY2.+3{:5^hEZ<$
   178| local-user admin privilege level 15
   179| local-user admin service-type ssh http
   180| local-user zandona password irreversible-cipher $1c$$6!BWHL`=B$czFR<OP0&E/H(jHU-ev*K783EXoCA@6^v'(zM{h6$
   181| local-user zandona privilege level 15
   182| local-user zandona service-type ssh http
   183|#
   184|ntp-service server disable
   185|ntp-service ipv6 server disable
   186|ntp-service unicast-server 200.189.40.8
   187|ntp-service unicast-server 200.160.0.8
   188|#
   189|interface Vlanif120
   190| description vlan120_POP12_BETANIA_GERENCIA
   191| l2 binding vsi VSI_120_CY_POP0-2_POP12_BE_MGNT
   192|#
   193|interface Vlanif121
   194| description VLAN_121_POP12_BETANIA_OLT1
   195| l2 binding vsi VSI_121_CY_POP0-2_POP12_BE_OLT1
   196|#
   197|interface Vlanif1103
   198| description VLAN1103_SW1POP12_SW1POP03_MPLS1
   199| mtu 9216
   200| ip address 10.244.103.1 255.255.255.252
   201| ospf cost 1
   202| ospf network-type p2p
   203| mpls
   204| mpls te
   205| mpls rsvp-te
   206| mpls ldp
   207|#
   208|interface Vlanif1110
   209| description VLAN1110_SW1POP12_SW1POP10_MPLS1
   210| mtu 9216
   211| ip address 10.244.110.1 255.255.255.252
   212| ospf cost 1
   213| ospf network-type p2p
   214| mpls
   215| mpls te
   216| mpls rsvp-te
   217| mpls ldp
   218|#
   219|interface Vlanif1112
   220| description VLAN1112_SW1POP00_SW1POP12_MPLS1
   221| mtu 9216
   222| ip address 10.244.112.2 255.255.255.252
   223| ospf cost 1
   224| ospf network-type p2p
   225| mpls
   226| mpls te
   227| mpls rsvp-te
   228| mpls ldp
   229|#
   230|interface Vlanif1122
   231| mtu 9216
   232| ip address 10.244.122.1 255.255.255.252
   233| ospf cost 1
   234| ospf network-type p2p
   235|#
   236|interface Vlanif1214
   237| description PTP_POP12__SW2POP14_OSPF
   238| mtu 9216
   239| ip address 10.244.114.9 255.255.255.252
   240| ospf cost 10
   241| ospf network-type p2p
   242| mpls
   243| mpls te
   244| mpls rsvp-te
   245| mpls ldp
   246|#
   247|interface Vlanif3510
   248| description VLAN_3510_RN_CLIENTES_CYBER_NA_REDE_FENIX
   249| l2 binding vsi VSI3510_RN_FENIX_NA_CYBER_PPPOE
   250|#
   251|interface Vlanif3511
   252| description VLAN_3511_RN_CLIENTES_CYBER_NA_REDE_DA_FENIX
   253| l2 binding vsi VSI3511_RN_CYBER_NA_FENIX_PPPOE
   254|#
   255|interface Vlanif3512
   256| description VLAN_3512_TR_CYBER_FENIX_R_NEUTRA
   257| l2 binding vsi VSI3512_POP12_TR_CYBER_FENIX_RN
   258|#
   259|interface Vlanif3540
   260| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
   261| l2 binding vsi VSI3540_RN_MEDIA_NA_CYBER_PPPOE
   262|#
   263|interface MEth0/0/1
   264| ip address 192.168.1.253 255.255.255.0
   265|#
   266|interface XGigabitEthernet0/0/1
   267| description PTP_SW1POP12_PX01OLT1POP12MGNT
   268| port link-type dot1q-tunnel
   269| port default vlan 120
   270|#
   271|interface XGigabitEthernet0/0/2
   272| description PTP_SW1POP12_PX02__OLT1POP12PX02
   273| port link-type trunk
   274| undo port trunk allow-pass vlan 1
   275| port trunk allow-pass vlan 121 3104 3540
   276| jumboframe enable 12288
   277|#
   278|interface XGigabitEthernet0/0/3
   279| description PTP_SW1POP12_PX03__SW1POP03_PX03
   280| port link-type trunk
   281| undo port trunk allow-pass vlan 1
   282| port trunk allow-pass vlan 1103
   283| jumboframe enable 12288
   284|#
   285|interface XGigabitEthernet0/0/4
   286| shutdown
   287|#
   288|interface XGigabitEthernet0/0/5
   289| description PTP_SW1POP12_PX05__SW1FENIX_PXX
   290| port link-type trunk
   291| undo port trunk allow-pass vlan 1
   292| port trunk allow-pass vlan 3510 to 3512
   293| jumboframe enable 12288
   294|#
   295|interface XGigabitEthernet0/0/6
   296| description PTP_SW1POP12_PX06__SW1POP14_PX06
   297| port link-type trunk
   298| undo port trunk allow-pass vlan 1
   299| port trunk allow-pass vlan 1214
   300| jumboframe enable 12288
   301|#
   302|interface XGigabitEthernet0/0/7
   303| shutdown
   304|#
   305|interface XGigabitEthernet0/0/8
   306| shutdown
   307|#
   308|interface XGigabitEthernet0/0/9
   309| shutdown
   310|#
   311|interface XGigabitEthernet0/0/10
   312| shutdown
   313|#
   314|interface XGigabitEthernet0/0/11
   315| shutdown
   316|#
   317|interface XGigabitEthernet0/0/12
   318| shutdown
   319|#
   320|interface XGigabitEthernet0/0/13
   321| shutdown
   322|#
   323|interface XGigabitEthernet0/0/14
   324| shutdown
   325|#
   326|interface XGigabitEthernet0/0/15
   327| shutdown
   328|#
   329|interface XGigabitEthernet0/0/16
   330| shutdown
   331|#
   332|interface XGigabitEthernet0/0/17
   333| shutdown
   334|#
   335|interface XGigabitEthernet0/0/18
   336| shutdown
   337|#
   338|interface XGigabitEthernet0/0/19
   339| shutdown
   340|#
   341|interface XGigabitEthernet0/0/20
   342| shutdown
   343|#
   344|interface XGigabitEthernet0/0/21
   345| shutdown
   346|#
   347|interface XGigabitEthernet0/0/22
   348| shutdown
   349|#
   350|interface XGigabitEthernet0/0/23
   351| shutdown
   352|#
   353|interface XGigabitEthernet0/0/24
   354| shutdown
   355|#
   356|interface 100GE0/0/1
   357| undo portswitch
   358| description PTP_SW1POP12_PQ01__SW1POP05_PQ01
   359| ip address 10.244.105.1 255.255.255.252
   360| ospf cost 1
   361| ospf network-type p2p
   362| mpls
   363| mpls te
   364| mpls rsvp-te
   365| mpls ldp
   366| jumboframe enable 12288
   367|#
   368|interface 100GE0/0/2
   369| description PTP_SW1POP12_CX02__SW1POP10_PQ02
   370| port link-type trunk
   371| undo port trunk allow-pass vlan 1
   372| port trunk allow-pass vlan 1110
   373| jumboframe enable 12288
   374|#
   375|interface 100GE0/0/3
   376| shutdown
   377|#
   378|interface 100GE0/0/4
   379| shutdown
   380|#
   381|interface 100GE0/0/5
   382| description PTP_SW1POP12_PQ05__SW1POP14_PCX05
   383| port link-type trunk
   384| undo port trunk allow-pass vlan 1
   385| port trunk allow-pass vlan 1114
   386| jumboframe enable 12288
   387|#
   388|interface 100GE0/0/6
   389| description PTP_SW1POP12_PQ06__SW1POP00_PCX06
   390| port link-type trunk
   391| undo port trunk allow-pass vlan 1
   392| port trunk allow-pass vlan 1112
   393| jumboframe enable 12288
   394|#
   395|interface NULL0
   396|#
   397|interface LoopBack0
   398| ip address 10.244.189.12 255.255.255.255
   399|#
   400|ospf 1 router-id 10.244.189.12
   401| bfd all-interfaces enable
   402| import-route direct cost 15 type 1
   403| import-route static cost 15 type 1
   404| silent-interface all
   405| undo silent-interface Vlanif1103
   406| undo silent-interface Vlanif1112
   407| undo silent-interface Vlanif1110
   408| undo silent-interface 100GE0/0/1
   409| undo silent-interface Vlanif1122
   410| undo silent-interface Vlanif1214
   411| opaque-capability enable
   412| area 0.0.0.0
   413|  network 10.244.103.0 0.0.0.3
   414|  network 10.244.105.0 0.0.0.3 description 100GE0/0/1
   415|  network 10.244.110.0 0.0.0.3
   416|  network 10.244.112.0 0.0.0.3 description Vlanif1112
   417|  network 10.244.114.8 0.0.0.3
   418|  network 10.244.122.0 0.0.0.3 description Vlanif1122
   419|  mpls-te enable
   420|#
   421|undo icmp name timestamp-request receive
   422|#
   423|snmp-agent
   424|snmp-agent local-engineid 800007DB0394A4F948E330
   425|snmp-agent community read cipher %^%#BlrZQ-#-7#03I+X)a/XQq".]2isE%.`;[f%>-flWE)4v0QE*G%:<A=A9G#0JBopn0RhcIV|&0ZXDi~LU%^%#
   426|snmp-agent sys-info contact Cyberweb
   427|snmp-agent sys-info location -29.8816587,-51.0865919
   428|snmp-agent sys-info version v2c v3
   429|snmp-agent protocol source-status all-interface
   430|undo snmp-agent protocol source-status ipv6 all-interface
   431|#
   432|stelnet server enable
   433|ssh server-source all-interface
   434|ssh server cipher aes256_ctr aes128_ctr
   435|ssh server hmac sha2_256
   436|ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   437|ssh client cipher aes256_ctr aes128_ctr
   438|ssh client hmac sha2_256
   439|ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   440|ssh server dh-exchange min-len 2048
   441|ssh server publickey rsa_sha2_512 rsa_sha2_256
   442|#
   443|user-interface con 0
   444| authentication-mode password
   445| set authentication password cipher $1c$@N&9.!:O%.$e*0>Ouzm3B=Zv7Npt8>V{d:-*8n[d~oWJ{!Z}$FM$
   446|user-interface vty 0 4
   447| authentication-mode aaa
   448| idle-timeout 3600 0
   449| protocol inbound all
   450|user-interface vty 16 20
   451|#
   452|wlan
   453| traffic-profile name default
   454| security-profile name default
   455| security-profile name default-wds
   456| security-profile name default-mesh
   457| ssid-profile name default
   458| vap-profile name default
   459| wds-profile name default
   460| mesh-handover-profile name default
   461| mesh-profile name default
   462| regulatory-domain-profile name default
   463| air-scan-profile name default
   464| rrm-profile name default
   465|  smart-roam snr-margin high-level-margin 15 low-level-margin 10
   466| radio-2g-profile name default
   467| radio-5g-profile name default
   468| wids-spoof-profile name default
   469| wids-whitelist-profile name default
   470| wids-profile name default
   471| ap-system-profile name default
   472| port-link-profile name default
   473| wired-port-profile name default
   474| ap-group name default
   475|  radio 2
   476|   frequency 5g
   477| provision-ap
   478|#
   479|dot1x-access-profile name dot1x_access_profile
   480|#
   481|mac-access-profile name mac_access_profile
   482|#
   483|ops
   484|#
   485|remote-unit
   486|#
   487|return
   488|<SW1POP12_BETANIA_N>
   489|```
   490|