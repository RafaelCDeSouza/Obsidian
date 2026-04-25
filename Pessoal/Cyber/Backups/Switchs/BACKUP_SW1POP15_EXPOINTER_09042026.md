[[SW1POP15]]

     1|```yaml
     2|User Authentication
     3|(admin@10.244.189.15) Password:
     4|
     5|Info: The max number of VTY users is 10, and the number
     6|      of current VTY users on line is 1.
     7|      The current login time is 2026-04-09 10:34:29-03:00.
     8|Info: Lastest accessed IP: 10.244.254.105  Time: 2026-03-10 15:35:44-03:00  Password will expire in: -
     9|
    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    11|<SW1POP15_EXPOINTER>sho
    12|<SW1POP15_EXPOINTER>displ
    13|<SW1POP15_EXPOINTER>display curr
    14|!Software Version V200R022C00SPC500
    15|#
    16|sysname SW1POP15_EXPOINTER
    17|#
    18|router id 10.244.189.15
    19|#
    20|vcmp role client
    21|#
    22|vlan batch 30 150 to 151 1115 1215 1222 1225 3001 3256 4094
    23|#
    24|authentication-profile name default_authen_profile
    25| undo authentication ip-address in-accounting-start
    26|authentication-profile name dot1x_authen_profile
    27| undo authentication ip-address in-accounting-start
    28|authentication-profile name dot1xmac_authen_profile
    29| undo authentication ip-address in-accounting-start
    30|authentication-profile name mac_authen_profile
    31| undo authentication ip-address in-accounting-start
    32|authentication-profile name multi_authen_profile
    33| undo authentication ip-address in-accounting-start
    34|authentication-profile name portal_authen_profile
    35| undo authentication ip-address in-accounting-start
    36|#
    37|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    38|#
    39|radius-attribute encap optimize disable
    40|#
    41|http server-source all-interface
    42|#
    43|clock timezone Brasilia minus 03:00:00
    44|#
    45|portal pass dns enable
    46|#
    47|undo pki key enhance enable
    48|#
    49|smart-upgrade web-prompt disable
    50|#
    51|diffserv domain default
    52|#
    53|radius-server template default
    54|#
    55|bfd
    56|#
    57|mpls lsr-id 10.244.189.15
    58|mpls
    59| mpls te
    60| mpls rsvp-te
    61| mpls te cspf
    62|#
    63|mpls l2vpn
    64|#
    65|vsi VSI_3001_POP00_POP15_NEUGEBAUER static
    66| pwsignal ldp
    67|  vsi-id 3001
    68|  peer 10.244.189.0
    69|  peer 10.244.188.2
    70|  traffic-statistics enable
    71| mtu 9000
    72| encapsulation ethernet
    73|#
    74|vsi VSI_150_POP0-2_POP15_EXPOI_MGNT static
    75| pwsignal ldp
    76|  vsi-id 150
    77|  peer 10.244.189.0
    78|  peer 10.244.188.2
    79|  traffic-statistics enable
    80| mtu 9000
    81| encapsulation ethernet
    82|#
    83|vsi VSI_151_POP0-2_POP15_EXPOI_OLT1 static
    84| pwsignal ldp
    85|  vsi-id 151
    86|  peer 10.244.189.0
    87|  peer 10.244.188.2
    88|  traffic-statistics enable
    89| mtu 9000
    90| encapsulation ethernet
    91|#
    92|vsi VSI_3256_SC_POP02_TR_CL_TELIUM static
    93| pwsignal ldp
    94|  vsi-id 3256
    95|  peer 10.244.188.2
    96| mtu 9000
    97| encapsulation ethernet
    98|#
    99|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   100| pwsignal ldp
   101|  vsi-id 30
   102|  peer 10.244.189.0
   103| mtu 9000
   104| encapsulation ethernet
   105|#
   106|mpls ldp
   107|#
   108|#
   109|mpls ldp remote-peer 10.244.188.2
   110| remote-ip 10.244.188.2
   111|#
   112|mpls ldp remote-peer 10.244.188.19
   113| remote-ip 10.244.188.19
   114|#
   115|mpls ldp remote-peer 10.244.188.20
   116| remote-ip 10.244.188.20
   117|#
   118|mpls ldp remote-peer 10.244.189.0
   119| remote-ip 10.244.189.0
   120|#
   121|mpls ldp remote-peer 10.244.189.11
   122| remote-ip 10.244.189.11
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
   133|vlan 30
   134| description VLAN_30_POP03_M_FOLRES_MGNT
   135|vlan 150
   136| description VLAN_150_POP15_EXPOINTER_GERENCIA
   137|vlan 151
   138| description VLAN_151_POP15_EXPOINTER_OLT1
   139|vlan 1115
   140| description VLAN1115_SW1POP44_SW1POP15_MPLS
   141|vlan 1215
   142| description VLAN1215_SW1POP15_SW1POP25_MPLS
   143|vlan 1222
   144| description VLAN1222_SW1POP15_SW1POP22_MPLS
   145|vlan 1225
   146| description VLAN1225_SW1POP15_SW1POP25_MPLS
   147|vlan 3001
   148| description VLAN_3001_DEDICADO_NEUGEBAUER
   149|vlan 3256
   150| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   151|vlan 4094
   152| description VLAN_4094_BLACKHOLE
   153|#
   154|aaa
   155| authentication-scheme default
   156|  authentication-mode local
   157| authentication-scheme radius
   158|  authentication-mode radius
   159| authorization-scheme default
   160|  authorization-mode local
   161| accounting-scheme default
   162|  accounting-mode none
   163| local-aaa-user password policy administrator
   164|  password history record number 0
   165|  password expire 0
   166| domain default
   167|  authentication-scheme radius
   168|  accounting-scheme default
   169|  radius-server default
   170| domain default_admin
   171|  authentication-scheme default
   172|  accounting-scheme default
   173| undo local-user password change-offline enable
   174| local-user admin password irreversible-cipher $1c$K9TLEz87(Y$u-&C24l.2IPofL'L7itDc0A(8<Y4l,Jd]n@(C~n/$
   175| local-user admin privilege level 15
   176| local-user admin service-type terminal ssh http
   177| local-user zandona password irreversible-cipher $1c$Oq*=C(!R})$WW8^#3XX=Jn<773={,[IYQf[1=e*x=<v/W#~:1QE$
   178| local-user zandona privilege level 15
   179| local-user zandona service-type terminal ssh http
   180|#
   181|ntp-service server disable
   182|ntp-service ipv6 server disable
   183|ntp-service unicast-server 200.189.40.8
   184|ntp-service unicast-server 200.160.0.8
   185|#
   186|interface Vlanif30
   187| description VLAN_30_POP03_M_FOLRES_MGNT
   188| l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
   189|#
   190|interface Vlanif150
   191| description VLAN_150_POP15_EXPOINTER_GERENCIA
   192| l2 binding vsi VSI_150_POP0-2_POP15_EXPOI_MGNT
   193|#
   194|interface Vlanif151
   195| description VLAN_151_POP15_EXPOINTER_OLT1
   196| l2 binding vsi VSI_151_POP0-2_POP15_EXPOI_OLT1
   197|#
   198|interface Vlanif1115
   199| description VLAN1115_SW1POP44_SW1POP15_MPLS
   200| mtu 9216
   201| ip address 10.244.115.2 255.255.255.252
   202| ospf cost 10
   203| ospf network-type p2p
   204| mpls
   205| mpls te
   206| mpls rsvp-te
   207| mpls ldp
   208|#
   209|interface Vlanif1215
   210| description VLAN1215_SW1POP15_SW1POP25_MPLS
   211| ip address 10.244.115.6 255.255.255.252
   212| ospf cost 10
   213| ospf network-type p2p
   214| mpls
   215| mpls te
   216| mpls rsvp-te
   217| mpls ldp
   218|#
   219|interface Vlanif1222
   220| description VLAN1222_SW1POP15_SW1POP22_MPLS
   221| ip address 10.244.122.5 255.255.255.252
   222| ospf cost 10
   223| ospf network-type p2p
   224| mpls
   225| mpls te
   226| mpls rsvp-te
   227| mpls ldp
   228|#
   229|interface Vlanif1225
   230| description VLAN1225_SW1POP15_SW1POP25_MPLS
   231| ip address 10.244.125.5 255.255.255.252
   232| ospf cost 10
   233| ospf network-type p2p
   234| mpls
   235| mpls te
   236| mpls rsvp-te
   237| mpls ldp
   238|#
   239|interface Vlanif3001
   240| description VLAN_3001_DEDICADO_NEUGEBAUER
   241| l2 binding vsi VSI_3001_POP00_POP15_NEUGEBAUER
   242|#
   243|interface Vlanif3256
   244| description VLAN_3256_TRANSP_TELIUM_DIVERSOS
   245| l2 binding vsi VSI_3256_SC_POP02_TR_CL_TELIUM
   246|#
   247|interface MEth0/0/1
   248| ip address 192.168.1.253 255.255.255.0
   249|#
   250|interface XGigabitEthernet0/0/1
   251| description PTP_SW1POP15_PX01_OLT1POP15_PX01
   252| port link-type trunk
   253| undo port trunk allow-pass vlan 1
   254| port trunk allow-pass vlan 30 150 to 151 3001 3256
   255| stp disable
   256| jumboframe enable 12288
   257|#
   258|interface XGigabitEthernet0/0/2
   259| description PTP_SW1POP15_PX02_SW1POP22_PX02
   260| port link-type trunk
   261| undo port trunk allow-pass vlan 1
   262| port trunk allow-pass vlan 1222 1225
   263| jumboframe enable 12288
   264|#
   265|interface XGigabitEthernet0/0/3
   266| shutdown
   267|#
   268|interface XGigabitEthernet0/0/4
   269| shutdown
   270|#
   271|interface XGigabitEthernet0/0/5
   272| description PTP_SW1POP15_PX05_SW1POP05_PX05
   273| port link-type trunk
   274| undo port trunk allow-pass vlan 1
   275| port trunk allow-pass vlan 1215
   276| jumboframe enable 12288
   277|#
   278|interface XGigabitEthernet0/0/6
   279| shutdown
   280|#
   281|interface XGigabitEthernet0/0/7
   282| shutdown
   283|#
   284|interface XGigabitEthernet0/0/8
   285| shutdown
   286|#
   287|interface XGigabitEthernet0/0/9
   288| description PTP_SW1POP15_PX09_SW1POP44_PX09
   289| port link-type trunk
   290| undo port trunk allow-pass vlan 1
   291| port trunk allow-pass vlan 1115
   292| jumboframe enable 12288
   293|#
   294|interface XGigabitEthernet0/0/10
   295| shutdown
   296|#
   297|interface XGigabitEthernet0/0/11
   298| shutdown
   299|#
   300|interface XGigabitEthernet0/0/12
   301| shutdown
   302|#
   303|interface XGigabitEthernet0/0/13
   304| shutdown
   305|#
   306|interface XGigabitEthernet0/0/14
   307| shutdown
   308|#
   309|interface XGigabitEthernet0/0/15
   310| shutdown
   311|#
   312|interface XGigabitEthernet0/0/16
   313| shutdown
   314|#
   315|interface XGigabitEthernet0/0/17
   316| shutdown
   317|#
   318|interface XGigabitEthernet0/0/18
   319| shutdown
   320|#
   321|interface XGigabitEthernet0/0/19
   322| shutdown
   323|#
   324|interface XGigabitEthernet0/0/20
   325| shutdown
   326|#
   327|interface XGigabitEthernet0/0/21
   328| shutdown
   329|#
   330|interface XGigabitEthernet0/0/22
   331| shutdown
   332|#
   333|interface XGigabitEthernet0/0/23
   334| shutdown
   335|#
   336|interface XGigabitEthernet0/0/24
   337| shutdown
   338|#
   339|interface 40GE0/0/1
   340| shutdown
   341|#
   342|interface 40GE0/0/2
   343| shutdown
   344|#
   345|interface NULL0
   346|#
   347|interface LoopBack1
   348| ip address 10.244.189.15 255.255.255.255
   349|#
   350|ospf 1 router-id 10.244.189.15
   351| bfd all-interfaces enable
   352| import-route direct cost 15 type 1
   353| import-route static cost 15 type 1
   354| silent-interface all
   355| undo silent-interface Vlanif1225
   356| undo silent-interface Vlanif1215
   357| undo silent-interface Vlanif1115
   358| undo silent-interface Vlanif1222
   359| opaque-capability enable
   360| area 0.0.0.0
   361|  network 10.244.115.0 0.0.0.3
   362|  network 10.244.115.4 0.0.0.3
   363|  network 10.244.122.4 0.0.0.3 description VLAN_1222
   364|  network 10.244.125.4 0.0.0.3
   365|  mpls-te enable
   366|#
   367|snmp-agent
   368|snmp-agent local-engineid 800007DB030CC6CCC68E10
   369|snmp-agent community read cipher %^%#[uW!@DqehFNFN+SQu*wVk-i\-s:X#DEu@eAO9"z4]mh~XD[kW#SP,XBR6);7=|xNY8m]3"jNk}VcZAaC%^%#
   370|snmp-agent sys-info contact Cyberweb
   371|snmp-agent sys-info location -29.8539758,-51.1861427
   372|snmp-agent sys-info version v2c
   373|undo snmp-agent sys-info version v3
   374|snmp-agent trap enable
   375|snmp-agent protocol source-status all-interface
   376|undo snmp-agent protocol source-status ipv6 all-interface
   377|#
   378|stelnet server enable
   379|ssh server-source all-interface
   380|ssh server cipher aes256_ctr aes128_ctr
   381|ssh server hmac sha2_256
   382|ssh client cipher aes256_ctr aes128_ctr
   383|ssh client hmac sha2_256
   384|ssh server dh-exchange min-len 2048
   385|#
   386|user-interface con 0
   387| authentication-mode aaa
   388|user-interface vty 0 4
   389| authentication-mode aaa
   390| idle-timeout 3600 0
   391|user-interface vty 16 20
   392|#
   393|dot1x-access-profile name dot1x_access_profile
   394|#
   395|mac-access-profile name mac_access_profile
   396|#
   397|ops
   398|#
   399|remote-unit
   400|#
   401|return
   402|<SW1POP15_EXPOINTER>
   403|```
   404|