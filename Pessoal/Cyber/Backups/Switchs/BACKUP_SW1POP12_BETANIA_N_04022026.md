---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP12

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP12 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP12]]
     2|
     3|     1|```yaml
     4|     2|User Authentication
     5|     3|(admin@10.244.189.12) Password:
     6|     4|
     7|     5|Info: The max number of VTY users is 10, and the number
     8|     6|      of current VTY users on line is 1.
     9|     7|      The current login time is 2026-02-04 08:06:23-03:00.
    10|     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-01-31 15:41:21-03:00  Password will expire in: -
    11|     9|
    12|    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    13|    11|<SW1POP12_BETANIA_N>displ
    14|    12|<SW1POP12_BETANIA_N>display cu
    15|    13|<SW1POP12_BETANIA_N>display current-configuration
    16|    14|!Software Version V200R023C00SPC500
    17|    15|#
    18|    16|sysname SW1POP12_BETANIA_N
    19|    17|#
    20|    18|router id 10.244.189.12
    21|    19|#
    22|    20|vlan batch 120 to 121 140 to 141 1103 1110 1112 1214 3114 3510 to 3512 3540
    23|    21|#
    24|    22|authentication-profile name default_authen_profile
    25|    23| authentication ipv6-control enable
    26|    24|authentication-profile name dot1x_authen_profile
    27|    25| authentication ipv6-control enable
    28|    26|authentication-profile name dot1xmac_authen_profile
    29|    27| authentication ipv6-control enable
    30|    28|authentication-profile name mac_authen_profile
    31|    29| authentication ipv6-control enable
    32|    30|authentication-profile name multi_authen_profile
    33|    31| authentication ipv6-control enable
    34|    32|authentication-profile name portal_authen_profile
    35|    33| authentication ipv6-control enable
    36|    34|#
    37|    35|set save-configuration delay 1
    38|    36|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    39|    37|#
    40|    38|http server-source all-interface
    41|    39|#
    42|    40|clock timezone Brasilia minus 03:00:00
    43|    41|#
    44|    42|ddr isolation disable
    45|    43|#
    46|    44|undo mac-address learning self-healing enable
    47|    45|#
    48|    46|capwap unknown-unicast cir 0
    49|    47|#
    50|    48|diffserv domain default
    51|    49|#
    52|    50|radius-server template default
    53|    51|#
    54|    52|bfd
    55|    53|#
    56|    54|mpls lsr-id 10.244.189.12
    57|    55|mpls
    58|    56| mpls te
    59|    57| mpls rsvp-te
    60|    58| mpls te cspf
    61|    59|#
    62|    60|mpls l2vpn
    63|    61|#
    64|    62|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
    65|    63| pwsignal ldp
    66|    64|  vsi-id 121
    67|    65|  peer 10.244.188.2
    68|    66|  peer 10.244.189.0
    69|    67|  traffic-statistics enable
    70|    68| mtu 9000
    71|    69| encapsulation ethernet
    72|    70|#
    73|    71|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
    74|    72| pwsignal ldp
    75|    73|  vsi-id 120
    76|    74|  peer 10.244.188.2
    77|    75|  peer 10.244.189.0
    78|    76|  traffic-statistics enable
    79|    77| mtu 9000
    80|    78| encapsulation ethernet
    81|    79|#
    82|    80|vsi VSI3512_POP12_TR_CYBER_FENIX_RN static
    83|    81| pwsignal ldp
    84|    82|  vsi-id 3512
    85|    83|  peer 10.244.188.8
    86|    84|  traffic-statistics enable
    87|    85| mtu 9000
    88|    86| encapsulation ethernet
    89|    87|#
    90|    88|vsi VSI3511_RN_CYBER_NA_FENIX_PPPOE static
    91|    89| pwsignal ldp
    92|    90|  vsi-id 3511
    93|    91|  peer 10.244.189.0
    94|    92|  peer 10.244.188.2
    95|    93| mtu 9000
    96|    94| encapsulation ethernet
    97|    95|#
    98|    96|vsi VSI3540_RN_MEDIA_NA_CYBER_PPPOE static
    99|    97| pwsignal ldp
   100|    98|  vsi-id 3540
   101|    99|  peer 10.244.188.5
   102|   100| mtu 9000
   103|   101| encapsulation ethernet
   104|   102|#
   105|   103|vsi VSI3510_RN_FENIX_NA_CYBER_PPPOE static
   106|   104| pwsignal ldp
   107|   105|  vsi-id 3510
   108|   106|  peer 10.244.189.3
   109|   107| mtu 9000
   110|   108| encapsulation ethernet
   111|   109|#
   112|   110|mpls ldp
   113|   111|#
   114|   112|#
   115|   113|mpls ldp remote-peer 10.244.188.2
   116|   114| remote-ip 10.244.188.2
   117|   115|#
   118|   116|mpls ldp remote-peer 10.244.188.5
   119|   117| remote-ip 10.244.188.5
   120|   118|#
   121|   119|mpls ldp remote-peer 10.244.188.8
   122|   120| remote-ip 10.244.188.8
   123|   121|#
   124|   122|mpls ldp remote-peer 10.244.189.0
   125|   123| remote-ip 10.244.189.0
   126|   124|#
   127|   125|mpls ldp remote-peer 10.244.189.3
   128|   126| remote-ip 10.244.189.3
   129|   127|#
   130|   128|pki realm default
   131|   129| certificate-check none
   132|   130|#
   133|   131|free-rule-template name default_free_rule
   134|   132|#
   135|   133|portal-access-profile name portal_access_profile
   136|   134|#
   137|   135|drop-profile default
   138|   136|#
   139|   137|vlan 120
   140|   138| description VLAN_120_POP12_BETANIA_GERENCIA
   141|   139|vlan 121
   142|   140| description VLAN_121_POP12_BETANIA_OLT1
   143|   141|vlan 1103
   144|   142| description VLAN1103_SW1POP12_SW1POP03_MPLS1
   145|   143|vlan 1110
   146|   144| description VLAN1110_SW1POP12_SW1POP10_MPLS1
   147|   145|vlan 1112
   148|   146| description VLAN1112_SW1POP00_SW1POP12_MPLS1
   149|   147|vlan 1214
   150|   148| description VLAN_1214_PTP_POP12__SW2POP14_OSPF
   151|   149|vlan 3510
   152|   150| description VLAN_3510_RN_CLIENTES_CYBER_NA_REDE_FENIX
   153|   151|vlan 3511
   154|   152| description VLAN_3511_RN_CLIENTES_CYBER_NA_REDE_DA_FENIX
   155|   153|vlan 3512
   156|   154| description VLAN_3512_TR_CYBER_FENIX_R_NEUTRA
   157|   155|vlan 3540
   158|   156| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
   159|   157|#
   160|   158|aaa
   161|   159| authentication-scheme default
   162|   160|  authentication-mode local
   163|   161| authentication-scheme radius
   164|   162|  authentication-mode radius
   165|   163| authorization-scheme default
   166|   164|  authorization-mode local
   167|   165| accounting-scheme default
   168|   166|  accounting-mode none
   169|   167| local-aaa-user password policy administrator
   170|   168|  password history record number 0
   171|   169|  password expire 0
   172|   170| domain default
   173|   171|  authentication-scheme radius
   174|   172|  accounting-scheme default
   175|   173|  radius-server default
   176|   174| domain default_admin
   177|   175|  authentication-scheme default
   178|   176|  accounting-scheme default
   179|   177| local-user admin password irreversible-cipher $1c$\,0m>}DUP~$=%U^OKK9-5Ka9',6W>!#^dfYD2IY2.+3{:5^hEZ<$
   180|   178| local-user admin privilege level 15
   181|   179| local-user admin service-type ssh http
   182|   180| local-user zandona password irreversible-cipher $1c$$6!BWHL`=B$czFR<OP0&E/H(jHU-ev*K783EXoCA@6^v'(zM{h6$
   183|   181| local-user zandona privilege level 15
   184|   182| local-user zandona service-type ssh http
   185|   183|#
   186|   184|ntp-service server disable
   187|   185|ntp-service ipv6 server disable
   188|   186|ntp-service unicast-server 200.189.40.8
   189|   187|ntp-service unicast-server 200.160.0.8
   190|   188|#
   191|   189|interface Vlanif120
   192|   190| description vlan120_POP12_BETANIA_GERENCIA
   193|   191| l2 binding vsi VSI_120_CY_POP0-2_POP12_BE_MGNT
   194|   192|#
   195|   193|interface Vlanif121
   196|   194| description VLAN_121_POP12_BETANIA_OLT1
   197|   195| l2 binding vsi VSI_121_CY_POP0-2_POP12_BE_OLT1
   198|   196|#
   199|   197|interface Vlanif1103
   200|   198| description VLAN1103_SW1POP12_SW1POP03_MPLS1
   201|   199| mtu 9216
   202|   200| ip address 10.244.103.1 255.255.255.252
   203|   201| ospf cost 1
   204|   202| ospf network-type p2p
   205|   203| mpls
   206|   204| mpls te
   207|   205| mpls rsvp-te
   208|   206| mpls ldp
   209|   207|#
   210|   208|interface Vlanif1110
   211|   209| description VLAN1110_SW1POP12_SW1POP10_MPLS1
   212|   210| mtu 9216
   213|   211| ip address 10.244.110.1 255.255.255.252
   214|   212| ospf cost 1
   215|   213| ospf network-type p2p
   216|   214| mpls
   217|   215| mpls te
   218|   216| mpls rsvp-te
   219|   217| mpls ldp
   220|   218|#
   221|   219|interface Vlanif1112
   222|   220| description VLAN1112_SW1POP00_SW1POP12_MPLS1
   223|   221| mtu 9216
   224|   222| ip address 10.244.112.2 255.255.255.252
   225|   223| ospf cost 1
   226|   224| ospf network-type p2p
   227|   225| mpls
   228|   226| mpls te
   229|   227| mpls rsvp-te
   230|   228| mpls ldp
   231|   229|#
   232|   230|interface Vlanif1122
   233|   231| mtu 9216
   234|   232| ip address 10.244.122.1 255.255.255.252
   235|   233| ospf cost 1
   236|   234| ospf network-type p2p
   237|   235|#
   238|   236|interface Vlanif1214
   239|   237| description PTP_POP12__SW2POP14_OSPF
   240|   238| mtu 9216
   241|   239| ip address 10.244.114.9 255.255.255.252
   242|   240| ospf cost 10
   243|   241| ospf network-type p2p
   244|   242| mpls
   245|   243| mpls te
   246|   244| mpls rsvp-te
   247|   245| mpls ldp
   248|   246|#
   249|   247|interface Vlanif3510
   250|   248| description VLAN_3510_RN_CLIENTES_CYBER_NA_REDE_FENIX
   251|   249| l2 binding vsi VSI3510_RN_FENIX_NA_CYBER_PPPOE
   252|   250|#
   253|   251|interface Vlanif3511
   254|   252| description VLAN_3511_RN_CLIENTES_CYBER_NA_REDE_DA_FENIX
   255|   253| l2 binding vsi VSI3511_RN_CYBER_NA_FENIX_PPPOE
   256|   254|#
   257|   255|interface Vlanif3512
   258|   256| description VLAN_3512_TR_CYBER_FENIX_R_NEUTRA
   259|   257| l2 binding vsi VSI3512_POP12_TR_CYBER_FENIX_RN
   260|   258|#
   261|   259|interface Vlanif3540
   262|   260| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
   263|   261| l2 binding vsi VSI3540_RN_MEDIA_NA_CYBER_PPPOE
   264|   262|#
   265|   263|interface MEth0/0/1
   266|   264| ip address 192.168.1.253 255.255.255.0
   267|   265|#
   268|   266|interface XGigabitEthernet0/0/1
   269|   267| description PTP_SW1POP12_PX01OLT1POP12MGNT
   270|   268| port link-type dot1q-tunnel
   271|   269| port default vlan 120
   272|   270|#
   273|   271|interface XGigabitEthernet0/0/2
   274|   272| description PTP_SW1POP12_PX02__OLT1POP12PX02
   275|   273| port link-type trunk
   276|   274| undo port trunk allow-pass vlan 1
   277|   275| port trunk allow-pass vlan 121 3104 3540
   278|   276| jumboframe enable 12288
   279|   277|#
   280|   278|interface XGigabitEthernet0/0/3
   281|   279| description PTP_SW1POP12_PX03__SW1POP03_PX03
   282|   280| port link-type trunk
   283|   281| undo port trunk allow-pass vlan 1
   284|   282| port trunk allow-pass vlan 1103
   285|   283| jumboframe enable 12288
   286|   284|#
   287|   285|interface XGigabitEthernet0/0/4
   288|   286| shutdown
   289|   287|#
   290|   288|interface XGigabitEthernet0/0/5
   291|   289| description PTP_SW1POP12_PX05__SW1FENIX_PXX
   292|   290| port link-type trunk
   293|   291| undo port trunk allow-pass vlan 1
   294|   292| port trunk allow-pass vlan 3510 to 3512
   295|   293| jumboframe enable 12288
   296|   294|#
   297|   295|interface XGigabitEthernet0/0/6
   298|   296| description PTP_SW1POP12_PX06__SW1POP14_PX06
   299|   297| port link-type trunk
   300|   298| undo port trunk allow-pass vlan 1
   301|   299| port trunk allow-pass vlan 1214
   302|   300| jumboframe enable 12288
   303|   301|#
   304|   302|interface XGigabitEthernet0/0/7
   305|   303| shutdown
   306|   304|#
   307|   305|interface XGigabitEthernet0/0/8
   308|   306| shutdown
   309|   307|#
   310|   308|interface XGigabitEthernet0/0/9
   311|   309| shutdown
   312|   310|#
   313|   311|interface XGigabitEthernet0/0/10
   314|   312| shutdown
   315|   313|#
   316|   314|interface XGigabitEthernet0/0/11
   317|   315| shutdown
   318|   316|#
   319|   317|interface XGigabitEthernet0/0/12
   320|   318| shutdown
   321|   319|#
   322|   320|interface XGigabitEthernet0/0/13
   323|   321| shutdown
   324|   322|#
   325|   323|interface XGigabitEthernet0/0/14
   326|   324| shutdown
   327|   325|#
   328|   326|interface XGigabitEthernet0/0/15
   329|   327| shutdown
   330|   328|#
   331|   329|interface XGigabitEthernet0/0/16
   332|   330| shutdown
   333|   331|#
   334|   332|interface XGigabitEthernet0/0/17
   335|   333| shutdown
   336|   334|#
   337|   335|interface XGigabitEthernet0/0/18
   338|   336| shutdown
   339|   337|#
   340|   338|interface XGigabitEthernet0/0/19
   341|   339| shutdown
   342|   340|#
   343|   341|interface XGigabitEthernet0/0/20
   344|   342| shutdown
   345|   343|#
   346|   344|interface XGigabitEthernet0/0/21
   347|   345| shutdown
   348|   346|#
   349|   347|interface XGigabitEthernet0/0/22
   350|   348| shutdown
   351|   349|#
   352|   350|interface XGigabitEthernet0/0/23
   353|   351| shutdown
   354|   352|#
   355|   353|interface XGigabitEthernet0/0/24
   356|   354| shutdown
   357|   355|#
   358|   356|interface 100GE0/0/1
   359|   357| undo portswitch
   360|   358| description PTP_SW1POP12_PQ01__SW1POP05_PQ01
   361|   359| ip address 10.244.105.1 255.255.255.252
   362|   360| ospf cost 1
   363|   361| ospf network-type p2p
   364|   362| mpls
   365|   363| mpls te
   366|   364| mpls rsvp-te
   367|   365| mpls ldp
   368|   366| jumboframe enable 12288
   369|   367|#
   370|   368|interface 100GE0/0/2
   371|   369| description PTP_SW1POP12_CX02__SW1POP10_PQ02
   372|   370| port link-type trunk
   373|   371| undo port trunk allow-pass vlan 1
   374|   372| port trunk allow-pass vlan 1110
   375|   373| jumboframe enable 12288
   376|   374|#
   377|   375|interface 100GE0/0/3
   378|   376| shutdown
   379|   377|#
   380|   378|interface 100GE0/0/4
   381|   379| shutdown
   382|   380|#
   383|   381|interface 100GE0/0/5
   384|   382| description PTP_SW1POP12_PQ05__SW1POP14_PCX05
   385|   383| port link-type trunk
   386|   384| undo port trunk allow-pass vlan 1
   387|   385| port trunk allow-pass vlan 1114
   388|   386| jumboframe enable 12288
   389|   387|#
   390|   388|interface 100GE0/0/6
   391|   389| description PTP_SW1POP12_PQ06__SW1POP00_PCX06
   392|   390| port link-type trunk
   393|   391| undo port trunk allow-pass vlan 1
   394|   392| port trunk allow-pass vlan 1112
   395|   393| jumboframe enable 12288
   396|   394|#
   397|   395|interface NULL0
   398|   396|#
   399|   397|interface LoopBack0
   400|   398| ip address 10.244.189.12 255.255.255.255
   401|   399|#
   402|   400|ospf 1 router-id 10.244.189.12
   403|   401| bfd all-interfaces enable
   404|   402| import-route direct cost 15 type 1
   405|   403| import-route static cost 15 type 1
   406|   404| silent-interface all
   407|   405| undo silent-interface Vlanif1103
   408|   406| undo silent-interface Vlanif1112
   409|   407| undo silent-interface Vlanif1110
   410|   408| undo silent-interface 100GE0/0/1
   411|   409| undo silent-interface Vlanif1122
   412|   410| undo silent-interface Vlanif1214
   413|   411| opaque-capability enable
   414|   412| area 0.0.0.0
   415|   413|  network 10.244.103.0 0.0.0.3
   416|   414|  network 10.244.105.0 0.0.0.3 description 100GE0/0/1
   417|   415|  network 10.244.110.0 0.0.0.3
   418|   416|  network 10.244.112.0 0.0.0.3 description Vlanif1112
   419|   417|  network 10.244.114.8 0.0.0.3
   420|   418|  network 10.244.122.0 0.0.0.3 description Vlanif1122
   421|   419|  mpls-te enable
   422|   420|#
   423|   421|undo icmp name timestamp-request receive
   424|   422|#
   425|   423|snmp-agent
   426|   424|snmp-agent local-engineid 800007DB0394A4F948E330
   427|   425|snmp-agent community read cipher %^%#BlrZQ-#-7#03I+X)a/XQq".]2isE%.`;[f%>-flWE)4v0QE*G%:<A=A9G#0JBopn0RhcIV|&0ZXDi~LU%^%#
   428|   426|snmp-agent sys-info contact Cyberweb
   429|   427|snmp-agent sys-info location -29.8816587,-51.0865919
   430|   428|snmp-agent sys-info version v2c v3
   431|   429|snmp-agent protocol source-status all-interface
   432|   430|undo snmp-agent protocol source-status ipv6 all-interface
   433|   431|#
   434|   432|stelnet server enable
   435|   433|ssh server-source all-interface
   436|   434|ssh server cipher aes256_ctr aes128_ctr
   437|   435|ssh server hmac sha2_256
   438|   436|ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   439|   437|ssh client cipher aes256_ctr aes128_ctr
   440|   438|ssh client hmac sha2_256
   441|   439|ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   442|   440|ssh server dh-exchange min-len 2048
   443|   441|ssh server publickey rsa_sha2_512 rsa_sha2_256
   444|   442|#
   445|   443|user-interface con 0
   446|   444| authentication-mode password
   447|   445| set authentication password cipher $1c$@N&9.!:O%.$e*0>Ouzm3B=Zv7Npt8>V{d:-*8n[d~oWJ{!Z}$FM$
   448|   446|user-interface vty 0 4
   449|   447| authentication-mode aaa
   450|   448| idle-timeout 3600 0
   451|   449| protocol inbound all
   452|   450|user-interface vty 16 20
   453|   451|#
   454|   452|wlan
   455|   453| traffic-profile name default
   456|   454| security-profile name default
   457|   455| security-profile name default-wds
   458|   456| security-profile name default-mesh
   459|   457| ssid-profile name default
   460|   458| vap-profile name default
   461|   459| wds-profile name default
   462|   460| mesh-handover-profile name default
   463|   461| mesh-profile name default
   464|   462| regulatory-domain-profile name default
   465|   463| air-scan-profile name default
   466|   464| rrm-profile name default
   467|   465|  smart-roam snr-margin high-level-margin 15 low-level-margin 10
   468|   466| radio-2g-profile name default
   469|   467| radio-5g-profile name default
   470|   468| wids-spoof-profile name default
   471|   469| wids-whitelist-profile name default
   472|   470| wids-profile name default
   473|   471| ap-system-profile name default
   474|   472| port-link-profile name default
   475|   473| wired-port-profile name default
   476|   474| ap-group name default
   477|   475|  radio 2
   478|   476|   frequency 5g
   479|   477| provision-ap
   480|   478|#
   481|   479|dot1x-access-profile name dot1x_access_profile
   482|   480|#
   483|   481|mac-access-profile name mac_access_profile
   484|   482|#
   485|   483|ops
   486|   484|#
   487|   485|remote-unit
   488|   486|#
   489|   487|return
   490|   488|<SW1POP12_BETANIA_N>
   491|   489|```
   492|   490|
```

## 🗒️ Observações
- {{notes}}
