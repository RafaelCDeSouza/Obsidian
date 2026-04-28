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
     4|     2|User Authentication
     5|     3|(admin@10.244.189.15) Password:
     6|     4|
     7|     5|Info: The max number of VTY users is 10, and the number
     8|     6|      of current VTY users on line is 1.
     9|     7|      The current login time is 2026-04-09 10:34:29-03:00.
    10|     8|Info: Lastest accessed IP: 10.244.254.105  Time: 2026-03-10 15:35:44-03:00  Password will expire in: -
    11|     9|
    12|    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    13|    11|<SW1POP15_EXPOINTER>sho
    14|    12|<SW1POP15_EXPOINTER>displ
    15|    13|<SW1POP15_EXPOINTER>display curr
    16|    14|!Software Version V200R022C00SPC500
    17|    15|#
    18|    16|sysname SW1POP15_EXPOINTER
    19|    17|#
    20|    18|router id 10.244.189.15
    21|    19|#
    22|    20|vcmp role client
    23|    21|#
    24|    22|vlan batch 30 150 to 151 1115 1215 1222 1225 3001 3256 4094
    25|    23|#
    26|    24|authentication-profile name default_authen_profile
    27|    25| undo authentication ip-address in-accounting-start
    28|    26|authentication-profile name dot1x_authen_profile
    29|    27| undo authentication ip-address in-accounting-start
    30|    28|authentication-profile name dot1xmac_authen_profile
    31|    29| undo authentication ip-address in-accounting-start
    32|    30|authentication-profile name mac_authen_profile
    33|    31| undo authentication ip-address in-accounting-start
    34|    32|authentication-profile name multi_authen_profile
    35|    33| undo authentication ip-address in-accounting-start
    36|    34|authentication-profile name portal_authen_profile
    37|    35| undo authentication ip-address in-accounting-start
    38|    36|#
    39|    37|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    40|    38|#
    41|    39|radius-attribute encap optimize disable
    42|    40|#
    43|    41|http server-source all-interface
    44|    42|#
    45|    43|clock timezone Brasilia minus 03:00:00
    46|    44|#
    47|    45|portal pass dns enable
    48|    46|#
    49|    47|undo pki key enhance enable
    50|    48|#
    51|    49|smart-upgrade web-prompt disable
    52|    50|#
    53|    51|diffserv domain default
    54|    52|#
    55|    53|radius-server template default
    56|    54|#
    57|    55|bfd
    58|    56|#
    59|    57|mpls lsr-id 10.244.189.15
    60|    58|mpls
    61|    59| mpls te
    62|    60| mpls rsvp-te
    63|    61| mpls te cspf
    64|    62|#
    65|    63|mpls l2vpn
    66|    64|#
    67|    65|vsi VSI_3001_POP00_POP15_NEUGEBAUER static
    68|    66| pwsignal ldp
    69|    67|  vsi-id 3001
    70|    68|  peer 10.244.189.0
    71|    69|  peer 10.244.188.2
    72|    70|  traffic-statistics enable
    73|    71| mtu 9000
    74|    72| encapsulation ethernet
    75|    73|#
    76|    74|vsi VSI_150_POP0-2_POP15_EXPOI_MGNT static
    77|    75| pwsignal ldp
    78|    76|  vsi-id 150
    79|    77|  peer 10.244.189.0
    80|    78|  peer 10.244.188.2
    81|    79|  traffic-statistics enable
    82|    80| mtu 9000
    83|    81| encapsulation ethernet
    84|    82|#
    85|    83|vsi VSI_151_POP0-2_POP15_EXPOI_OLT1 static
    86|    84| pwsignal ldp
    87|    85|  vsi-id 151
    88|    86|  peer 10.244.189.0
    89|    87|  peer 10.244.188.2
    90|    88|  traffic-statistics enable
    91|    89| mtu 9000
    92|    90| encapsulation ethernet
    93|    91|#
    94|    92|vsi VSI_3256_SC_POP02_TR_CL_TELIUM static
    95|    93| pwsignal ldp
    96|    94|  vsi-id 3256
    97|    95|  peer 10.244.188.2
    98|    96| mtu 9000
    99|    97| encapsulation ethernet
   100|    98|#
   101|    99|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   102|   100| pwsignal ldp
   103|   101|  vsi-id 30
   104|   102|  peer 10.244.189.0
   105|   103| mtu 9000
   106|   104| encapsulation ethernet
   107|   105|#
   108|   106|mpls ldp
   109|   107|#
   110|   108|#
   111|   109|mpls ldp remote-peer 10.244.188.2
   112|   110| remote-ip 10.244.188.2
   113|   111|#
   114|   112|mpls ldp remote-peer 10.244.188.19
   115|   113| remote-ip 10.244.188.19
   116|   114|#
   117|   115|mpls ldp remote-peer 10.244.188.20
   118|   116| remote-ip 10.244.188.20
   119|   117|#
   120|   118|mpls ldp remote-peer 10.244.189.0
   121|   119| remote-ip 10.244.189.0
   122|   120|#
   123|   121|mpls ldp remote-peer 10.244.189.11
   124|   122| remote-ip 10.244.189.11
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
   135|   133|vlan 30
   136|   134| description VLAN_30_POP03_M_FOLRES_MGNT
   137|   135|vlan 150
   138|   136| description VLAN_150_POP15_EXPOINTER_GERENCIA
   139|   137|vlan 151
   140|   138| description VLAN_151_POP15_EXPOINTER_OLT1
   141|   139|vlan 1115
   142|   140| description VLAN1115_SW1POP44_SW1POP15_MPLS
   143|   141|vlan 1215
   144|   142| description VLAN1215_SW1POP15_SW1POP25_MPLS
   145|   143|vlan 1222
   146|   144| description VLAN1222_SW1POP15_SW1POP22_MPLS
   147|   145|vlan 1225
   148|   146| description VLAN1225_SW1POP15_SW1POP25_MPLS
   149|   147|vlan 3001
   150|   148| description VLAN_3001_DEDICADO_NEUGEBAUER
   151|   149|vlan 3256
   152|   150| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   153|   151|vlan 4094
   154|   152| description VLAN_4094_BLACKHOLE
   155|   153|#
   156|   154|aaa
   157|   155| authentication-scheme default
   158|   156|  authentication-mode local
   159|   157| authentication-scheme radius
   160|   158|  authentication-mode radius
   161|   159| authorization-scheme default
   162|   160|  authorization-mode local
   163|   161| accounting-scheme default
   164|   162|  accounting-mode none
   165|   163| local-aaa-user password policy administrator
   166|   164|  password history record number 0
   167|   165|  password expire 0
   168|   166| domain default
   169|   167|  authentication-scheme radius
   170|   168|  accounting-scheme default
   171|   169|  radius-server default
   172|   170| domain default_admin
   173|   171|  authentication-scheme default
   174|   172|  accounting-scheme default
   175|   173| undo local-user password change-offline enable
   176|   174| local-user admin password irreversible-cipher $1c$K9TLEz87(Y$u-&C24l.2IPofL'L7itDc0A(8<Y4l,Jd]n@(C~n/$
   177|   175| local-user admin privilege level 15
   178|   176| local-user admin service-type terminal ssh http
   179|   177| local-user zandona password irreversible-cipher $1c$Oq*=C(!R})$WW8^#3XX=Jn<773={,[IYQf[1=e*x=<v/W#~:1QE$
   180|   178| local-user zandona privilege level 15
   181|   179| local-user zandona service-type terminal ssh http
   182|   180|#
   183|   181|ntp-service server disable
   184|   182|ntp-service ipv6 server disable
   185|   183|ntp-service unicast-server 200.189.40.8
   186|   184|ntp-service unicast-server 200.160.0.8
   187|   185|#
   188|   186|interface Vlanif30
   189|   187| description VLAN_30_POP03_M_FOLRES_MGNT
   190|   188| l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
   191|   189|#
   192|   190|interface Vlanif150
   193|   191| description VLAN_150_POP15_EXPOINTER_GERENCIA
   194|   192| l2 binding vsi VSI_150_POP0-2_POP15_EXPOI_MGNT
   195|   193|#
   196|   194|interface Vlanif151
   197|   195| description VLAN_151_POP15_EXPOINTER_OLT1
   198|   196| l2 binding vsi VSI_151_POP0-2_POP15_EXPOI_OLT1
   199|   197|#
   200|   198|interface Vlanif1115
   201|   199| description VLAN1115_SW1POP44_SW1POP15_MPLS
   202|   200| mtu 9216
   203|   201| ip address 10.244.115.2 255.255.255.252
   204|   202| ospf cost 10
   205|   203| ospf network-type p2p
   206|   204| mpls
   207|   205| mpls te
   208|   206| mpls rsvp-te
   209|   207| mpls ldp
   210|   208|#
   211|   209|interface Vlanif1215
   212|   210| description VLAN1215_SW1POP15_SW1POP25_MPLS
   213|   211| ip address 10.244.115.6 255.255.255.252
   214|   212| ospf cost 10
   215|   213| ospf network-type p2p
   216|   214| mpls
   217|   215| mpls te
   218|   216| mpls rsvp-te
   219|   217| mpls ldp
   220|   218|#
   221|   219|interface Vlanif1222
   222|   220| description VLAN1222_SW1POP15_SW1POP22_MPLS
   223|   221| ip address 10.244.122.5 255.255.255.252
   224|   222| ospf cost 10
   225|   223| ospf network-type p2p
   226|   224| mpls
   227|   225| mpls te
   228|   226| mpls rsvp-te
   229|   227| mpls ldp
   230|   228|#
   231|   229|interface Vlanif1225
   232|   230| description VLAN1225_SW1POP15_SW1POP25_MPLS
   233|   231| ip address 10.244.125.5 255.255.255.252
   234|   232| ospf cost 10
   235|   233| ospf network-type p2p
   236|   234| mpls
   237|   235| mpls te
   238|   236| mpls rsvp-te
   239|   237| mpls ldp
   240|   238|#
   241|   239|interface Vlanif3001
   242|   240| description VLAN_3001_DEDICADO_NEUGEBAUER
   243|   241| l2 binding vsi VSI_3001_POP00_POP15_NEUGEBAUER
   244|   242|#
   245|   243|interface Vlanif3256
   246|   244| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   247|   245| l2 binding vsi VSI_3256_SC_POP02_TR_CL_TELIUM
   248|   246|#
   249|   247|interface MEth0/0/1
   250|   248| ip address 192.168.1.253 255.255.255.0
   251|   249|#
   252|   250|interface XGigabitEthernet0/0/1
   253|   251| description PTP_SW1POP15_PX01_OLT1POP15_PX01
   254|   252| port link-type trunk
   255|   253| undo port trunk allow-pass vlan 1
   256|   254| port trunk allow-pass vlan 30 150 to 151 3001 3256
   257|   255| stp disable
   258|   256| jumboframe enable 12288
   259|   257|#
   260|   258|interface XGigabitEthernet0/0/2
   261|   259| description PTP_SW1POP15_PX02_SW1POP22_PX02
   262|   260| port link-type trunk
   263|   261| undo port trunk allow-pass vlan 1
   264|   262| port trunk allow-pass vlan 1222 1225
   265|   263| jumboframe enable 12288
   266|   264|#
   267|   265|interface XGigabitEthernet0/0/3
   268|   266| shutdown
   269|   267|#
   270|   268|interface XGigabitEthernet0/0/4
   271|   269| shutdown
   272|   270|#
   273|   271|interface XGigabitEthernet0/0/5
   274|   272| description PTP_SW1POP15_PX05_SW1POP05_PX05
   275|   273| port link-type trunk
   276|   274| undo port trunk allow-pass vlan 1
   277|   275| port trunk allow-pass vlan 1215
   278|   276| jumboframe enable 12288
   279|   277|#
   280|   278|interface XGigabitEthernet0/0/6
   281|   279| shutdown
   282|   280|#
   283|   281|interface XGigabitEthernet0/0/7
   284|   282| shutdown
   285|   283|#
   286|   284|interface XGigabitEthernet0/0/8
   287|   285| shutdown
   288|   286|#
   289|   287|interface XGigabitEthernet0/0/9
   290|   288| description PTP_SW1POP15_PX09_SW1POP44_PX09
   291|   289| port link-type trunk
   292|   290| undo port trunk allow-pass vlan 1
   293|   291| port trunk allow-pass vlan 1115
   294|   292| jumboframe enable 12288
   295|   293|#
   296|   294|interface XGigabitEthernet0/0/10
   297|   295| shutdown
   298|   296|#
   299|   297|interface XGigabitEthernet0/0/11
   300|   298| shutdown
   301|   299|#
   302|   300|interface XGigabitEthernet0/0/12
   303|   301| shutdown
   304|   302|#
   305|   303|interface XGigabitEthernet0/0/13
   306|   304| shutdown
   307|   305|#
   308|   306|interface XGigabitEthernet0/0/14
   309|   307| shutdown
   310|   308|#
   311|   309|interface XGigabitEthernet0/0/15
   312|   310| shutdown
   313|   311|#
   314|   312|interface XGigabitEthernet0/0/16
   315|   313| shutdown
   316|   314|#
   317|   315|interface XGigabitEthernet0/0/17
   318|   316| shutdown
   319|   317|#
   320|   318|interface XGigabitEthernet0/0/18
   321|   319| shutdown
   322|   320|#
   323|   321|interface XGigabitEthernet0/0/19
   324|   322| shutdown
   325|   323|#
   326|   324|interface XGigabitEthernet0/0/20
   327|   325| shutdown
   328|   326|#
   329|   327|interface XGigabitEthernet0/0/21
   330|   328| shutdown
   331|   329|#
   332|   330|interface XGigabitEthernet0/0/22
   333|   331| shutdown
   334|   332|#
   335|   333|interface XGigabitEthernet0/0/23
   336|   334| shutdown
   337|   335|#
   338|   336|interface XGigabitEthernet0/0/24
   339|   337| shutdown
   340|   338|#
   341|   339|interface 40GE0/0/1
   342|   340| shutdown
   343|   341|#
   344|   342|interface 40GE0/0/2
   345|   343| shutdown
   346|   344|#
   347|   345|interface NULL0
   348|   346|#
   349|   347|interface LoopBack1
   350|   348| ip address 10.244.189.15 255.255.255.255
   351|   349|#
   352|   350|ospf 1 router-id 10.244.189.15
   353|   351| bfd all-interfaces enable
   354|   352| import-route direct cost 15 type 1
   355|   353| import-route static cost 15 type 1
   356|   354| silent-interface all
   357|   355| undo silent-interface Vlanif1225
   358|   356| undo silent-interface Vlanif1215
   359|   357| undo silent-interface Vlanif1115
   360|   358| undo silent-interface Vlanif1222
   361|   359| opaque-capability enable
   362|   360| area 0.0.0.0
   363|   361|  network 10.244.115.0 0.0.0.3
   364|   362|  network 10.244.115.4 0.0.0.3
   365|   363|  network 10.244.122.4 0.0.0.3 description VLAN_1222
   366|   364|  network 10.244.125.4 0.0.0.3
   367|   365|  mpls-te enable
   368|   366|#
   369|   367|snmp-agent
   370|   368|snmp-agent local-engineid 800007DB030CC6CCC68E10
   371|   369|snmp-agent community read cipher %^%#[uW!@DqehFNFN+SQu*wVk-i\-s:X#DEu@eAO9"z4]mh~XD[kW#SP,XBR6);7=|xNY8m]3"jNk}VcZAaC%^%#
   372|   370|snmp-agent sys-info contact Cyberweb
   373|   371|snmp-agent sys-info location -29.8539758,-51.1861427
   374|   372|snmp-agent sys-info version v2c
   375|   373|undo snmp-agent sys-info version v3
   376|   374|snmp-agent trap enable
   377|   375|snmp-agent protocol source-status all-interface
   378|   376|undo snmp-agent protocol source-status ipv6 all-interface
   379|   377|#
   380|   378|stelnet server enable
   381|   379|ssh server-source all-interface
   382|   380|ssh server cipher aes256_ctr aes128_ctr
   383|   381|ssh server hmac sha2_256
   384|   382|ssh client cipher aes256_ctr aes128_ctr
   385|   383|ssh client hmac sha2_256
   386|   384|ssh server dh-exchange min-len 2048
   387|   385|#
   388|   386|user-interface con 0
   389|   387| authentication-mode aaa
   390|   388|user-interface vty 0 4
   391|   389| authentication-mode aaa
   392|   390| idle-timeout 3600 0
   393|   391|user-interface vty 16 20
   394|   392|#
   395|   393|dot1x-access-profile name dot1x_access_profile
   396|   394|#
   397|   395|mac-access-profile name mac_access_profile
   398|   396|#
   399|   397|ops
   400|   398|#
   401|   399|remote-unit
   402|   400|#
   403|   401|return
   404|   402|<SW1POP15_EXPOINTER>
   405|   403|```
   406|   404|
```

## 🗒️ Observações
- {{notes}}
