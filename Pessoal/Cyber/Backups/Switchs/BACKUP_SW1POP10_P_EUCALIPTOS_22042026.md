---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP10

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP10 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP10]]
     2|
     3|     1|```yaml
     4|     2|User Authentication
     5|     3|(admin@10.244.189.10) Password:
     6|     4|
     7|     5|Info: The max number of VTY users is 10, and the number
     8|     6|      of current VTY users on line is 1.
     9|     7|      The current login time is 2026-04-22 10:12:22-03:00.
    10|     8|Info: Lastest accessed IP: 45.235.208.39  Time: 2026-04-20 17:11:50-03:00  Password will expire in: -
    11|     9|
    12|    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    13|    11|<SW1POP10_P_EUCALIPTOS>sys
    14|    12|Enter system view, return user view with Ctrl+Z.
    15|    13|[SW1POP10_P_EUCALIPTOS]displ
    16|    14|[SW1POP10_P_EUCALIPTOS]display cu
    17|    15|[SW1POP10_P_EUCALIPTOS]display current-configuration
    18|    16|!Software Version V200R023C00SPC500
    19|    17|#
    20|    18|sysname SW1POP10_P_EUCALIPTOS
    21|    19|#
    22|    20|vlan batch 90 to 91 100 to 101 1110 1127 1151 1203 1207 1209 3151 3550
    23|    21|vlan batch 4094
    24|    22|#
    25|    23|authentication-profile name default_authen_profile
    26|    24| authentication ipv6-control enable
    27|    25|authentication-profile name dot1x_authen_profile
    28|    26| authentication ipv6-control enable
    29|    27|authentication-profile name dot1xmac_authen_profile
    30|    28| authentication ipv6-control enable
    31|    29|authentication-profile name mac_authen_profile
    32|    30| authentication ipv6-control enable
    33|    31|authentication-profile name multi_authen_profile
    34|    32| authentication ipv6-control enable
    35|    33|authentication-profile name portal_authen_profile
    36|    34| authentication ipv6-control enable
    37|    35|#
    38|    36|set save-configuration delay 1
    39|    37|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    40|    38|#
    41|    39|http server-source all-interface
    42|    40|#
    43|    41|clock timezone Brasilia minus 03:00:00
    44|    42|#
    45|    43|ddr isolation disable
    46|    44|#
    47|    45|undo mac-address learning self-healing enable
    48|    46|#
    49|    47|capwap unknown-unicast cir 0
    50|    48|#
    51|    49|diffserv domain default
    52|    50|#
    53|    51|radius-server template default
    54|    52|#
    55|    53|bfd
    56|    54|#
    57|    55|mpls lsr-id 10.244.189.10
    58|    56|mpls
    59|    57| mpls te
    60|    58| mpls rsvp-te
    61|    59| mpls te cspf
    62|    60|#
    63|    61|mpls l2vpn
    64|    62|#
    65|    63|vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1 static
    66|    64| pwsignal ldp
    67|    65|  vsi-id 91
    68|    66|  peer 10.244.188.2
    69|    67|  traffic-statistics enable
    70|    68| mtu 9000
    71|    69| encapsulation ethernet
    72|    70|#
    73|    71|vsi VSI_90_SC_POP0_POP10-9_ITA_MGNT static
    74|    72| pwsignal ldp
    75|    73|  vsi-id 90
    76|    74|  peer 10.244.188.2
    77|    75|  traffic-statistics enable
    78|    76| mtu 9000
    79|    77| encapsulation ethernet
    80|    78|#
    81|    79|vsi VSI100_SC_POP00-2_POP10_PQ_MGNT static
    82|    80| pwsignal ldp
    83|    81|  vsi-id 100
    84|    82|  peer 10.244.188.2
    85|    83|  peer 10.244.189.0
    86|    84|  traffic-statistics enable
    87|    85| mtu 9000
    88|    86| encapsulation ethernet
    89|    87|#
    90|    88|vsi VSI101_SC_POP00-2_POP10_PQ_OLT1 static
    91|    89| pwsignal ldp
    92|    90|  vsi-id 101
    93|    91|  peer 10.244.188.2
    94|    92|  peer 10.244.189.0
    95|    93|  traffic-statistics enable
    96|    94| mtu 9000
    97|    95| encapsulation ethernet
    98|    96|#
    99|    97|vsi VSI_3550_R_NEUTRA_LM_NA_REDE_CY static
   100|    98| pwsignal ldp
   101|    99|  vsi-id 3550
   102|   100|  peer 10.244.188.27
   103|   101| mtu 9000
   104|   102| encapsulation ethernet
   105|   103|#
   106|   104|vsi VSI3151_CY_POP00_PROV_UPNET_L1 static
   107|   105| pwsignal ldp
   108|   106|  vsi-id 3151
   109|   107|  peer 10.244.189.0
   110|   108|  traffic-statistics enable
   111|   109| mtu 9000
   112|   110| encapsulation ethernet
   113|   111|#
   114|   112|mpls ldp
   115|   113|#
   116|   114|#
   117|   115|mpls ldp remote-peer 10.244.188.2
   118|   116| remote-ip 10.244.188.2
   119|   117|#
   120|   118|mpls ldp remote-peer 10.244.188.27
   121|   119| remote-ip 10.244.188.27
   122|   120|#
   123|   121|mpls ldp remote-peer 10.244.189.0
   124|   122| remote-ip 10.244.189.0
   125|   123|#
   126|   124|pki realm default
   127|   125| certificate-check none
   128|   126|#
   129|   127|free-rule-template name default_free_rule
   130|   128|#
   131|   129|portal-access-profile name portal_access_profile
   132|   130|#
   133|   131|drop-profile default
   134|   132|#
   135|   133|vlan 90
   136|   134| description VLAN_90_POP09_ITACOLOMI_MGNT
   137|   135|vlan 91
   138|   136| description VLAN_91_POP09_ITACOLOMI_OLT1
   139|   137|vlan 100
   140|   138| description VLAN_100_POP10_PQ_EUCAL_MGNT
   141|   139|vlan 101
   142|   140| description VLAN_101_POP10_PQ_EUCAL_OLT1
   143|   141|vlan 1110
   144|   142| description VLAN1110_SW1POP00_SW1POP10_MPLS
   145|   143|vlan 1127
   146|   144| description VLAN1127_SW1POP10_SW1POP27_MPLS
   147|   145|vlan 1151
   148|   146| description VLAN1151_SW1POP10_SW1POP51_OSPF
   149|   147|vlan 1203
   150|   148| description VL1203_SW1POP10-9_SW1POP03_MPLS
   151|   149|vlan 1207
   152|   150| description VL1107_SW1POP10-9_SW1POP07_MPLS
   153|   151|vlan 1209
   154|   152| description VLAN1209_SW1POP10_SW1POP09_OSPF
   155|   153|vlan 3151
   156|   154| description VLAN_3151_CYBER_BGP1_UPNET_L1
   157|   155|vlan 3550
   158|   156| description VLAN_3550_R_NEUTRA_LM_NA_REDE_CYBER
   159|   157|vlan 4094
   160|   158| description VLAN_4094_BLACKHOLE
   161|   159|#
   162|   160|aaa
   163|   161| authentication-scheme default
   164|   162|  authentication-mode local
   165|   163| authentication-scheme radius
   166|   164|  authentication-mode radius
   167|   165| authorization-scheme default
   168|   166|  authorization-mode local
   169|   167| accounting-scheme default
   170|   168|  accounting-mode none
   171|   169| local-aaa-user password policy administrator
   172|   170|  password history record number 0
   173|   171|  password expire 0
   174|   172| domain default
   175|   173|  authentication-scheme radius
   176|   174|  accounting-scheme default
   177|   175|  radius-server default
   178|   176| domain default_admin
   179|   177|  authentication-scheme default
   180|   178|  accounting-scheme default
   181|   179| local-user admin password irreversible-cipher $1c$'"nOV,d``)$HlZ9FVk@$0K;eCF3,F20vr-d%i%5R:p<]y-}\9A/$
   182|   180| local-user admin privilege level 15
   183|   181| local-user admin service-type ssh http
   184|   182| local-user zandona password irreversible-cipher $1c$oqXJ.)3x+I$cxDNIPIw~Yx!;N,vi[N4Zx}X6-Z1OQpge7"`_<eC$
   185|   183| local-user zandona privilege level 15
   186|   184| local-user zandona service-type ssh http
   187|   185|#
   188|   186|ntp-service server disable
   189|   187|ntp-service ipv6 server disable
   190|   188|ntp-service unicast-server 200.189.40.8
   191|   189|ntp-service unicast-server 200.160.0.8
   192|   190|#
   193|   191|interface Vlanif90
   194|   192| description VSI90_SC_POP00_POP09_ITACO_MGNT
   195|   193| l2 binding vsi VSI_90_SC_POP0_POP10-9_ITA_MGNT
   196|   194|#
   197|   195|interface Vlanif91
   198|   196| description VSI91_SC_POP00-2_POP09_ITA_OLT1
   199|   197| l2 binding vsi VSI_91_SC_POP2_POP10-9_ITA_OLT1
   200|   198|#
   201|   199|interface Vlanif100
   202|   200| description VSI100_SC_POP00-2_POP10_PQ_MGNT
   203|   201| l2 binding vsi VSI100_SC_POP00-2_POP10_PQ_MGNT
   204|   202|#
   205|   203|interface Vlanif101
   206|   204| description VSI101_SC_POP00-2_POP10_PQ_OLT1
   207|   205| l2 binding vsi VSI101_SC_POP00-2_POP10_PQ_OLT1
   208|   206|#
   209|   207|interface Vlanif1110
   210|   208| description VLAN1110_SW1POP12_SW1POP10_MPLS
   211|   209| mtu 9216
   212|   210| ip address 10.244.110.2 255.255.255.252
   213|   211| ospf cost 1
   214|   212| ospf network-type p2p
   215|   213| mpls
   216|   214| mpls te
   217|   215| mpls rsvp-te
   218|   216| mpls ldp
   219|   217|#
   220|   218|interface Vlanif1127
   221|   219| description VLAN1127_SW1POP10_SW1POP27_MPLS
   222|   220| mtu 9216
   223|   221| ip address 10.244.127.1 255.255.255.252
   224|   222| ospf cost 1
   225|   223| ospf network-type p2p
   226|   224| mpls
   227|   225| mpls te
   228|   226| mpls rsvp-te
   229|   227| mpls ldp
   230|   228|#
   231|   229|interface Vlanif1203
   232|   230| description VLAN1203_SW1POP10_SW1POP03_MPLS
   233|   231| shutdown
   234|   232| ip address 10.244.103.5 255.255.255.252
   235|   233| ospf cost 1
   236|   234| ospf network-type p2p
   237|   235| mpls
   238|   236| mpls ldp
   239|   237|#
   240|   238|interface Vlanif1207
   241|   239| description VL1107_SW1POP10-9_SW1POP07_MPLS
   242|   240| mtu 9216
   243|   241| ip address 10.244.107.5 255.255.255.252
   244|   242| ospf cost 1
   245|   243| ospf network-type p2p
   246|   244| mpls
   247|   245| mpls ldp
   248|   246|#
   249|   247|interface Vlanif1209
   250|   248| description VLAN1209_SW1POP10_SW1POP09_OSPF
   251|   249| mtu 9216
   252|   250| ip address 10.244.109.5 255.255.255.252
   253|   251| ospf cost 10
   254|   252| ospf network-type p2p
   255|   253|#
   256|   254|interface Vlanif3151
   257|   255| description VLAN3151_CYBER_BGP1_SRNET_L1
   258|   256| shutdown
   259|   257| l2 binding vsi VSI3151_CY_POP00_PROV_UPNET_L1
   260|   258|#
   261|   259|interface Vlanif3550
   262|   260| description VLAN_3550_R_NEUTRA_LM_NA_REDE_CYBER
   263|   261| l2 binding vsi VSI_3550_R_NEUTRA_LM_NA_REDE_CY
   264|   262|#
   265|   263|interface MEth0/0/1
   266|   264| ip address 192.168.1.253 255.255.255.0
   267|   265|#
   268|   266|interface XGigabitEthernet0/0/1
   269|   267| description SW1POP10_PX01_SW1SRNET_PX11
   270|   268| shutdown
   271|   269| port link-type trunk
   272|   270| port trunk pvid vlan 4094
   273|   271| undo port trunk allow-pass vlan 1
   274|   272| port trunk allow-pass vlan 3151
   275|   273| stp bpdu-filter enable
   276|   274| stp edged-port enable
   277|   275| undo lldp enable
   278|   276| jumboframe enable 12288
   279|   277| storm-control broadcast min-rate 64 max-rate 2048
   280|   278| storm-control multicast min-rate 64 max-rate 2048
   281|   279| storm-control unicast min-rate 64 max-rate 2048
   282|   280| storm-control interval 10
   283|   281| storm-control enable trap
   284|   282| storm-control enable log
   285|   283|#
   286|   284|interface XGigabitEthernet0/0/2
   287|   285| description SW1POP10_PX02_SW1POP09_PX02
   288|   286| port link-type trunk
   289|   287| undo port trunk allow-pass vlan 1
   290|   288| port trunk allow-pass vlan 90 to 91 1203 1207 1209
   291|   289| jumboframe enable 12288
   292|   290|#
   293|   291|interface XGigabitEthernet0/0/3
   294|   292| description SW1POP10_PX03_TC_TELECOM_PX00
   295|   293| port link-type trunk
   296|   294| undo port trunk allow-pass vlan 1
   297|   295| jumboframe enable 12288
   298|   296|#
   299|   297|interface XGigabitEthernet0/0/4
   300|   298| shutdown
   301|   299|#
   302|   300|interface XGigabitEthernet0/0/5
   303|   301| shutdown
   304|   302|#
   305|   303|interface XGigabitEthernet0/0/6
   306|   304| shutdown
   307|   305|#
   308|   306|interface XGigabitEthernet0/0/7
   309|   307| shutdown
   310|   308|#
   311|   309|interface XGigabitEthernet0/0/8
   312|   310| shutdown
   313|   311|#
   314|   312|interface XGigabitEthernet0/0/9
   315|   313| shutdown
   316|   314|#
   317|   315|interface XGigabitEthernet0/0/10
   318|   316| shutdown
   319|   317|#
   320|   318|interface XGigabitEthernet0/0/11
   321|   319| shutdown
   322|   320|#
   323|   321|interface XGigabitEthernet0/0/12
   324|   322| shutdown
   325|   323|#
   326|   324|interface XGigabitEthernet0/0/13
   327|   325| shutdown
   328|   326|#
   329|   327|interface XGigabitEthernet0/0/14
   330|   328| shutdown
   331|   329|#
   332|   330|interface XGigabitEthernet0/0/15
   333|   331| shutdown
   334|   332|#
   335|   333|interface XGigabitEthernet0/0/16
   336|   334| shutdown
   337|   335|#
   338|   336|interface XGigabitEthernet0/0/17
   339|   337| shutdown
   340|   338|#
   341|   339|interface XGigabitEthernet0/0/18
   342|   340| shutdown
   343|   341|#
   344|   342|interface XGigabitEthernet0/0/19
   345|   343| shutdown
   346|   344|#
   347|   345|interface XGigabitEthernet0/0/20
   348|   346| shutdown
   349|   347|#
   350|   348|interface XGigabitEthernet0/0/21
   351|   349| shutdown
   352|   350|#
   353|   351|interface XGigabitEthernet0/0/22
   354|   352| shutdown
   355|   353|#
   356|   354|interface XGigabitEthernet0/0/23
   357|   355| shutdown
   358|   356|#
   359|   357|interface XGigabitEthernet0/0/24
   360|   358| description PTP_SW1POP10_PX24__OLT1_XSFP1
   361|   359| port link-type trunk
   362|   360| undo port trunk allow-pass vlan 1
   363|   361| port trunk allow-pass vlan 100 to 101 109 3550
   364|   362| stp disable
   365|   363| jumboframe enable 12288
   366|   364|#
   367|   365|interface 100GE0/0/1
   368|   366| description PTP_SW1POP10_PCX01__SW1POP27_PCX01
   369|   367| port link-type trunk
   370|   368| undo port trunk allow-pass vlan 1
   371|   369| port trunk allow-pass vlan 1127
   372|   370| jumboframe enable 12288
   373|   371|#
   374|   372|interface 100GE0/0/2
   375|   373| description PTP_SW1POP10_PCX02__SW1POP12_PCX02
   376|   374| port link-type trunk
   377|   375| undo port trunk allow-pass vlan 1
   378|   376| port trunk allow-pass vlan 1110
   379|   377| jumboframe enable 12288
   380|   378|#
   381|   379|interface 100GE0/0/3
   382|   380| shutdown
   383|   381|#
   384|   382|interface 100GE0/0/4
   385|   383| shutdown
   386|   384|#
   387|   385|interface 100GE0/0/5
   388|   386| shutdown
   389|   387|#
   390|   388|interface 100GE0/0/6
   391|   389| shutdown
   392|   390|#
   393|   391|interface NULL0
   394|   392|#
   395|   393|interface LoopBack0
   396|   394| ip address 10.244.189.10 255.255.255.255
   397|   395|#
   398|   396|ospf 1 router-id 10.244.189.10
   399|   397| bfd all-interfaces enable
   400|   398| import-route direct cost 15 type 1
   401|   399| import-route static cost 15 type 1
   402|   400| silent-interface all
   403|   401| undo silent-interface Vlanif1110
   404|   402| undo silent-interface Vlanif1209
   405|   403| undo silent-interface Vlanif1127
   406|   404| undo silent-interface Vlanif1203
   407|   405| undo silent-interface Vlanif1207
   408|   406| opaque-capability enable
   409|   407| area 0.0.0.0
   410|   408|  network 10.244.103.4 0.0.0.3 description Vlanif1203
   411|   409|  network 10.244.107.4 0.0.0.3 description Vlanif1207
   412|   410|  network 10.244.109.4 0.0.0.3 description Vlanif1209
   413|   411|  network 10.244.110.0 0.0.0.3 description Vlanif1110
   414|   412|  network 10.244.110.4 0.0.0.3 description Vlanif1210
   415|   413|  network 10.244.127.0 0.0.0.3 description Vlanif1127
   416|   414|  network 10.244.189.10 0.0.0.0 description LOOPBACK
   417|   415|  mpls-te enable
   418|   416|#
   419|   417|undo icmp name timestamp-request receive
   420|   418|#
   421|   419|snmp-agent
   422|   420|snmp-agent local-engineid 800007DB03F44588AAB900
   423|   421|snmp-agent community read cipher %^%#N/%4YF8T+IWr6zP[U|J!wJ,Y~6bfM7BAq`<j"fd)QRR:2\j,Z~NbNF11\B*,:,3EDaa&>4:54rFHbvcS%^%#
   424|   422|snmp-agent sys-info contact Cyberweb
   425|   423|snmp-agent sys-info location -29.914629,-51.035335
   426|   424|snmp-agent sys-info version v2c v3
   427|   425|snmp-agent protocol source-status all-interface
   428|   426|undo snmp-agent protocol source-status ipv6 all-interface
   429|   427|#
   430|   428|stelnet server enable
   431|   429|ssh server-source all-interface
   432|   430|ssh server cipher aes256_ctr aes128_ctr
   433|   431|ssh server hmac sha2_256
   434|   432|ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   435|   433|ssh client cipher aes256_ctr aes128_ctr
   436|   434|ssh client hmac sha2_256
   437|   435|ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   438|   436|ssh server dh-exchange min-len 2048
   439|   437|ssh server publickey rsa_sha2_512 rsa_sha2_256
   440|   438|#
   441|   439|user-interface con 0
   442|   440| authentication-mode password
   443|   441| set authentication password cipher $1c$e:^a-XJN'!$GlvJ~[$N4US{Z:SAIm`HRXa.K1>r(>Dq\dHibfCR$
   444|   442|user-interface vty 0 4
   445|   443| authentication-mode aaa
   446|   444| idle-timeout 3600 0
   447|   445| protocol inbound all
   448|   446|user-interface vty 16 20
   449|   447|#
   450|   448|wlan
   451|   449| traffic-profile name default
   452|   450| security-profile name default
   453|   451| security-profile name default-wds
   454|   452| security-profile name default-mesh
   455|   453| ssid-profile name default
   456|   454| vap-profile name default
   457|   455| wds-profile name default
   458|   456| mesh-handover-profile name default
   459|   457| mesh-profile name default
   460|   458| regulatory-domain-profile name default
   461|   459| air-scan-profile name default
   462|   460| rrm-profile name default
   463|   461|  smart-roam snr-margin high-level-margin 15 low-level-margin 10
   464|   462| radio-2g-profile name default
   465|   463| radio-5g-profile name default
   466|   464| wids-spoof-profile name default
   467|   465| wids-whitelist-profile name default
   468|   466| wids-profile name default
   469|   467| ap-system-profile name default
   470|   468| port-link-profile name default
   471|   469| wired-port-profile name default
   472|   470| ap-group name default
   473|   471|  radio 2
   474|   472|   frequency 5g
   475|   473| provision-ap
   476|   474|#
   477|   475|dot1x-access-profile name dot1x_access_profile
   478|   476|#
   479|   477|mac-access-profile name mac_access_profile
   480|   478|#
   481|   479|ops
   482|   480|#
   483|   481|remote-unit
   484|   482|#
   485|   483|return
   486|   484|[SW1POP10_P_EUCALIPTOS]
   487|   485|```
   488|   486|
```

## 🗒️ Observações
- {{notes}}
