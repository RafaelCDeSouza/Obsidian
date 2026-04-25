[[SW1POP10]]

     1|```yaml
     2|User Authentication
     3|(admin@10.244.189.10) Password:
     4|
     5|Info: The max number of VTY users is 10, and the number
     6|      of current VTY users on line is 1.
     7|      The current login time is 2026-04-22 10:12:22-03:00.
     8|Info: Lastest accessed IP: 45.235.208.39  Time: 2026-04-20 17:11:50-03:00  Password will expire in: -
     9|
    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    11|<SW1POP10_P_EUCALIPTOS>sys
    12|Enter system view, return user view with Ctrl+Z.
    13|[SW1POP10_P_EUCALIPTOS]displ
    14|[SW1POP10_P_EUCALIPTOS]display cu
    15|[SW1POP10_P_EUCALIPTOS]display current-configuration
    16|!Software Version V200R023C00SPC500
    17|#
    18|sysname SW1POP10_P_EUCALIPTOS
    19|#
    20|vlan batch 90 to 91 100 to 101 1110 1127 1151 1203 1207 1209 3151 3550
    21|vlan batch 4094
    22|#
    23|authentication-profile name default_authen_profile
    24| authentication ipv6-control enable
    25|authentication-profile name dot1x_authen_profile
    26| authentication ipv6-control enable
    27|authentication-profile name dot1xmac_authen_profile
    28| authentication ipv6-control enable
    29|authentication-profile name mac_authen_profile
    30| authentication ipv6-control enable
    31|authentication-profile name multi_authen_profile
    32| authentication ipv6-control enable
    33|authentication-profile name portal_authen_profile
    34| authentication ipv6-control enable
    35|#
    36|set save-configuration delay 1
    37|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    38|#
    39|http server-source all-interface
    40|#
    41|clock timezone Brasilia minus 03:00:00
    42|#
    43|ddr isolation disable
    44|#
    45|undo mac-address learning self-healing enable
    46|#
    47|capwap unknown-unicast cir 0
    48|#
    49|diffserv domain default
    50|#
    51|radius-server template default
    52|#
    53|bfd
    54|#
    55|mpls lsr-id 10.244.189.10
    56|mpls
    57| mpls te
    58| mpls rsvp-te
    59| mpls te cspf
    60|#
    61|mpls l2vpn
    62|#
    63|vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1 static
    64| pwsignal ldp
    65|  vsi-id 91
    66|  peer 10.244.188.2
    67|  traffic-statistics enable
    68| mtu 9000
    69| encapsulation ethernet
    70|#
    71|vsi VSI_90_SC_POP0_POP10-9_ITA_MGNT static
    72| pwsignal ldp
    73|  vsi-id 90
    74|  peer 10.244.188.2
    75|  traffic-statistics enable
    76| mtu 9000
    77| encapsulation ethernet
    78|#
    79|vsi VSI100_SC_POP00-2_POP10_PQ_MGNT static
    80| pwsignal ldp
    81|  vsi-id 100
    82|  peer 10.244.188.2
    83|  peer 10.244.189.0
    84|  traffic-statistics enable
    85| mtu 9000
    86| encapsulation ethernet
    87|#
    88|vsi VSI101_SC_POP00-2_POP10_PQ_OLT1 static
    89| pwsignal ldp
    90|  vsi-id 101
    91|  peer 10.244.188.2
    92|  peer 10.244.189.0
    93|  traffic-statistics enable
    94| mtu 9000
    95| encapsulation ethernet
    96|#
    97|vsi VSI_3550_R_NEUTRA_LM_NA_REDE_CY static
    98| pwsignal ldp
    99|  vsi-id 3550
   100|  peer 10.244.188.27
   101| mtu 9000
   102| encapsulation ethernet
   103|#
   104|vsi VSI3151_CY_POP00_PROV_UPNET_L1 static
   105| pwsignal ldp
   106|  vsi-id 3151
   107|  peer 10.244.189.0
   108|  traffic-statistics enable
   109| mtu 9000
   110| encapsulation ethernet
   111|#
   112|mpls ldp
   113|#
   114|#
   115|mpls ldp remote-peer 10.244.188.2
   116| remote-ip 10.244.188.2
   117|#
   118|mpls ldp remote-peer 10.244.188.27
   119| remote-ip 10.244.188.27
   120|#
   121|mpls ldp remote-peer 10.244.189.0
   122| remote-ip 10.244.189.0
   123|#
   124|pki realm default
   125| certificate-check none
   126|#
   127|free-rule-template name default_free_rule
   128|#
   129|portal-access-profile name portal_access_profile
   130|#
   131|drop-profile default
   132|#
   133|vlan 90
   134| description VLAN_90_POP09_ITACOLOMI_MGNT
   135|vlan 91
   136| description VLAN_91_POP09_ITACOLOMI_OLT1
   137|vlan 100
   138| description VLAN_100_POP10_PQ_EUCAL_MGNT
   139|vlan 101
   140| description VLAN_101_POP10_PQ_EUCAL_OLT1
   141|vlan 1110
   142| description VLAN1110_SW1POP00_SW1POP10_MPLS
   143|vlan 1127
   144| description VLAN1127_SW1POP10_SW1POP27_MPLS
   145|vlan 1151
   146| description VLAN1151_SW1POP10_SW1POP51_OSPF
   147|vlan 1203
   148| description VL1203_SW1POP10-9_SW1POP03_MPLS
   149|vlan 1207
   150| description VL1107_SW1POP10-9_SW1POP07_MPLS
   151|vlan 1209
   152| description VLAN1209_SW1POP10_SW1POP09_OSPF
   153|vlan 3151
   154| description VLAN_3151_CYBER_BGP1_UPNET_L1
   155|vlan 3550
   156| description VLAN_3550_R_NEUTRA_LM_NA_REDE_CYBER
   157|vlan 4094
   158| description VLAN_4094_BLACKHOLE
   159|#
   160|aaa
   161| authentication-scheme default
   162|  authentication-mode local
   163| authentication-scheme radius
   164|  authentication-mode radius
   165| authorization-scheme default
   166|  authorization-mode local
   167| accounting-scheme default
   168|  accounting-mode none
   169| local-aaa-user password policy administrator
   170|  password history record number 0
   171|  password expire 0
   172| domain default
   173|  authentication-scheme radius
   174|  accounting-scheme default
   175|  radius-server default
   176| domain default_admin
   177|  authentication-scheme default
   178|  accounting-scheme default
   179| local-user admin password irreversible-cipher $1c$'"nOV,d``)$HlZ9FVk@$0K;eCF3,F20vr-d%i%5R:p<]y-}\9A/$
   180| local-user admin privilege level 15
   181| local-user admin service-type ssh http
   182| local-user zandona password irreversible-cipher $1c$oqXJ.)3x+I$cxDNIPIw~Yx!;N,vi[N4Zx}X6-Z1OQpge7"`_<eC$
   183| local-user zandona privilege level 15
   184| local-user zandona service-type ssh http
   185|#
   186|ntp-service server disable
   187|ntp-service ipv6 server disable
   188|ntp-service unicast-server 200.189.40.8
   189|ntp-service unicast-server 200.160.0.8
   190|#
   191|interface Vlanif90
   192| description VSI90_SC_POP00_POP09_ITACO_MGNT
   193| l2 binding vsi VSI_90_SC_POP0_POP10-9_ITA_MGNT
   194|#
   195|interface Vlanif91
   196| description VSI91_SC_POP00-2_POP09_ITA_OLT1
   197| l2 binding vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1
   198|#
   199|interface Vlanif100
   200| description VSI100_SC_POP00-2_POP10_PQ_MGNT
   201| l2 binding vsi VSI100_SC_POP00-2_POP10_PQ_MGNT
   202|#
   203|interface Vlanif101
   204| description VSI101_SC_POP00-2_POP10_PQ_OLT1
   205| l2 binding vsi VSI101_SC_POP00-2_POP10_PQ_OLT1
   206|#
   207|interface Vlanif1110
   208| description VLAN1110_SW1POP12_SW1POP10_MPLS
   209| mtu 9216
   210| ip address 10.244.110.2 255.255.255.252
   211| ospf cost 1
   212| ospf network-type p2p
   213| mpls
   214| mpls te
   215| mpls rsvp-te
   216| mpls ldp
   217|#
   218|interface Vlanif1127
   219| description VLAN1127_SW1POP10_SW1POP27_MPLS
   220| mtu 9216
   221| ip address 10.244.127.1 255.255.255.252
   222| ospf cost 1
   223| ospf network-type p2p
   224| mpls
   225| mpls te
   226| mpls rsvp-te
   227| mpls ldp
   228|#
   229|interface Vlanif1203
   230| description VLAN1203_SW1POP10_SW1POP03_MPLS
   231| shutdown
   232| ip address 10.244.103.5 255.255.255.252
   233| ospf cost 1
   234| ospf network-type p2p
   235| mpls
   236| mpls ldp
   237|#
   238|interface Vlanif1207
   239| description VL1107_SW1POP10-9_SW1POP07_MPLS
   240| mtu 9216
   241| ip address 10.244.107.5 255.255.255.252
   242| ospf cost 1
   243| ospf network-type p2p
   244| mpls
   245| mpls ldp
   246|#
   247|interface Vlanif1209
   248| description VLAN1209_SW1POP10_SW1POP09_OSPF
   249| mtu 9216
   250| ip address 10.244.109.5 255.255.255.252
   251| ospf cost 10
   252| ospf network-type p2p
   253|#
   254|interface Vlanif3151
   255| description VLAN3151_CYBER_BGP1_SRNET_L1
   256| shutdown
   257| l2 binding vsi VSI3151_CY_POP00_PROV_UPNET_L1
   258|#
   259|interface Vlanif3550
   260| description VLAN_3550_R_NEUTRA_LM_NA_REDE_CYBER
   261| l2 binding vsi VSI_3550_R_NEUTRA_LM_NA_REDE_CY
   262|#
   263|interface MEth0/0/1
   264| ip address 192.168.1.253 255.255.255.0
   265|#
   266|interface XGigabitEthernet0/0/1
   267| description SW1POP10_PX01_SW1SRNET_PX11
   268| shutdown
   269| port link-type trunk
   270| port trunk pvid vlan 4094
   271| undo port trunk allow-pass vlan 1
   272| port trunk allow-pass vlan 3151
   273| stp bpdu-filter enable
   274| stp edged-port enable
   275| undo lldp enable
   276| jumboframe enable 12288
   277| storm-control broadcast min-rate 64 max-rate 2048
   278| storm-control multicast min-rate 64 max-rate 2048
   279| storm-control unicast min-rate 64 max-rate 2048
   280| storm-control interval 10
   281| storm-control enable trap
   282| storm-control enable log
   283|#
   284|interface XGigabitEthernet0/0/2
   285| description SW1POP10_PX02_SW1POP09_PX02
   286| port link-type trunk
   287| undo port trunk allow-pass vlan 1
   288| port trunk allow-pass vlan 90 to 91 1203 1207 1209
   289| jumboframe enable 12288
   290|#
   291|interface XGigabitEthernet0/0/3
   292| description SW1POP10_PX03_TC_TELECOM_PX00
   293| port link-type trunk
   294| undo port trunk allow-pass vlan 1
   295| jumboframe enable 12288
   296|#
   297|interface XGigabitEthernet0/0/4
   298| shutdown
   299|#
   300|interface XGigabitEthernet0/0/5
   301| shutdown
   302|#
   303|interface XGigabitEthernet0/0/6
   304| shutdown
   305|#
   306|interface XGigabitEthernet0/0/7
   307| shutdown
   308|#
   309|interface XGigabitEthernet0/0/8
   310| shutdown
   311|#
   312|interface XGigabitEthernet0/0/9
   313| shutdown
   314|#
   315|interface XGigabitEthernet0/0/10
   316| shutdown
   317|#
   318|interface XGigabitEthernet0/0/11
   319| shutdown
   320|#
   321|interface XGigabitEthernet0/0/12
   322| shutdown
   323|#
   324|interface XGigabitEthernet0/0/13
   325| shutdown
   326|#
   327|interface XGigabitEthernet0/0/14
   328| shutdown
   329|#
   330|interface XGigabitEthernet0/0/15
   331| shutdown
   332|#
   333|interface XGigabitEthernet0/0/16
   334| shutdown
   335|#
   336|interface XGigabitEthernet0/0/17
   337| shutdown
   338|#
   339|interface XGigabitEthernet0/0/18
   340| shutdown
   341|#
   342|interface XGigabitEthernet0/0/19
   343| shutdown
   344|#
   345|interface XGigabitEthernet0/0/20
   346| shutdown
   347|#
   348|interface XGigabitEthernet0/0/21
   349| shutdown
   350|#
   351|interface XGigabitEthernet0/0/22
   352| shutdown
   353|#
   354|interface XGigabitEthernet0/0/23
   355| shutdown
   356|#
   357|interface XGigabitEthernet0/0/24
   358| description PTP_SW1POP10_PX24__OLT1_XSFP1
   359| port link-type trunk
   360| undo port trunk allow-pass vlan 1
   361| port trunk allow-pass vlan 100 to 101 109 3550
   362| stp disable
   363| jumboframe enable 12288
   364|#
   365|interface 100GE0/0/1
   366| description PTP_SW1POP10_PCX01__SW1POP27_PCX01
   367| port link-type trunk
   368| undo port trunk allow-pass vlan 1
   369| port trunk allow-pass vlan 1127
   370| jumboframe enable 12288
   371|#
   372|interface 100GE0/0/2
   373| description PTP_SW1POP10_PCX02__SW1POP12_PCX02
   374| port link-type trunk
   375| undo port trunk allow-pass vlan 1
   376| port trunk allow-pass vlan 1110
   377| jumboframe enable 12288
   378|#
   379|interface 100GE0/0/3
   380| shutdown
   381|#
   382|interface 100GE0/0/4
   383| shutdown
   384|#
   385|interface 100GE0/0/5
   386| shutdown
   387|#
   388|interface 100GE0/0/6
   389| shutdown
   390|#
   391|interface NULL0
   392|#
   393|interface LoopBack0
   394| ip address 10.244.189.10 255.255.255.255
   395|#
   396|ospf 1 router-id 10.244.189.10
   397| bfd all-interfaces enable
   398| import-route direct cost 15 type 1
   399| import-route static cost 15 type 1
   400| silent-interface all
   401| undo silent-interface Vlanif1110
   402| undo silent-interface Vlanif1209
   403| undo silent-interface Vlanif1127
   404| undo silent-interface Vlanif1203
   405| undo silent-interface Vlanif1207
   406| opaque-capability enable
   407| area 0.0.0.0
   408|  network 10.244.103.4 0.0.0.3 description Vlanif1203
   409|  network 10.244.107.4 0.0.0.3 description Vlanif1207
   410|  network 10.244.109.4 0.0.0.3 description Vlanif1209
   411|  network 10.244.110.0 0.0.0.3 description Vlanif1110
   412|  network 10.244.110.4 0.0.0.3 description Vlanif1210
   413|  network 10.244.127.0 0.0.0.3 description Vlanif1127
   414|  network 10.244.189.10 0.0.0.0 description LOOPBACK
   415|  mpls-te enable
   416|#
   417|undo icmp name timestamp-request receive
   418|#
   419|snmp-agent
   420|snmp-agent local-engineid 800007DB03F44588AAB900
   421|snmp-agent community read cipher %^%#N/%4YF8T+IWr6zP[U|J!wJ,Y~6bfM7BAq`<j"fd)QRR:2\j,Z~NbNF11\B*,:,3EDaa&>4:54rFHbvcS%^%#
   422|snmp-agent sys-info contact Cyberweb
   423|snmp-agent sys-info location -29.914629,-51.035335
   424|snmp-agent sys-info version v2c v3
   425|snmp-agent protocol source-status all-interface
   426|undo snmp-agent protocol source-status ipv6 all-interface
   427|#
   428|stelnet server enable
   429|ssh server-source all-interface
   430|ssh server cipher aes256_ctr aes128_ctr
   431|ssh server hmac sha2_256
   432|ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   433|ssh client cipher aes256_ctr aes128_ctr
   434|ssh client hmac sha2_256
   435|ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   436|ssh server dh-exchange min-len 2048
   437|ssh server publickey rsa_sha2_512 rsa_sha2_256
   438|#
   439|user-interface con 0
   440| authentication-mode password
   441| set authentication password cipher $1c$e:^a-XJN'!$GlvJ~[$N4US{Z:SAIm`HRXa.K1>r(>Dq\dHibfCR$
   442|user-interface vty 0 4
   443| authentication-mode aaa
   444| idle-timeout 3600 0
   445| protocol inbound all
   446|user-interface vty 16 20
   447|#
   448|wlan
   449| traffic-profile name default
   450| security-profile name default
   451| security-profile name default-wds
   452| security-profile name default-mesh
   453| ssid-profile name default
   454| vap-profile name default
   455| wds-profile name default
   456| mesh-handover-profile name default
   457| mesh-profile name default
   458| regulatory-domain-profile name default
   459| air-scan-profile name default
   460| rrm-profile name default
   461|  smart-roam snr-margin high-level-margin 15 low-level-margin 10
   462| radio-2g-profile name default
   463| radio-5g-profile name default
   464| wids-spoof-profile name default
   465| wids-whitelist-profile name default
   466| wids-profile name default
   467| ap-system-profile name default
   468| port-link-profile name default
   469| wired-port-profile name default
   470| ap-group name default
   471|  radio 2
   472|   frequency 5g
   473| provision-ap
   474|#
   475|dot1x-access-profile name dot1x_access_profile
   476|#
   477|mac-access-profile name mac_access_profile
   478|#
   479|ops
   480|#
   481|remote-unit
   482|#
   483|return
   484|[SW1POP10_P_EUCALIPTOS]
   485|```
   486|