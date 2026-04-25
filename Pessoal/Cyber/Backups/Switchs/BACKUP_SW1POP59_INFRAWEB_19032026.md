[[SW1POP59]]

     1|```yaml
     2|User Authentication
     3|(admin@10.244.188.59) Password:
     4|
     5|Info: The max number of VTY users is 10, and the number
     6|      of current VTY users on line is 1.
     7|      The current login time is 2026-03-19 14:18:53-03:00.
     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-03-12 12:42:33-03:00  Password will expire in: -
     9|
    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    11|<SW1POP59_INFRAWEB>displ
    12|<SW1POP59_INFRAWEB>display cu
    13|<SW1POP59_INFRAWEB>display current-configuration
    14|!Software Version V200R021C00SPC100
    15|#
    16|sysname SW1POP59_INFRAWEB
    17|#
    18|router id 10.244.188.59
    19|#
    20|vlan batch 11 81 1001 1114 1159 1259 1459 2202 3114 3214
    21|vlan batch 3256 3580 to 3581 4094
    22|#
    23|authentication-profile name default_authen_profile
    24|authentication-profile name dot1x_authen_profile
    25|authentication-profile name dot1xmac_authen_profile
    26|authentication-profile name mac_authen_profile
    27|authentication-profile name multi_authen_profile
    28|authentication-profile name portal_authen_profile
    29|#
    30|set save-configuration delay 10
    31|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    32|#
    33|http server-source all-interface
    34|#
    35|clock timezone Brasilia minus 03:00:00
    36|#
    37|assign resource-mode enhanced-arp slot 0
    38|#
    39|bfd for vsi-pw enable
    40|#
    41|diffserv domain default
    42|#
    43|radius-server template default
    44|#
    45|bfd
    46|#
    47|mpls lsr-id 10.244.188.59
    48|mpls
    49| mpls te
    50| mpls rsvp-te
    51| mpls te cspf
    52|#
    53|mpls l2vpn
    54|#
    55|vsi VSI3256_POP02_POP59_TR_CL_TELIU static
    56| pwsignal ldp
    57|  vsi-id 3256
    58|  peer 10.244.188.2
    59| mtu 9000
    60| encapsulation ethernet
    61|#
    62|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
    63| pwsignal ldp
    64|  vsi-id 3114
    65|  peer 10.244.189.0
    66|  traffic-statistics enable
    67| mtu 9000
    68| encapsulation ethernet
    69|#
    70|vsi VSI3214_POP02_POP14_LOMBA_BGP2 static
    71| pwsignal ldp
    72|  vsi-id 3214
    73|  peer 10.244.188.2
    74|  traffic-statistics enable
    75| mtu 9000
    76| encapsulation ethernet
    77|#
    78|vsi VSI_3580_RN_INFRAWEB_NA_CYBER static
    79| pwsignal ldp
    80|  vsi-id 3580
    81|  peer 10.244.188.5
    82|  peer 10.244.189.0
    83|  peer 10.244.188.19
    84|  traffic-statistics enable
    85| mtu 9000
    86| encapsulation ethernet
    87|#
    88|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
    89| pwsignal ldp
    90|  vsi-id 3581
    91|  peer 10.244.189.0
    92| mtu 9000
    93| encapsulation ethernet
    94|#
    95|mpls ldp
    96|#
    97|#
    98|mpls ldp remote-peer 10.244.188.1
    99| remote-ip 10.244.188.1
   100|#
   101|mpls ldp remote-peer 10.244.188.2
   102| remote-ip 10.244.188.2
   103|#
   104|mpls ldp remote-peer 10.244.188.5
   105| remote-ip 10.244.188.5
   106|#
   107|mpls ldp remote-peer 10.244.188.19
   108| remote-ip 10.244.188.19
   109|#
   110|mpls ldp remote-peer 10.244.189.0
   111| remote-ip 10.244.189.0
   112|#
   113|pki realm default
   114| certificate-check none
   115|#
   116|free-rule-template name default_free_rule
   117|#
   118|portal-access-profile name portal_access_profile
   119|#
   120|drop-profile default
   121|#
   122|vlan 11
   123| description VLAN11_INFRAWEB_PPPPOE
   124|vlan 1001
   125| description VLAN_1001_CGNAT1_CE01_INFRAWEB
   126|vlan 1114
   127| description VLAN_1114_SW1POP59_SW1POP14_OSPF
   128|vlan 1159
   129| description VLAN_1159_SW1POP08_SW1POP59_MPLS1
   130|vlan 1259
   131| description VLAN_1259_SW1POP25_SW1POP59_MPLS1
   132|vlan 1459
   133| description PTP_POP59_POP14_OSPF_2
   134|vlan 2202
   135| description VLAN_2202_FIBERLINK_LINK1
   136|vlan 3114
   137| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
   138|vlan 3214
   139| description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
   140|vlan 3256
   141| description VLAN_3256_PPPOE_CLIENTES_TELIUM
   142|vlan 3580
   143| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
   144|vlan 3581
   145| description VLAN3581_RN_CYBER_NA_INFRAWEB
   146|vlan 4094
   147| description VLAN_4094_BLACKHOLE
   148|#
   149|aaa
   150| authentication-scheme default
   151|  authentication-mode local
   152| authentication-scheme radius
   153|  authentication-mode radius
   154| authorization-scheme default
   155|  authorization-mode local
   156| accounting-scheme default
   157|  accounting-mode none
   158| local-aaa-user password policy administrator
   159|  password history record number 0
   160|  password expire 0
   161| domain default
   162|  authentication-scheme radius
   163|  accounting-scheme default
   164|  radius-server default
   165| domain default_admin
   166|  authentication-scheme default
   167|  accounting-scheme default
   168| local-aaa-user wrong-password retry-interval 5 retry-time 10 block-time 5
   169| local-user admin password irreversible-cipher $1c$&g__1]ufS8$4TU91.jqtTd7KzTf_[VM(x@N"@9acF{6Y,O[a<x<$
   170| local-user admin privilege level 15
   171| local-user admin service-type terminal ssh http
   172| local-user zandona password irreversible-cipher $1c$LC"pGB|q4O$8Kp.>f{E&GMOUm8zus7Y{g`K%ifk#Hx9P{9h)2Q2$
   173| local-user zandona privilege level 15
   174| local-user zandona service-type terminal ssh http
   175|#
   176|ntp-service server disable
   177|ntp-service ipv6 server disable
   178|ntp-service unicast-server 200.189.40.8
   179|ntp-service unicast-server 200.160.0.8
   180|#
   181|interface Vlanif1114
   182| description VLAN_1114_SW1POP59_SW1POP14_OSPF
   183| ip address 10.244.114.1 255.255.255.252
   184| ospf cost 100
   185| ospf network-type p2p
   186| mpls
   187| mpls ldp
   188|#
   189|interface Vlanif1159
   190| description VLAN_1159_SW1POP08_SW1POP59_MPLS1
   191| ip address 10.244.159.2 255.255.255.252
   192| ospf cost 10
   193| ospf network-type p2p
   194| mpls
   195| mpls ldp
   196|#
   197|interface Vlanif1259
   198| description VLAN_1259_SW1POP25_SW1POP59_MPLS1
   199| ip address 10.244.159.6 255.255.255.252
   200| ospf cost 40
   201| ospf network-type p2p
   202| mpls
   203| mpls ldp
   204|#
   205|interface Vlanif1459
   206| description PTP_POP59_POP14_OSPF_2
   207| mtu 9216
   208| ip address 10.244.114.14 255.255.255.252
   209| ospf cost 20
   210| ospf network-type p2p
   211| mpls
   212| mpls ldp
   213|#
   214|interface Vlanif3114
   215| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
   216| l2 binding vsi VSI3114_POP00_POP14_LOMBA_BGP1
   217|#
   218|interface Vlanif3214
   219| description VLAN_3214_SCHOSSLER_BGP2_CE14_LOMBA_L2
   220| l2 binding vsi VSI3214_POP02_POP14_LOMBA_BGP2
   221|#
   222|interface Vlanif3256
   223| description VLAN_3256_PPPOE_CLIENTES_TELIUM
   224| l2 binding vsi VSI3256_POP02_POP59_TR_CL_TELIU
   225|#
   226|interface Vlanif3580
   227| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
   228| l2 binding vsi VSI_3580_RN_INFRAWEB_NA_CYBER
   229|#
   230|interface Vlanif3581
   231| description VLAN3581_RN_CYBER_NA_INFRAWEB
   232| l2 binding vsi VSI_3581_RN_CYBER_NA_INFRAWEB
   233|#
   234|interface MEth0/0/1
   235| ip address 192.168.1.253 255.255.255.0
   236|#
   237|interface GigabitEthernet0/0/1
   238| description PTP_SW1POP59_P01_OLT1INFRA_P0/1
   239| port link-type trunk
   240| undo port trunk allow-pass vlan 1
   241| port trunk allow-pass vlan 1114 3214 3256 3580 to 3581
   242| jumboframe enable 12288
   243|#
   244|interface GigabitEthernet0/0/2
   245| shutdown
   246|#
   247|interface GigabitEthernet0/0/3
   248| shutdown
   249|#
   250|interface GigabitEthernet0/0/4
   251| shutdown
   252|#
   253|interface GigabitEthernet0/0/5
   254| shutdown
   255|#
   256|interface GigabitEthernet0/0/6
   257| shutdown
   258|#
   259|interface GigabitEthernet0/0/7
   260| shutdown
   261|#
   262|interface GigabitEthernet0/0/8
   263| shutdown
   264|#
   265|interface GigabitEthernet0/0/9
   266| shutdown
   267|#
   268|interface GigabitEthernet0/0/10
   269| shutdown
   270|#
   271|interface GigabitEthernet0/0/11
   272| shutdown
   273|#
   274|interface GigabitEthernet0/0/12
   275| shutdown
   276|#
   277|interface GigabitEthernet0/0/13
   278| shutdown
   279|#
   280|interface GigabitEthernet0/0/14
   281| shutdown
   282|#
   283|interface GigabitEthernet0/0/15
   284| shutdown
   285|#
   286|interface GigabitEthernet0/0/16
   287| shutdown
   288|#
   289|interface GigabitEthernet0/0/17
   290| shutdown
   291|#
   292|interface GigabitEthernet0/0/18
   293| shutdown
   294|#
   295|interface GigabitEthernet0/0/19
   296| shutdown
   297|#
   298|interface GigabitEthernet0/0/20
   299| shutdown
   300|#
   301|interface XGigabitEthernet0/0/1
   302| description PTP_SW1POP59_PX01_SW1POP14_PX01
   303| port link-type trunk
   304| undo port trunk allow-pass vlan 1
   305| port trunk allow-pass vlan 140 to 141 1114 1214 1459 3114 3214
   306| jumboframe enable 12288
   307|#
   308|interface XGigabitEthernet0/0/2
   309| description PTP_SW1POP59_PX01_INFRAWEB_SFP-SFPPLUS1
   310| port link-type trunk
   311| undo port trunk allow-pass vlan 1
   312| port trunk allow-pass vlan 3580
   313| jumboframe enable 12288
   314|#
   315|interface XGigabitEthernet0/0/3
   316| description PTP_SW1POP59_PX03_SW1POP08_PX03
   317| port link-type trunk
   318| undo port trunk allow-pass vlan 1
   319| port trunk allow-pass vlan 1159
   320| stp disable
   321| jumboframe enable 12288
   322|#
   323|interface XGigabitEthernet0/0/4
   324| description PTP_SW1POP57_PX04_SW1POP25_PX04
   325| port link-type trunk
   326| undo port trunk allow-pass vlan 1
   327| port trunk allow-pass vlan 1259
   328| jumboframe enable 12288
   329|#
   330|interface 40GE0/0/1
   331| shutdown
   332|#
   333|interface 40GE0/0/2
   334| shutdown
   335|#
   336|interface 40GE0/0/3
   337| shutdown
   338|#
   339|interface 40GE0/0/4
   340| shutdown
   341|#
   342|interface 40GE0/0/5
   343| shutdown
   344|#
   345|interface 40GE0/0/6
   346| shutdown
   347|#
   348|interface NULL0
   349|#
   350|interface LoopBack1
   351| ip address 10.244.188.59 255.255.255.255
   352|#
   353|bgp 268214
   354| router-id 10.244.188.59
   355| graceful-restart
   356| #
   357| ipv4-family unicast
   358|  undo synchronization
   359|#
   360|ospf 1
   361| bfd all-interfaces enable
   362| import-route direct cost 15 type 1
   363| import-route static cost 15 type 1
   364| silent-interface all
   365| undo silent-interface Vlanif1159
   366| undo silent-interface Vlanif1259
   367| undo silent-interface Vlanif1114
   368| undo silent-interface Vlanif1459
   369| area 0.0.0.0
   370|  network 10.244.114.0 0.0.0.3
   371|  network 10.244.114.12 0.0.0.3
   372|  network 10.244.158.0 0.0.0.3
   373|  network 10.244.159.0 0.0.0.3
   374|  network 10.244.159.4 0.0.0.3
   375|  network 10.244.159.8 0.0.0.3
   376|#
   377|undo icmp name timestamp-request receive
   378|#
   379|snmp-agent
   380|snmp-agent local-engineid 800007DB03D8109F0B0F90
   381|snmp-agent community read cipher %^%#1@F/@$uGj(X>1I$D]&UKk_;i(\cOP5@lW5U)F#/U<UF&-pL$^%@gs0L]}]/%E`.7*F-b-(]S/:RN=HiL%^%#
   382|snmp-agent sys-info contact CyberWeb
   383|snmp-agent sys-info location -29.7400752,-51.1495213
   384|snmp-agent sys-info version v2c v3
   385|snmp-agent protocol source-status all-interface
   386|undo snmp-agent protocol source-status ipv6 all-interface
   387|#
   388|stelnet server enable
   389|ssh client first-time enable
   390|ssh server-source all-interface
   391|ssh server cipher aes256_ctr aes128_ctr
   392|ssh server hmac sha2_256
   393|ssh server key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   394|ssh client cipher aes256_ctr aes128_ctr
   395|ssh client hmac sha2_256
   396|ssh client key-exchange dh_group16_sha512 dh_group15_sha512 dh_group14_sha256 dh_group_exchange_sha256
   397|ssh server dh-exchange min-len 2048
   398|ssh server publickey rsa_sha2_512 rsa_sha2_256
   399|#
   400|capwap dtls cert-mandatory-match enable
   401|#
   402|user-interface con 0
   403| authentication-mode password
   404| set authentication password cipher $1c$mC5a9yRYQL$EU-FHE%^;)HH_>8dO6G(Q|RN/i'7A",Me)"yuK$K$
   405| idle-timeout 3600 0
   406|user-interface vty 0 4
   407| authentication-mode aaa
   408| idle-timeout 3600 0
   409| protocol inbound all
   410|user-interface vty 16 20
   411|#
   412|wlan
   413| traffic-profile name default
   414| security-profile name default
   415| security-profile name default-wds
   416| security-profile name default-mesh
   417| ssid-profile name default
   418| vap-profile name default
   419| wds-profile name default
   420| mesh-handover-profile name default
   421| mesh-profile name default
   422| regulatory-domain-profile name default
   423| air-scan-profile name default
   424| rrm-profile name default
   425| radio-2g-profile name default
   426| radio-5g-profile name default
   427| wids-spoof-profile name default
   428| wids-whitelist-profile name default
   429| wids-profile name default
   430| ap-system-profile name default
   431| port-link-profile name default
   432| wired-port-profile name default
   433| ap-group name default
   434| provision-ap
   435|#
   436|dot1x-access-profile name dot1x_access_profile
   437|#
   438|mac-access-profile name mac_access_profile
   439|#
   440|ops
   441|#
   442|return
   443|<SW1POP59_INFRAWEB>
   444|```
   445|