[[SW1POP15]]

     1|```yaml
     2|!Software Version V200R022C00SPC500
     3|#
     4|sysname SW1POP15_ESTEIO
     5|#
     6|router id 10.244.189.15
     7|#
     8|vcmp role client
     9|#
    10|vlan batch 30 230 to 231 233 1115 1215 1222 1225 3001 3256 4094
    11|#
    12|authentication-profile name default_authen_profile
    13| undo authentication ip-address in-accounting-start
    14|authentication-profile name dot1x_authen_profile
    15| undo authentication ip-address in-accounting-start
    16|authentication-profile name dot1xmac_authen_profile
    17| undo authentication ip-address in-accounting-start
    18|authentication-profile name mac_authen_profile
    19| undo authentication ip-address in-accounting-start
    20|authentication-profile name multi_authen_profile
    21| undo authentication ip-address in-accounting-start
    22|authentication-profile name portal_authen_profile
    23| undo authentication ip-address in-accounting-start
    24|#
    25|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    26|#
    27|radius-attribute encap optimize disable
    28|#
    29|http server-source all-interface
    30|#
    31|clock timezone Brasilia minus 03:00:00
    32|#
    33|portal pass dns enable
    34|#
    35|undo pki key enhance enable
    36|#
    37|smart-upgrade web-prompt disable
    38|#
    39|diffserv domain default
    40|#
    41|radius-server template default
    42|#
    43|bfd
    44|#
    45|mpls lsr-id 10.244.189.15
    46|mpls
    47| mpls te
    48| mpls rsvp-te
    49| mpls te cspf
    50|#
    51|mpls l2vpn
    52|#
    53|vsi VSI_3001_POP00_POP15_NEUGEBAUER static
    54| pwsignal ldp
    55|  vsi-id 3001
    56|  peer 10.244.189.0
    57|  peer 10.244.188.2
    58|  traffic-statistics enable
    59| mtu 9000
    60| encapsulation ethernet
    61|#
    62|vsi VSI_150_POP0-2_POP15_EXPOI_MGNT static
    63| pwsignal ldp
    64|  vsi-id 150
    65|  peer 10.244.189.0
    66|  peer 10.244.188.2
    67|  traffic-statistics enable
    68| mtu 9000
    69| encapsulation ethernet
    70|#
    71|vsi VSI_151_POP0-2_POP15_EXPOI_OLT1 static
    72| pwsignal ldp
    73|  vsi-id 151
    74|  peer 10.244.189.0
    75|  peer 10.244.188.2
    76|  traffic-statistics enable
    77| mtu 9000
    78| encapsulation ethernet
    79|#
    80|vsi VSI_3256_SC_POP02_TR_CL_TELIUM static
    81| pwsignal ldp
    82|  vsi-id 3256
    83|  peer 10.244.188.2
    84| mtu 9000
    85| encapsulation ethernet
    86|#
    87|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
    88| pwsignal ldp
    89|  vsi-id 30
    90|  peer 10.244.189.0
    91| mtu 9000
    92| encapsulation ethernet
    93|#
    94|vsi VSI_230_POP0-2_POP23_EXPOI_MGNT static
    95|#
    96|vsi VSI_230_POP0-2_POP23_EST_MGNT static
    97| pwsignal ldp
    98|  vsi-id 230
    99|  peer 10.244.189.0
   100|  peer 10.244.188.2
   101|  traffic-statistics enable
   102| mtu 9000
   103| encapsulation ethernet
   104|#
   105|vsi VSI_231_POP0-2_POP23_EST_OLT1 static
   106| pwsignal ldp
   107|  vsi-id 231
   108|  peer 10.244.189.0
   109|  peer 10.244.188.2
   110|  traffic-statistics enable
   111| mtu 9000
   112| encapsulation ethernet
   113|#
   114|vsi VSI_233_POP0-2_POP23_EST_OLT1 static
   115| pwsignal ldp
   116|  vsi-id 233
   117|  peer 10.244.189.0
   118|  peer 10.244.188.2
   119|  traffic-statistics enable
   120| mtu 9000
   121| encapsulation ethernet
   122|#
   123|mpls ldp
   124|#
   125|#
   126|mpls ldp remote-peer 10.244.188.2
   127| remote-ip 10.244.188.2
   128|#
   129|mpls ldp remote-peer 10.244.188.19
   130| remote-ip 10.244.188.19
   131|#
   132|mpls ldp remote-peer 10.244.188.20
   133| remote-ip 10.244.188.20
   134|#
   135|mpls ldp remote-peer 10.244.189.0
   136| remote-ip 10.244.189.0
   137|#
   138|mpls ldp remote-peer 10.244.189.11
   139| remote-ip 10.244.189.11
   140|#
   141|pki realm default
   142| certificate-check none
   143|#
   144|free-rule-template name default_free_rule
   145|#
   146|portal-access-profile name portal_access_profile
   147|#
   148|drop-profile default
   149|#
   150|vlan 30
   151| description VLAN_30_POP03_M_FOLRES_MGNT
   152|vlan 231
   153| description VLAN_231_POP23_ESTEIO_OLT1
   154|vlan 233
   155| description VLAN_233_POP23_ESTEIO_OLT1
   156|vlan 1115
   157| description VLAN1115_SW1POP44_SW1POP15_MPLS
   158|vlan 1215
   159| description VLAN1215_SW1POP15_SW1POP25_MPLS
   160|vlan 1222
   161| description VLAN1222_SW1POP15_SW1POP22_MPLS
   162|vlan 1225
   163| description VLAN1225_SW1POP15_SW1POP25_MPLS
   164|vlan 3001
   165| description VLAN_3001_DEDICADO_NEUGEBAUER
   166|vlan 3256
   167| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   168|vlan 4094
   169| description VLAN_4094_BLACKHOLE
   170|#
   171|aaa
   172| authentication-scheme default
   173|  authentication-mode local
   174| authentication-scheme radius
   175|  authentication-mode radius
   176| authorization-scheme default
   177|  authorization-mode local
   178| accounting-scheme default
   179|  accounting-mode none
   180| local-aaa-user password policy administrator
   181|  password history record number 0
   182|  password expire 0
   183| domain default
   184|  authentication-scheme radius
   185|  accounting-scheme default
   186|  radius-server default
   187| domain default_admin
   188|  authentication-scheme default
   189|  accounting-scheme default
   190| undo local-user password change-offline enable
   191| local-user admin password irreversible-cipher $1c$K9TLEz87(Y$u-&C24l.2IPofL'L7itDc0A(8<Y4l,Jd]n@(C~n/$
   192| local-user admin privilege level 15
   193| local-user admin service-type terminal ssh http
   194| local-user zandona password irreversible-cipher $1c$Oq*=C(!R})$WW8^#3XX=Jn<773={,[IYQf[1=e*x=<v/W#~:1QE$
   195| local-user zandona privilege level 15
   196| local-user zandona service-type terminal ssh http
   197|#
   198|ntp-service server disable
   199|ntp-service ipv6 server disable
   200|ntp-service unicast-server 200.189.40.8
   201|ntp-service unicast-server 200.160.0.8
   202|#
   203|interface Vlanif30
   204| description VLAN_30_POP03_M_FOLRES_MGNT
   205| l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
   206|#
   207|interface Vlanif230
   208| description VLAN_230_POP23_ESTEIO_GERENCIA
   209| l2 binding vsi VSI_230_POP0-2_POP23_EST_MGNT
   210|#
   211|interface Vlanif231
   212| description VLAN_231_POP23_ESTEIO_OLT1
   213| l2 binding vsi VSI_231_POP0-2_POP23_EST_OLT1
   214|#
   215|interface Vlanif233
   216| description VLAN_233_POP23_ESTEIO_OLT1
   217| l2 binding vsi VSI_233_POP0-2_POP23_EST_OLT1
   218|#
   219|interface Vlanif1115
   220| description VLAN1115_SW1POP44_SW1POP15_MPLS
   221| mtu 9216
   222| ip address 10.244.115.2 255.255.255.252
   223| ospf cost 10
   224| ospf network-type p2p
   225| mpls
   226| mpls te
   227| mpls rsvp-te
   228| mpls ldp
   229|#
   230|interface Vlanif1215
   231| description VLAN1215_SW1POP15_SW1POP25_MPLS
   232| shutdown
   233| ip address 10.244.115.6 255.255.255.252
   234| ospf cost 10
   235| ospf network-type p2p
   236| mpls
   237| mpls te
   238| mpls rsvp-te
   239| mpls ldp
   240|#
   241|interface Vlanif1222
   242| description VLAN1222_SW1POP15_SW1POP22_MPLS
   243| ip address 10.244.122.5 255.255.255.252
   244| ospf cost 10
   245| ospf network-type p2p
   246| mpls
   247| mpls te
   248| mpls rsvp-te
   249| mpls ldp
   250|#
   251|interface Vlanif1225
   252| description VLAN1225_SW1POP15_SW1POP25_MPLS
   253| ip address 10.244.125.5 255.255.255.252
   254| ospf cost 10
   255| ospf network-type p2p
   256| mpls
   257| mpls te
   258| mpls rsvp-te
   259| mpls ldp
   260|#
   261|interface Vlanif3001
   262| description VLAN_3001_DEDICADO_NEUGEBAUER
   263| l2 binding vsi VSI_3001_POP00_POP15_NEUGEBAUER
   264|#
   265|interface Vlanif3256
   266| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   267| l2 binding vsi VSI_3256_SC_POP02_TR_CL_TELIUM
   268|#
   269|interface MEth0/0/1
   270| ip address 192.168.1.253 255.255.255.0
   271|#
   272|interface XGigabitEthernet0/0/1
   273| description PTP_SW1POP23_PX01_OLT1POP23_PX01
   274| port link-type trunk
   275| undo port trunk allow-pass vlan 1
   276| port trunk allow-pass vlan 30 230 to 233 3001 3256
   277| stp disable
   278| jumboframe enable 12288
   279|#
   280|interface XGigabitEthernet0/0/2
   281| description PTP_SW1POP15_PX02_SW1POP25_PX02
   282| port link-type trunk
   283| undo port trunk allow-pass vlan 1
   284| port trunk allow-pass vlan 1222 1225
   285| jumboframe enable 12288
   286|#
   287|interface XGigabitEthernet0/0/3
   288| shutdown
   289|#
   290|interface XGigabitEthernet0/0/4
   291| shutdown
   292|#
   293|interface XGigabitEthernet0/0/5
   294| shutdown
   295| port link-type trunk
   296| undo port trunk allow-pass vlan 1
   297| port trunk allow-pass vlan 1215
   298| jumboframe enable 12288
   299|#
   300|interface XGigabitEthernet0/0/6
   301| shutdown
   302|#
   303|interface XGigabitEthernet0/0/7
   304| shutdown
   305|#
   306|interface XGigabitEthernet0/0/8
   307| shutdown
   308|#
   309|interface XGigabitEthernet0/0/9
   310| description PTP_SW1POP15_PX09_SW1POP44_PX09
   311| port link-type trunk
   312| undo port trunk allow-pass vlan 1
   313| port trunk allow-pass vlan 1115
   314| jumboframe enable 12288
   315|#
   316|interface XGigabitEthernet0/0/10
   317| shutdown
   318|#
   319|interface XGigabitEthernet0/0/11
   320| shutdown
   321|#
   322|interface XGigabitEthernet0/0/12
   323| shutdown
   324|#
   325|interface XGigabitEthernet0/0/13
   326| shutdown
   327|#
   328|interface XGigabitEthernet0/0/14
   329| shutdown
   330|#
   331|interface XGigabitEthernet0/0/15
   332| shutdown
   333|#
   334|interface XGigabitEthernet0/0/16
   335| shutdown
   336|#
   337|interface XGigabitEthernet0/0/17
   338| shutdown
   339|#
   340|interface XGigabitEthernet0/0/18
   341| shutdown
   342|#
   343|interface XGigabitEthernet0/0/19
   344| shutdown
   345|#
   346|interface XGigabitEthernet0/0/20
   347| shutdown
   348|#
   349|interface XGigabitEthernet0/0/21
   350| shutdown
   351|#
   352|interface XGigabitEthernet0/0/22
   353| shutdown
   354|#
   355|interface XGigabitEthernet0/0/23
   356| shutdown
   357|#
   358|interface XGigabitEthernet0/0/24
   359| shutdown
   360|#
   361|interface 40GE0/0/1
   362| shutdown
   363|#
   364|interface 40GE0/0/2
   365| shutdown
   366|#
   367|interface NULL0
   368|#
   369|interface LoopBack1
   370| ip address 10.244.189.15 255.255.255.255
   371|#
   372|ospf 1 router-id 10.244.189.15
   373| bfd all-interfaces enable
   374| import-route direct cost 15 type 1
   375| import-route static cost 15 type 1
   376| silent-interface all
   377| undo silent-interface Vlanif1225
   378| undo silent-interface Vlanif1215
   379| undo silent-interface Vlanif1115
   380| undo silent-interface Vlanif1222
   381| opaque-capability enable
   382| area 0.0.0.0
   383|  network 10.244.115.0 0.0.0.3
   384|  network 10.244.115.4 0.0.0.3
   385|  network 10.244.122.4 0.0.0.3 description VLAN_1222
   386|  network 10.244.125.4 0.0.0.3
   387|  mpls-te enable
   388|#
   389|snmp-agent
   390|snmp-agent local-engineid 800007DB030CC6CCC68E10
   391|snmp-agent community read cipher %^%#[uW!@DqehFNFN+SQu*wVk-i\-s:X#DEu@eAO9"z4]mh~XD[kW#SP,XBR6);7=|xNY8m]3"jNk}VcZAaC%^%#
   392|snmp-agent sys-info contact Cyberweb
   393|snmp-agent sys-info location -29.8539758,-51.1861427
   394|snmp-agent sys-info version v2c
   395|undo snmp-agent sys-info version v3
   396|snmp-agent trap enable
   397|snmp-agent protocol source-status all-interface
   398|undo snmp-agent protocol source-status ipv6 all-interface
   399|#
   400|stelnet server enable
   401|ssh server-source all-interface
   402|ssh server cipher aes256_ctr aes128_ctr
   403|ssh server hmac sha2_256
   404|ssh client cipher aes256_ctr aes128_ctr
   405|ssh client hmac sha2_256
   406|ssh server dh-exchange min-len 2048
   407|#
   408|user-interface con 0
   409| authentication-mode aaa
   410|user-interface vty 0 4
   411| authentication-mode aaa
   412| idle-timeout 3600 0
   413|user-interface vty 16 20
   414|#
   415|dot1x-access-profile name dot1x_access_profile
   416|#
   417|mac-access-profile name mac_access_profile
   418|#
   419|ops
   420|#
   421|remote-unit
   422|#
   423|return
   424|<SW1POP15_ESTEIO>
   425|```
   426|