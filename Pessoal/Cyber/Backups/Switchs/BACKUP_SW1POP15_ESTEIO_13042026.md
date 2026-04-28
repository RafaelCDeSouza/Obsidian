---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP15

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP15 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP15]]
     2|
     3|     1|```yaml
     4|     2|!Software Version V200R022C00SPC500
     5|     3|#
     6|     4|sysname SW1POP15_ESTEIO
     7|     5|#
     8|     6|router id 10.244.189.15
     9|     7|#
    10|     8|vcmp role client
    11|     9|#
    12|    10|vlan batch 30 230 to 231 233 1115 1215 1222 1225 3001 3256 4094
    13|    11|#
    14|    12|authentication-profile name default_authen_profile
    15|    13| undo authentication ip-address in-accounting-start
    16|    14|authentication-profile name dot1x_authen_profile
    17|    15| undo authentication ip-address in-accounting-start
    18|    16|authentication-profile name dot1xmac_authen_profile
    19|    17| undo authentication ip-address in-accounting-start
    20|    18|authentication-profile name mac_authen_profile
    21|    19| undo authentication ip-address in-accounting-start
    22|    20|authentication-profile name multi_authen_profile
    23|    21| undo authentication ip-address in-accounting-start
    24|    22|authentication-profile name portal_authen_profile
    25|    23| undo authentication ip-address in-accounting-start
    26|    24|#
    27|    25|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    28|    26|#
    29|    27|radius-attribute encap optimize disable
    30|    28|#
    31|    29|http server-source all-interface
    32|    30|#
    33|    31|clock timezone Brasilia minus 03:00:00
    34|    32|#
    35|    33|portal pass dns enable
    36|    34|#
    37|    35|undo pki key enhance enable
    38|    36|#
    39|    37|smart-upgrade web-prompt disable
    40|    38|#
    41|    39|diffserv domain default
    42|    40|#
    43|    41|radius-server template default
    44|    42|#
    45|    43|bfd
    46|    44|#
    47|    45|mpls lsr-id 10.244.189.15
    48|    46|mpls
    49|    47| mpls te
    50|    48| mpls rsvp-te
    51|    49| mpls te cspf
    52|    50|#
    53|    51|mpls l2vpn
    54|    52|#
    55|    53|vsi VSI_3001_POP00_POP15_NEUGEBAUER static
    56|    54| pwsignal ldp
    57|    55|  vsi-id 3001
    58|    56|  peer 10.244.189.0
    59|    57|  peer 10.244.188.2
    60|    58|  traffic-statistics enable
    61|    59| mtu 9000
    62|    60| encapsulation ethernet
    63|    61|#
    64|    62|vsi VSI_150_POP0-2_POP15_EXPOI_MGNT static
    65|    63| pwsignal ldp
    66|    64|  vsi-id 150
    67|    65|  peer 10.244.189.0
    68|    66|  peer 10.244.188.2
    69|    67|  traffic-statistics enable
    70|    68| mtu 9000
    71|    69| encapsulation ethernet
    72|    70|#
    73|    71|vsi VSI_151_POP0-2_POP15_EXPOI_OLT1 static
    74|    72| pwsignal ldp
    75|    73|  vsi-id 151
    76|    74|  peer 10.244.189.0
    77|    75|  peer 10.244.188.2
    78|    76|  traffic-statistics enable
    79|    77| mtu 9000
    80|    78| encapsulation ethernet
    81|    79|#
    82|    80|vsi VSI_3256_SC_POP02_TR_CL_TELIUM static
    83|    81| pwsignal ldp
    84|    82|  vsi-id 3256
    85|    83|  peer 10.244.188.2
    86|    84| mtu 9000
    87|    85| encapsulation ethernet
    88|    86|#
    89|    87|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
    90|    88| pwsignal ldp
    91|    89|  vsi-id 30
    92|    90|  peer 10.244.189.0
    93|    91| mtu 9000
    94|    92| encapsulation ethernet
    95|    93|#
    96|    94|vsi VSI_230_POP0-2_POP23_EXPOI_MGNT static
    97|    95|#
    98|    96|vsi VSI_230_POP0-2_POP23_EST_MGNT static
    99|    97| pwsignal ldp
   100|    98|  vsi-id 230
   101|    99|  peer 10.244.189.0
   102|   100|  peer 10.244.188.2
   103|   101|  traffic-statistics enable
   104|   102| mtu 9000
   105|   103| encapsulation ethernet
   106|   104|#
   107|   105|vsi VSI_231_POP0-2_POP23_EST_OLT1 static
   108|   106| pwsignal ldp
   109|   107|  vsi-id 231
   110|   108|  peer 10.244.189.0
   111|   109|  peer 10.244.188.2
   112|   110|  traffic-statistics enable
   113|   111| mtu 9000
   114|   112| encapsulation ethernet
   115|   113|#
   116|   114|vsi VSI_233_POP0-2_POP23_EST_OLT1 static
   117|   115| pwsignal ldp
   118|   116|  vsi-id 233
   119|   117|  peer 10.244.189.0
   120|   118|  peer 10.244.188.2
   121|   119|  traffic-statistics enable
   122|   120| mtu 9000
   123|   121| encapsulation ethernet
   124|   122|#
   125|   123|mpls ldp
   126|   124|#
   127|   125|#
   128|   126|mpls ldp remote-peer 10.244.188.2
   129|   127| remote-ip 10.244.188.2
   130|   128|#
   131|   129|mpls ldp remote-peer 10.244.188.19
   132|   130| remote-ip 10.244.188.19
   133|   131|#
   134|   132|mpls ldp remote-peer 10.244.188.20
   135|   133| remote-ip 10.244.188.20
   136|   134|#
   137|   135|mpls ldp remote-peer 10.244.189.0
   138|   136| remote-ip 10.244.189.0
   139|   137|#
   140|   138|mpls ldp remote-peer 10.244.189.11
   141|   139| remote-ip 10.244.189.11
   142|   140|#
   143|   141|pki realm default
   144|   142| certificate-check none
   145|   143|#
   146|   144|free-rule-template name default_free_rule
   147|   145|#
   148|   146|portal-access-profile name portal_access_profile
   149|   147|#
   150|   148|drop-profile default
   151|   149|#
   152|   150|vlan 30
   153|   151| description VLAN_30_POP03_M_FOLRES_MGNT
   154|   152|vlan 231
   155|   153| description VLAN_231_POP23_ESTEIO_OLT1
   156|   154|vlan 233
   157|   155| description VLAN_233_POP23_ESTEIO_OLT1
   158|   156|vlan 1115
   159|   157| description VLAN1115_SW1POP44_SW1POP15_MPLS
   160|   158|vlan 1215
   161|   159| description VLAN1215_SW1POP15_SW1POP25_MPLS
   162|   160|vlan 1222
   163|   161| description VLAN1222_SW1POP15_SW1POP22_MPLS
   164|   162|vlan 1225
   165|   163| description VLAN1225_SW1POP15_SW1POP25_MPLS
   166|   164|vlan 3001
   167|   165| description VLAN_3001_DEDICADO_NEUGEBAUER
   168|   166|vlan 3256
   169|   167| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   170|   168|vlan 4094
   171|   169| description VLAN_4094_BLACKHOLE
   172|   170|#
   173|   171|aaa
   174|   172| authentication-scheme default
   175|   173|  authentication-mode local
   176|   174| authentication-scheme radius
   177|   175|  authentication-mode radius
   178|   176| authorization-scheme default
   179|   177|  authorization-mode local
   180|   178| accounting-scheme default
   181|   179|  accounting-mode none
   182|   180| local-aaa-user password policy administrator
   183|   181|  password history record number 0
   184|   182|  password expire 0
   185|   183| domain default
   186|   184|  authentication-scheme radius
   187|   185|  accounting-scheme default
   188|   186|  radius-server default
   189|   187| domain default_admin
   190|   188|  authentication-scheme default
   191|   189|  accounting-scheme default
   192|   190| undo local-user password change-offline enable
   193|   191| local-user admin password irreversible-cipher $1c$K9TLEz87(Y$u-&C24l.2IPofL'L7itDc0A(8<Y4l,Jd]n@(C~n/$
   194|   192| local-user admin privilege level 15
   195|   193| local-user admin service-type terminal ssh http
   196|   194| local-user zandona password irreversible-cipher $1c$Oq*=C(!R})$WW8^#3XX=Jn<773={,[IYQf[1=e*x=<v/W#~:1QE$
   197|   195| local-user zandona privilege level 15
   198|   196| local-user zandona service-type terminal ssh http
   199|   197|#
   200|   198|ntp-service server disable
   201|   199|ntp-service ipv6 server disable
   202|   200|ntp-service unicast-server 200.189.40.8
   203|   201|ntp-service unicast-server 200.160.0.8
   204|   202|#
   205|   203|interface Vlanif30
   206|   204| description VLAN_30_POP03_M_FOLRES_MGNT
   207|   205| l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
   208|   206|#
   209|   207|interface Vlanif230
   210|   208| description VLAN_230_POP23_ESTEIO_GERENCIA
   211|   209| l2 binding vsi VSI_230_POP0-2_POP23_EST_MGNT
   212|   210|#
   213|   211|interface Vlanif231
   214|   212| description VLAN_231_POP23_ESTEIO_OLT1
   215|   213| l2 binding vsi VSI_231_POP0-2_POP23_EST_OLT1
   216|   214|#
   217|   215|interface Vlanif233
   218|   216| description VLAN_233_POP23_ESTEIO_OLT1
   219|   217| l2 binding vsi VSI_233_POP0-2_POP23_EST_OLT1
   220|   218|#
   221|   219|interface Vlanif1115
   222|   220| description VLAN1115_SW1POP44_SW1POP15_MPLS
   223|   221| mtu 9216
   224|   222| ip address 10.244.115.2 255.255.255.252
   225|   223| ospf cost 10
   226|   224| ospf network-type p2p
   227|   225| mpls
   228|   226| mpls te
   229|   227| mpls rsvp-te
   230|   228| mpls ldp
   231|   229|#
   232|   230|interface Vlanif1215
   233|   231| description VLAN1215_SW1POP15_SW1POP25_MPLS
   234|   232| shutdown
   235|   233| ip address 10.244.115.6 255.255.255.252
   236|   234| ospf cost 10
   237|   235| ospf network-type p2p
   238|   236| mpls
   239|   237| mpls te
   240|   238| mpls rsvp-te
   241|   239| mpls ldp
   242|   240|#
   243|   241|interface Vlanif1222
   244|   242| description VLAN1222_SW1POP15_SW1POP22_MPLS
   245|   243| ip address 10.244.122.5 255.255.255.252
   246|   244| ospf cost 10
   247|   245| ospf network-type p2p
   248|   246| mpls
   249|   247| mpls te
   250|   248| mpls rsvp-te
   251|   249| mpls ldp
   252|   250|#
   253|   251|interface Vlanif1225
   254|   252| description VLAN1225_SW1POP15_SW1POP25_MPLS
   255|   253| ip address 10.244.125.5 255.255.255.252
   256|   254| ospf cost 10
   257|   255| ospf network-type p2p
   258|   256| mpls
   259|   257| mpls te
   260|   258| mpls rsvp-te
   261|   259| mpls ldp
   262|   260|#
   263|   261|interface Vlanif3001
   264|   262| description VLAN_3001_DEDICADO_NEUGEBAUER
   265|   263| l2 binding vsi VSI_3001_POP00_POP15_NEUGEBAUER
   266|   264|#
   267|   265|interface Vlanif3256
   268|   266| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   269|   267| l2 binding vsi VSI_3256_SC_POP02_TR_CL_TELIUM
   270|   268|#
   271|   269|interface MEth0/0/1
   272|   270| ip address 192.168.1.253 255.255.255.0
   273|   271|#
   274|   272|interface XGigabitEthernet0/0/1
   275|   273| description PTP_SW1POP23_PX01_OLT1POP23_PX01
   276|   274| port link-type trunk
   277|   275| undo port trunk allow-pass vlan 1
   278|   276| port trunk allow-pass vlan 30 230 to 233 3001 3256
   279|   277| stp disable
   280|   278| jumboframe enable 12288
   281|   279|#
   282|   280|interface XGigabitEthernet0/0/2
   283|   281| description PTP_SW1POP15_PX02_SW1POP25_PX02
   284|   282| port link-type trunk
   285|   283| undo port trunk allow-pass vlan 1
   286|   284| port trunk allow-pass vlan 1222 1225
   287|   285| jumboframe enable 12288
   288|   286|#
   289|   287|interface XGigabitEthernet0/0/3
   290|   288| shutdown
   291|   289|#
   292|   290|interface XGigabitEthernet0/0/4
   293|   291| shutdown
   294|   292|#
   295|   293|interface XGigabitEthernet0/0/5
   296|   294| shutdown
   297|   295| port link-type trunk
   298|   296| undo port trunk allow-pass vlan 1
   299|   297| port trunk allow-pass vlan 1215
   300|   298| jumboframe enable 12288
   301|   299|#
   302|   300|interface XGigabitEthernet0/0/6
   303|   301| shutdown
   304|   302|#
   305|   303|interface XGigabitEthernet0/0/7
   306|   304| shutdown
   307|   305|#
   308|   306|interface XGigabitEthernet0/0/8
   309|   307| shutdown
   310|   308|#
   311|   309|interface XGigabitEthernet0/0/9
   312|   310| description PTP_SW1POP15_PX09_SW1POP44_PX09
   313|   311| port link-type trunk
   314|   312| undo port trunk allow-pass vlan 1
   315|   313| port trunk allow-pass vlan 1115
   316|   314| jumboframe enable 12288
   317|   315|#
   318|   316|interface XGigabitEthernet0/0/10
   319|   317| shutdown
   320|   318|#
   321|   319|interface XGigabitEthernet0/0/11
   322|   320| shutdown
   323|   321|#
   324|   322|interface XGigabitEthernet0/0/12
   325|   323| shutdown
   326|   324|#
   327|   325|interface XGigabitEthernet0/0/13
   328|   326| shutdown
   329|   327|#
   330|   328|interface XGigabitEthernet0/0/14
   331|   329| shutdown
   332|   330|#
   333|   331|interface XGigabitEthernet0/0/15
   334|   332| shutdown
   335|   333|#
   336|   334|interface XGigabitEthernet0/0/16
   337|   335| shutdown
   338|   336|#
   339|   337|interface XGigabitEthernet0/0/17
   340|   338| shutdown
   341|   339|#
   342|   340|interface XGigabitEthernet0/0/18
   343|   341| shutdown
   344|   342|#
   345|   343|interface XGigabitEthernet0/0/19
   346|   344| shutdown
   347|   345|#
   348|   346|interface XGigabitEthernet0/0/20
   349|   347| shutdown
   350|   348|#
   351|   349|interface XGigabitEthernet0/0/21
   352|   350| shutdown
   353|   351|#
   354|   352|interface XGigabitEthernet0/0/22
   355|   353| shutdown
   356|   354|#
   357|   355|interface XGigabitEthernet0/0/23
   358|   356| shutdown
   359|   357|#
   360|   358|interface XGigabitEthernet0/0/24
   361|   359| shutdown
   362|   360|#
   363|   361|interface 40GE0/0/1
   364|   362| shutdown
   365|   363|#
   366|   364|interface 40GE0/0/2
   367|   365| shutdown
   368|   366|#
   369|   367|interface NULL0
   370|   368|#
   371|   369|interface LoopBack1
   372|   370| ip address 10.244.189.15 255.255.255.255
   373|   371|#
   374|   372|ospf 1 router-id 10.244.189.15
   375|   373| bfd all-interfaces enable
   376|   374| import-route direct cost 15 type 1
   377|   375| import-route static cost 15 type 1
   378|   376| silent-interface all
   379|   377| undo silent-interface Vlanif1225
   380|   378| undo silent-interface Vlanif1215
   381|   379| undo silent-interface Vlanif1115
   382|   380| undo silent-interface Vlanif1222
   383|   381| opaque-capability enable
   384|   382| area 0.0.0.0
   385|   383|  network 10.244.115.0 0.0.0.3
   386|   384|  network 10.244.115.4 0.0.0.3
   387|   385|  network 10.244.122.4 0.0.0.3 description VLAN_1222
   388|   386|  network 10.244.125.4 0.0.0.3
   389|   387|  mpls-te enable
   390|   388|#
   391|   389|snmp-agent
   392|   390|snmp-agent local-engineid 800007DB030CC6CCC68E10
   393|   391|snmp-agent community read cipher %^%#[uW!@DqehFNFN+SQu*wVk-i\-s:X#DEu@eAO9"z4]mh~XD[kW#SP,XBR6);7=|xNY8m]3"jNk}VcZAaC%^%#
   394|   392|snmp-agent sys-info contact Cyberweb
   395|   393|snmp-agent sys-info location -29.8539758,-51.1861427
   396|   394|snmp-agent sys-info version v2c
   397|   395|undo snmp-agent sys-info version v3
   398|   396|snmp-agent trap enable
   399|   397|snmp-agent protocol source-status all-interface
   400|   398|undo snmp-agent protocol source-status ipv6 all-interface
   401|   399|#
   402|   400|stelnet server enable
   403|   401|ssh server-source all-interface
   404|   402|ssh server cipher aes256_ctr aes128_ctr
   405|   403|ssh server hmac sha2_256
   406|   404|ssh client cipher aes256_ctr aes128_ctr
   407|   405|ssh client hmac sha2_256
   408|   406|ssh server dh-exchange min-len 2048
   409|   407|#
   410|   408|user-interface con 0
   411|   409| authentication-mode aaa
   412|   410|user-interface vty 0 4
   413|   411| authentication-mode aaa
   414|   412| idle-timeout 3600 0
   415|   413|user-interface vty 16 20
   416|   414|#
   417|   415|dot1x-access-profile name dot1x_access_profile
   418|   416|#
   419|   417|mac-access-profile name mac_access_profile
   420|   418|#
   421|   419|ops
   422|   420|#
   423|   421|remote-unit
   424|   422|#
   425|   423|return
   426|   424|<SW1POP15_ESTEIO>
   427|   425|```
   428|   426|
```

## 🗒️ Observações
- {{notes}}
