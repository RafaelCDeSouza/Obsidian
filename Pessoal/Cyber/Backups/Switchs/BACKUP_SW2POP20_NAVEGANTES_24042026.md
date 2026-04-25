[[SW2POP20]]

     1|```yaml
     2|cyberweb@10.244.189.20's password:
     3|
     4|Info: The max number of VTY users is 5, the number of current VTY users online is 1, and total number of terminal users online is 1.
     5|      The current login time is 2024-07-31 23:14:51.
     6|<SW2POP20_NAVEGANTES>displ
     7|<SW2POP20_NAVEGANTES>display curr
     8|!Software Version V600R023C00SPC500
     9|!Last configuration was updated at 2024-07-14 04:57:04+00:00 by cyberweb
    10|!Last configuration was saved at 2024-07-14 04:54:24+00:00 by cyberweb
    11|!grpc VRPV800R006C00B016D0127-0.0.1
    12|!kms_feature --
    13|!md_tlm VRPV800R006C00B016D0127-0.0.1
    14|!telem VRPV800R006C00B016D0127-0.0.1
    15|#
    16|pki realm default
    17|#
    18|sysname SW2POP20_NAVEGANTES
    19|#
    20|undo ftp server source all-interface
    21|undo ftp ipv6 server source all-interface
    22|#
    23|ssl policy default
    24| pki-domain default
    25| ssl minimum version tls1.2
    26| cipher-suite exclude key-exchange rsa
    27| cipher-suite exclude cipher mode cbc
    28| cipher-suite exclude hmac sha1
    29| diffie-hellman modulus 3072
    30| ecdh group curve brainpool
    31| signature algorithm-list ed25519 ed448 rsa-pss-pss-sha256 rsa-pss-pss-sha384 rsa-pss-pss-sha512 rsa-pss-rsae-sha256 rsa-pss-rsae-sha384 rsa-pss-rsae-sha512
    32|#
    33|info-center logfile compression lzma
    34|#
    35|device board 1 board-type S5735-L48T4XE-A-V2
    36|#
    37|authentication-profile name default_authen_profile
    38|authentication-profile name dot1x_authen_profile
    39|authentication-profile name dot1xmac_authen_profile
    40|authentication-profile name mac_authen_profile
    41|#
    42|drop-profile default
    43|#
    44|ntp server source-interface all disable
    45|ntp ipv6 server source-interface all disable
    46|#
    47|vlan batch 99 1320
    48|#
    49|router id 10.244.189.20
    50|#
    51|error-down auto-recovery cause link-flap interval 60
    52|#
    53|undo telnet server-source all-interface
    54|undo telnet ipv6 server-source all-interface
    55|#
    56|qos schedule-profile default
    57|#
    58|diffserv domain default
    59|#
    60|ip vpn-instance _management_vpn_
    61| ipv4-family
    62|#
    63|bfd
    64|#
    65|vlan 99
    66| description TEMP
    67|#
    68|vlan 1320
    69| description VLAN_1320_SW2POP20_SW1POP20_MPLS
    70|#
    71|aaa
    72| authentication-scheme default
    73|  authentication-mode local
    74| authentication-scheme radius
    75|  authentication-mode radius
    76| authorization-scheme default
    77|  authorization-mode local
    78| accounting-scheme default
    79|  accounting-mode none
    80| local-aaa-user password policy administrator
    81|  password history record number 0
    82|  password expire 0
    83| domain default
    84|  authentication-scheme default
    85|  accounting-scheme default
    86| domain default_admin
    87|  authentication-scheme default
    88|  accounting-scheme default
    89| local-user cyberweb password irreversible-cipher $1d$b^zHDAsG,:4;d)=J$tqT7A#L|>N<SCJLDs@m;`mY3P2DlSYgK-HKw:SwU$
    90| local-user cyberweb privilege level 3
    91| local-user cyberweb service-type ssh
    92|#
    93|free-rule-template name default_free_rule
    94|#
    95|dot1x-access-profile name dot1x_access_profile
    96|#
    97|mac-access-profile name mac_access_profile
    98|#
    99|remote-unit
   100|#
   101|stack
   102|#
   103|license
   104|#
   105|warranty
   106|#
   107|interface Vlanif1320
   108| mtu 9216
   109| description VLAN_1320_SW2POP20_SW1POP20_MPLS
   110| ip address 10.244.120.21 255.255.255.252
   111| ospf cost 10
   112| ospf network-type p2p
   113|#
   114|interface Stack-Port1/1
   115| shutdown
   116|#
   117|interface Stack-Port1/2
   118| shutdown
   119|#
   120|interface GE1/0/1
   121| shutdown
   122|#
   123|interface GE1/0/2
   124| shutdown
   125|#
   126|interface GE1/0/3
   127| shutdown
   128|#
   129|interface GE1/0/4
   130| shutdown
   131|#
   132|interface GE1/0/5
   133| description PTP_SW2POP20_P5_CE020_P5
   134|#
   135|interface GE1/0/6
   136| shutdown
   137|#
   138|interface GE1/0/7
   139| shutdown
   140|#
   141|interface GE1/0/8
   142| shutdown
   143|#
   144|interface GE1/0/9
   145| shutdown
   146|#
   147|interface GE1/0/10
   148| shutdown
   149|#
   150|interface GE1/0/11
   151| shutdown
   152|#
   153|interface GE1/0/12
   154| shutdown
   155|#
   156|interface GE1/0/13
   157| shutdown
   158|#
   159|interface GE1/0/14
   160| shutdown
   161|#
   162|interface GE1/0/15
   163| shutdown
   164|#
   165|interface GE1/0/16
   166| shutdown
   167|#
   168|interface GE1/0/17
   169| shutdown
   170|#
   171|interface GE1/0/18
   172| shutdown
   173|#
   174|interface GE1/0/19
   175| shutdown
   176|#
   177|interface GE1/0/20
   178| shutdown
   179|#
   180|interface GE1/0/21
   181| shutdown
   182|#
   183|interface GE1/0/22
   184| shutdown
   185|#
   186|interface GE1/0/23
   187| shutdown
   188|#
   189|interface GE1/0/24
   190| shutdown
   191|#
   192|interface GE1/0/25
   193| shutdown
   194|#
   195|interface GE1/0/26
   196| shutdown
   197|#
   198|interface GE1/0/27
   199| shutdown
   200|#
   201|interface GE1/0/28
   202| shutdown
   203|#
   204|interface GE1/0/29
   205| shutdown
   206|#
   207|interface GE1/0/30
   208| shutdown
   209|#
   210|interface GE1/0/31
   211| shutdown
   212|#
   213|interface GE1/0/32
   214| shutdown
   215|#
   216|interface GE1/0/33
   217| shutdown
   218|#
   219|interface GE1/0/34
   220| shutdown
   221|#
   222|interface GE1/0/35
   223| shutdown
   224|#
   225|interface GE1/0/36
   226| shutdown
   227|#
   228|interface GE1/0/37
   229| shutdown
   230|#
   231|interface GE1/0/38
   232| shutdown
   233|#
   234|interface GE1/0/39
   235| shutdown
   236|#
   237|interface GE1/0/40
   238| shutdown
   239|#
   240|interface GE1/0/41
   241| shutdown
   242|#
   243|interface GE1/0/42
   244| shutdown
   245|#
   246|interface GE1/0/43
   247| shutdown
   248|#
   249|interface GE1/0/44
   250| shutdown
   251|#
   252|interface GE1/0/45
   253| shutdown
   254|#
   255|interface GE1/0/46
   256| shutdown
   257|#
   258|interface GE1/0/47
   259| shutdown
   260|#
   261|interface GE1/0/48
   262| shutdown
   263|#
   264|interface 10GE1/0/1
   265| shutdown
   266|#
   267|interface 10GE1/0/2
   268| shutdown
   269|#
   270|interface 10GE1/0/3
   271| shutdown
   272|#
   273|interface 10GE1/0/4
   274| description PTP_SW2POP20_PX04_SW1POP20_PX04
   275| port link-type trunk
   276| undo port trunk allow-pass vlan 1
   277| port trunk allow-pass vlan 1320
   278| jumboframe enable 10240
   279| device transceiver 10GBASE-FIBER
   280|#
   281|interface 10GE1/0/5
   282| shutdown
   283|#
   284|interface 10GE1/0/6
   285| shutdown
   286|#
   287|interface LoopBack0
   288| ip address 10.244.189.20 255.255.255.255
   289|#
   290|interface NULL0
   291|#
   292|ospf 1 router-id 10.244.189.20
   293| bfd all-interfaces enable
   294| import-route direct cost 15 type 1
   295| import-route static cost 15 type 1
   296| silent-interface all
   297| undo silent-interface Vlanif1320
   298| opaque-capability enable
   299| area 0.0.0.0
   300|  network 10.244.120.20 0.0.0.3 description Vlanif1320_SW1POP20
   301|  network 10.244.189.20 0.0.0.0 description Loopback1_SW2POP20
   302|#
   303|snmp-agent
   304|snmp-agent local-engineid 800007DB0364C394EC59D7
   305|snmp-agent community read cipher %@%##!!!!!!!!!"!!!!"!!!!*!!!!7LTnVOK_g:_(A12WK0*E:3!MYJe_V0nS,%O!!!!!2jp5!!!!!!U!!!!]<d)'w,<w!JCJu7"%8PIq2lV%9Y\X=\|7d02{>|%;zJ~K_0]~/FyheRFE.a@{,SL1!!!!!!!!!!!!!!!%@%# alias __CommunityAliasName_01_57636
   306|#
   307|snmp-agent sys-info contact CyberWeb
   308|snmp-agent sys-info version v2c v3
   309|#
   310|snmp-agent protocol source-interface 10GE1/0/4
   311|snmp-agent protocol source-interface LoopBack0
   312|undo snmp-agent protocol source-status all-interface
   313|undo snmp-agent protocol source-status ipv6 all-interface
   314|#
   315|undo snmp-agent proxy protocol source-status all-interface
   316|undo snmp-agent proxy protocol source-status ipv6 all-interface
   317|#
   318|#
   319|stelnet server enable
   320|ssh server rsa-key min-length 3072
   321|ssh server-source -i LoopBack0
   322|undo ssh server-source all-interface
   323|undo ssh ipv6 server-source all-interface
   324|ssh authorization-type default aaa
   325|#
   326|ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   327|ssh server hmac sha2_512 sha2_256
   328|ssh server key-exchange dh_group_exchange_sha256 dh_group16_sha512 curve25519_sha256
   329|#
   330|ssh server publickey rsa_sha2_256 rsa_sha2_512
   331|#
   332|ssh server dh-exchange min-len 3072
   333|#
   334|ssh client publickey rsa_sha2_256 rsa_sha2_512
   335|#
   336|ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   337|ssh client hmac sha2_512 sha2_256
   338|ssh client key-exchange dh_group_exchange_sha256 dh_group16_sha512 curve25519_sha256
   339|#
   340|user-interface maximum-vty 5
   341|#
   342|user-interface con 0
   343| authentication-mode password
   344| set authentication password cipher $1d$A|9W/tlK&WMqM(*o$Q7)i8j,4R./)lS6w_Ho=>9P9L`M/ACucM]0V.W./$
   345|#
   346|user-interface vty 0 4
   347| authentication-mode aaa
   348| protocol inbound ssh
   349|#
   350|ztp domain-type registration-center domain register.naas.huawei.com port 10020
   351|#
   352|web-manager http forward enable
   353|#
   354|return
   355|<SW2POP20_NAVEGANTES>
   356|```
   357|