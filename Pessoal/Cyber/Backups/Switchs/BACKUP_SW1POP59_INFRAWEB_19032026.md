---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP59

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP59 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP59]]
     2|
     3|     1|```yaml
     4|     2|User Authentication
     5|     3|(admin@10.244.188.59) Password:
     6|     4|
     7|     5|Info: The max number of VTY users is 10, and the number
     8|     6|      of current VTY users on line is 1.
     9|     7|      The current login time is 2026-03-19 14:18:53-03:00.
    10|     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-03-12 12:42:33-03:00  Password will expire in: -
    11|     9|
    12|    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    13|    11|<SW1POP59_INFRAWEB>displ
    14|    12|<SW1POP59_INFRAWEB>display cu
    15|    13|<SW1POP59_INFRAWEB>display current-configuration
    16|    14|!Software Version V200R021C00SPC100
    17|    15|#
    18|    16|sysname SW1POP59_INFRAWEB
    19|    17|#
    20|    18|router id 10.244.188.59
    21|    19|#
    22|    20|vlan batch 11 81 1001 1114 1159 1259 1459 2202 3114 3214
    23|    21|vlan batch 3256 3580 to 3581 4094
    24|    22|#
    25|    23|authentication-profile name default_authen_profile
    26|    24|authentication-profile name dot1x_authen_profile
    27|    25|authentication-profile name dot1xmac_authen_profile
    28|    26|authentication-profile name mac_authen_profile
    29|    27|authentication-profile name multi_authen_profile
    30|    28|authentication-profile name portal_authen_profile
    31|    29|#
    32|    30|set save-configuration delay 10
    33|    31|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    34|    32|#
    35|    33|http server-source all-interface
    36|    34|#
    37|    35|clock timezone Brasilia minus 03:00:00
    38|    36|#
    39|    37|assign resource-mode enhanced-arp slot 0
    40|    38|#
    41|    39|bfd for vsi-pw enable
    42|    40|#
    43|    41|diffserv domain default
    44|    42|#
    45|    43|radius-server template default
    46|    44|#
    47|    45|bfd
    48|    46|#
    49|    47|mpls lsr-id 10.244.188.59
    50|    48|mpls
    51|    49| mpls te
    52|    50| mpls rsvp-te
    53|    51| mpls te cspf
    54|    52|#
    55|    53|mpls l2vpn
    56|    54|#
    57|    55|vsi VSI3256_POP02_POP59_TR_CL_TELIU static
    58|    56| pwsignal ldp
    59|    57|  vsi-id 3256
    60|    58|  peer 10.244.188.2
    61|    59| mtu 9000
    62|    60| encapsulation ethernet
    63|    61|#
    64|    62|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
    65|    63| pwsignal ldp
    66|    64|  vsi-id 3114
    67|    65|  peer 10.244.189.0
    68|    66|  traffic-statistics enable
    69|    67| mtu 9000
    70|    68| encapsulation ethernet
    71|    69|#
    72|    70|vsi VSI3214_POP02_POP14_LOMBA_BGP2 static
    73|    71| pwsignal ldp
    74|    72|  vsi-id 3214
    75|    73|  peer 10.244.188.2
    76|    74|  traffic-statistics enable
    77|    75| mtu 9000
    78|    76| encapsulation ethernet
    79|    77|#
    80|    78|vsi VSI_3580_RN_INFRAWEB_NA_CYBER static
    81|    79| pwsignal ldp
    82|    80|  vsi-id 3580
    83|    81|  peer 10.244.188.5
    84|    82|  peer 10.244.189.0
    85|    83|  peer 10.244.188.19
    86|    84|  traffic-statistics enable
    87|    85| mtu 9000
    88|    86| encapsulation ethernet
    89|    87|#
    90|    88|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
    91|    89| pwsignal ldp
    92|    90|  vsi-id 3581
    93|    91|  peer 10.244.189.0
    94|    92| mtu 9000
    95|    93| encapsulation ethernet
    96|    94|#
    97|    95|mpls ldp
    98|    96|#
    99|    97|#
   100|    98|mpls ldp remote-peer 10.244.188.1
   101|    99| remote-ip 10.244.188.1
   102|   100|#
   103|   101|mpls ldp remote-peer 10.244.188.2
   104|   102| remote-ip 10.244.188.2
   105|   103|#
   106|   104|mpls ldp remote-peer 10.244.188.5
   107|   105| remote-ip 10.244.188.5
   108|   106|#
   109|   107|mpls ldp remote-peer 10.244.188.19
   110|   108| remote-ip 10.244.188.19
   111|   109|#
   112|   110|mpls ldp remote-peer 10.244.189.0
   113|   111| remote-ip 10.244.189.0
   114|   112|#
   115|   113|pki realm default
   116|   114| certificate-check none
   117|   115|#
   118|   116|free-rule-template name default_free_rule
   119|   117|#
   120|   118|portal-access-profile name portal_access_profile
   121|   119|#
   122|   120|drop-profile default
   123|   121|#
   124|   122|vlan 11
   125|   123| description VLAN11_INFRAWEB_PPPPOE
   126|   124|vlan 1001
   127|   125| description VLAN_1001_CGNAT1_CE01_INFRAWEB
   128|   126|vlan 1114
   129|   127| description VLAN_1114_SW1POP59_SW1POP14_OSPF
   130|   128|vlan 1159
   131|   129| description VLAN_1159_SW1POP08_SW1POP59_MPLS1
   132|   130|vlan 1259
   133|   131| description VLAN_1259_SW1POP25_SW1POP59_MPLS1
   134|   132|vlan 1459
   135|   133| description PTP_POP59_POP14_OSPF_2
   136|   134|vlan 2202
   137|   135| description VLAN_2202_FIBERLINK_LINK1
   138|   136|vlan 3114
   139|   137| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
   140|   138|vlan 3214
   141|   139| description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
   142|   140|vlan 3256
   143|   141| description VLAN_3256_PPPOE_CLIENTES_TELIUM
   144|   142|vlan 3580
   145|   143| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
   146|   144|vlan 3581
   147|   145| description VLAN3581_RN_CYBER_NA_INFRAWEB
   148|   146|vlan 4094
   149|   147| description VLAN_4094_BLACKHOLE
   150|   148|#
   151|   149|aaa
   152|   150| authentication-scheme default
   153|   151|  authentication-mode local
   154|   152| authentication-scheme radius
   155|   153|  authentication-mode radius
   156|   154| authorization-scheme default
   157|   155|  authorization-mode local
   158|   156| accounting-scheme default
   159|   157|  accounting-mode none
   160|   158| local-aaa-user password policy administrator
   161|   159|  password history record number 0
   162|   160|  password expire 0
   163|   161| domain default
   164|   162|  authentication-scheme radius
   165|   163|  accounting-scheme default
   166|   164|  radius-server default
   167|   165| domain default_admin
   168|   166|  authentication-scheme default
   169|   167|  accounting-scheme default
   170|   168| local-aaa-user wrong-password retry-interval 5 retry-time 10 block-time 5
   171|   169| local-user admin password irreversible-cipher $1c$&g__1]ufS8$4TU91.jqtTd7KzTf_[VM(x@N"@9acF{6Y,O[a<x<$
   172|   170| local-user admin privilege level 15
   173|   171| local-user admin service-type terminal ssh http
   174|   172| local-user zandona password irreversible-cipher $1c$LC"pGB|q4O$8Kp.>f{E&GMOUm8zus7Y{g`K%ifk#Hx9P{9h)2Q2$
   175|   173| local-user zandona privilege level 15
   176|   174| local-user zandona service-type terminal ssh http
   177|   175|#
   178|   176|ntp-service server disable
   179|   177|ntp-service ipv6 server disable
   180|   178|ntp-service unicast-server 200.189.40.8
   181|   179|ntp-service unicast-server 200.160.0.8
   182|   180|#
   183|   181|interface Vlanif1114
   184|   182| description VLAN_1114_SW1POP59_SW1POP14_OSPF
   185|   183| ip address 10.244.114.1 255.255.255.252
   186|   184| ospf cost 100
   187|   185| ospf network-type p2p
   188|   186| mpls
   189|   187| mpls ldp
   190|   188|#
   191|   189|interface Vlanif1159
   192|   190| description VLAN_1159_SW1POP08_SW1POP59_MPLS1
   193|   191| ip address 10.244.159.2 255.255.255.252
   194|   192| ospf cost 10
   195|   193| ospf network-type p2p
   196|   194| mpls
   197|   195| mpls ldp
   198|   196|#
   199|   197|interface Vlanif1259
   200|   198| description VLAN_1259_SW1POP25_SW1POP59_MPLS1
   201|   199| ip address 10.244.159.6 255.255.255.252
   202|   200| ospf cost 40
   203|   201| ospf network-type p2p
   204|   202| mpls
   205|   203| mpls ldp
   206|   204|#
   207|   205|interface Vlanif1459
   208|   206| description PTP_POP59_POP14_OSPF_2
   209|   207| mtu 9216
   210|   208| ip address 10.244.114.14 255.255.255.252
   211|   209| ospf cost 20
   212|   210| ospf network-type p2p
   213|   211| mpls
   214|   212| mpls ldp
   215|   213|#
   216|   214|interface Vlanif3114
   217|   215| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
   218|   216| l2 binding vsi VSI3114_POP00_POP14_LOMBA_BGP1
   219|   217|#
   220|   218|interface Vlanif3214
   221|   219| description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
   222|   220| l2 binding vsi VSI3214_POP02_POP14_LOMBA_BGP2
   223|   221|#
   224|   222|interface Vlanif3256
   225|   223| description VLAN_3256_PPPOE_CLIENTES_TELIUM
   226|   224| l2 binding vsi VSI3256_POP02_POP59_TR_CL_TELIU
   227|   225|#
   228|   226|interface Vlanif3580
   229|   227| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
   230|   228| l2 binding vsi VSI_3580_RN_INFRAWEB_NA_CYBER
   231|   229|#
   232|   230|interface Vlanif3581
   233|   231| description VLAN3581_RN_CYBER_NA_INFRAWEB
   234|   232| l2 binding vsi VSI_3581_RN_CYBER_NA_INFRAWEB
   235|   233|#
   236|   234|interface MEth0/0/1
   237|   235| ip address 192.168.1.253 255.255.255.0
   238|   236|#
   239|   237|interface GigabitEthernet0/0/1
   240|   238| description PTP_SW1POP59_P01_OLT1INFRA_P0/1
   241|   239| port link-type trunk
   242|   240| undo port trunk allow-pass vlan 1
   243|   241| port trunk allow-pass vlan 1114 3214 3256 3580 to 3581
   244|   242| jumboframe enable 12288
   245|   243|#
   246|   244|interface GigabitEthernet0/0/2
   247|   245| shutdown
   248|   246|#
   249|   247|interface GigabitEthernet0/0/3
   250|   248| shutdown
   251|   249|#
   252|   250|interface GigabitEthernet0/0/4
   253|   251| shutdown
   254|   252|#
   255|   253|interface GigabitEthernet0/0/5
   256|   254| shutdown
   257|   255|#
   258|   256|interface GigabitEthernet0/0/6
   259|   257| shutdown
   260|   258|#
   261|   259|interface GigabitEthernet0/0/7
   262|   260| shutdown
   263|   261|#
   264|   262|interface GigabitEthernet0/0/8
   265|   263| shutdown
   266|   264|#
   267|   265|interface GigabitEthernet0/0/9
   268|   266| shutdown
   269|   267|#
   270|   268|interface GigabitEthernet0/0/10
   271|   269| shutdown
   272|   270|#
   273|   271|interface GigabitEthernet0/0/11
   274|   272| shutdown
   275|   273|#
   276|   274|interface GigabitEthernet0/0/12
   277|   275| shutdown
   278|   276|#
   279|   277|interface GigabitEthernet0/0/13
   280|   278| shutdown
   281|   279|#
   282|   280|interface GigabitEthernet0/0/14
   283|   281| shutdown
   284|   282|#
   285|   283|interface GigabitEthernet0/0/15
   286|   284| shutdown
   287|   285|#
   288|   286|interface GigabitEthernet0/0/16
   289|   287| shutdown
   290|   288|#
   291|   289|interface GigabitEthernet0/0/17
   292|   290| shutdown
   293|   291|#
   294|   292|interface GigabitEthernet0/0/18
   295|   293| shutdown
   296|   294|#
   297|   295|interface GigabitEthernet0/0/19
   298|   296| shutdown
   299|   297|#
   300|   298|interface GigabitEthernet0/0/20
   301|   299| shutdown
   302|   300|#
   303|   301|interface XGigabitEthernet0/0/1
   304|   302| description PTP_SW1POP59_PX01_SW1POP14_PX01
   305|   303| port link-type trunk
   306|   304| undo port trunk allow-pass vlan 1
   307|   305| port trunk allow-pass vlan 140 to 141 1114 1214 1459 3114 3214
   308|   306| jumboframe enable 12288
   309|   307|#
   310|   308|interface XGigabitEthernet0/0/2
   311|   309| description PTP_SW1POP59_PX01_INFRAWEB_SFP-SFPPLUS1
   312|   310| port link-type trunk
   313|   311| undo port trunk allow-pass vlan 1
   314|   312| port trunk allow-pass vlan 3580
   315|   313| jumboframe enable 12288
   316|   314|#
   317|   315|interface XGigabitEthernet0/0/3
   318|   316| description PTP_SW1POP59_PX03_SW1POP08_PX03
   319|   317| port link-type trunk
   320|   318| undo port trunk allow-pass vlan 1
   321|   319| port trunk allow-pass vlan 1159
   322|   320| stp disable
   323|   321| jumboframe enable 12288
   324|   322|#
   325|   323|interface XGigabitEthernet0/0/4
   326|   324| description PTP_SW1POP57_PX04_SW1POP25_PX04
   327|   325| port link-type trunk
   328|   326| undo port trunk allow-pass vlan 1
   329|   327| port trunk allow-pass vlan 1259
   330|   328| jumboframe enable 12288
   331|   329|#
   332|   330|interface 40GE0/0/1
   333|   331| shutdown
   334|   332|#
   335|   333|interface 40GE0/0/2
   336|   334| shutdown
   337|   335|#
   338|   336|interface 40GE0/0/3
   339|   337| shutdown
   340|   338|#
   341|   339|interface 40GE0/0/4
   342|   340| shutdown
   343|   341|#
   344|   342|interface 40GE0/0/5
   345|   343| shutdown
   346|   344|#
   347|   345|interface 40GE0/0/6
   348|   346| shutdown
   349|   347|#
   350|   348|interface NULL0
   351|   349|#
   352|   350|interface LoopBack1
   353|   351| ip address 10.244.188.59 255.255.255.255
   354|   352|#
   355|   353|bgp 268214
   356|   354| router-id 10.244.188.59
   357|   355| graceful-restart
   358|   356| #
   359|   357| ipv4-family unicast
   360|   358|  undo synchronization
   361|   359|#
   362|   360|ospf 1
   363|   361| bfd all-interfaces enable
   364|   362| import-route direct cost 15 type 1
   365|   363| import-route static cost 15 type 1
   366|   364| silent-interface all
   367|   365| undo silent-interface Vlanif1159
   368|   366| undo silent-interface Vlanif1259
   369|   367| undo silent-interface Vlanif1114
   370|   368| undo silent-interface Vlanif1459
   371|   369| area 0.0.0.0
   372|   370|  network 10.244.114.0 0.0.0.3
   373|   371|  network 10.244.114.12 0.0.0.3
   374|   372|  network 10.244.158.0 0.0.0.3
   375|   373|  network 10.244.159.0 0.0.0.3
   376|   374|  network 10.244.159.4 0.0.0.3
   377|   375|  network 10.244.159.8 0.0.0.3
   378|   376|#
   379|   377|undo icmp name timestamp-request receive
   380|   378|#
   381|   379|snmp-agent
   382|   380|snmp-agent local-engineid 800007DB03D8109F0B0F90
   383|   381|snmp-agent community read cipher %^%#1@F/@$uGj(X>1I$D]&UKk_;i(\cOP5@lW5U)F#/U<UF&-pL$^%@gs0L]}]/%E`.7*F-b-(]S/:RN=HiL%^%#
   384|   382|snmp-agent sys-info contact CyberWeb
   385|   383|snmp-agent sys-info location -29.7400752,-51.1495213
   386|   384|snmp-agent sys-info version v2c v3
   387|   385|snmp-agent protocol source-status all-interface
   388|   386|undo snmp-agent protocol source-status ipv6 all-interface
   389|   387|#
   390|   388|stelnet server enable
   391|   389|ssh client first-time enable
   392|   390|ssh server-source all-interface
   393|   391|ssh server cipher aes256_ctr aes128_ctr
   394|   392|ssh server hmac sha2_256
   395|   393|ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   396|   394|ssh client cipher aes256_ctr aes128_ctr
   397|   395|ssh client hmac sha2_256
   398|   396|ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   399|   397|ssh server dh-exchange min-len 2048
   400|   398|ssh server publickey rsa_sha2_512 rsa_sha2_256
   401|   399|#
   402|   400|capwap dtls cert-mandatory-match enable
   403|   401|#
   404|   402|user-interface con 0
   405|   403| authentication-mode password
   406|   404| set authentication password cipher $1c$mC5a9yRYQL$EU-FHE%^;)HH_>8dO6G(Q|RN/i'7A",Me)"yuK$K$
   407|   405| idle-timeout 3600 0
   408|   406|user-interface vty 0 4
   409|   407| authentication-mode aaa
   410|   408| idle-timeout 3600 0
   411|   409| protocol inbound all
   412|   410|user-interface vty 16 20
   413|   411|#
   414|   412|wlan
   415|   413| traffic-profile name default
   416|   414| security-profile name default
   417|   415| security-profile name default-wds
   418|   416| security-profile name default-mesh
   419|   417| ssid-profile name default
   420|   418| vap-profile name default
   421|   419| wds-profile name default
   422|   420| mesh-handover-profile name default
   423|   421| mesh-profile name default
   424|   422| regulatory-domain-profile name default
   425|   423| air-scan-profile name default
   426|   424| rrm-profile name default
   427|   425| radio-2g-profile name default
   428|   426| radio-5g-profile name default
   429|   427| wids-spoof-profile name default
   430|   428| wids-whitelist-profile name default
   431|   429| wids-profile name default
   432|   430| ap-system-profile name default
   433|   431| port-link-profile name default
   434|   432| wired-port-profile name default
   435|   433| ap-group name default
   436|   434| provision-ap
   437|   435|#
   438|   436|dot1x-access-profile name dot1x_access_profile
   439|   437|#
   440|   438|mac-access-profile name mac_access_profile
   441|   439|#
   442|   440|ops
   443|   441|#
   444|   442|return
   445|   443|<SW1POP59_INFRAWEB>
   446|   444|```
   447|   445|
```

## 🗒️ Observações
- {{notes}}
