---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW2POP20

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW2POP20 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW2POP20]]
     2|
     3|     1|```yaml
     4|     2|cyberweb@10.244.189.20's password:
     5|     3|
     6|     4|Info: The max number of VTY users is 5, the number of current VTY users online is 1, and total number of terminal users online is 1.
     7|     5|      The current login time is 2024-07-31 23:14:51.
     8|     6|<SW2POP20_NAVEGANTES>displ
     9|     7|<SW2POP20_NAVEGANTES>display curr
    10|     8|!Software Version V600R023C00SPC500
    11|     9|!Last configuration was updated at 2024-07-14 04:57:04+00:00 by cyberweb
    12|    10|!Last configuration was saved at 2024-07-14 04:54:24+00:00 by cyberweb
    13|    11|!grpc VRPV800R006C00B016D0127-0.0.1
    14|    12|!kms_feature --
    15|    13|!md_tlm VRPV800R006C00B016D0127-0.0.1
    16|    14|!telem VRPV800R006C00B016D0127-0.0.1
    17|    15|#
    18|    16|pki realm default
    19|    17|#
    20|    18|sysname SW2POP20_NAVEGANTES
    21|    19|#
    22|    20|undo ftp server source all-interface
    23|    21|undo ftp ipv6 server source all-interface
    24|    22|#
    25|    23|ssl policy default
    26|    24| pki-domain default
    27|    25| ssl minimum version tls1.2
    28|    26| cipher-suite exclude key-exchange rsa
    29|    27| cipher-suite exclude cipher mode cbc
    30|    28| cipher-suite exclude hmac sha1
    31|    29| diffie-hellman modulus 3072
    32|    30| ecdh group curve brainpool
    33|    31| signature algorithm-list ed25519 ed448 rsa-pss-pss-sha256 rsa-pss-pss-sha384 rsa-pss-pss-sha512 rsa-pss-rsae-sha256 rsa-pss-rsae-sha384 rsa-pss-rsae-sha512
    34|    32|#
    35|    33|info-center logfile compression lzma
    36|    34|#
    37|    35|device board 1 board-type S5735-L48T4XE-A-V2
    38|    36|#
    39|    37|authentication-profile name default_authen_profile
    40|    38|authentication-profile name dot1x_authen_profile
    41|    39|authentication-profile name dot1xmac_authen_profile
    42|    40|authentication-profile name mac_authen_profile
    43|    41|#
    44|    42|drop-profile default
    45|    43|#
    46|    44|ntp server source-interface all disable
    47|    45|ntp ipv6 server source-interface all disable
    48|    46|#
    49|    47|vlan batch 99 1320
    50|    48|#
    51|    49|router id 10.244.189.20
    52|    50|#
    53|    51|error-down auto-recovery cause link-flap interval 60
    54|    52|#
    55|    53|undo telnet server-source all-interface
    56|    54|undo telnet ipv6 server-source all-interface
    57|    55|#
    58|    56|qos schedule-profile default
    59|    57|#
    60|    58|diffserv domain default
    61|    59|#
    62|    60|ip vpn-instance _management_vpn_
    63|    61| ipv4-family
    64|    62|#
    65|    63|bfd
    66|    64|#
    67|    65|vlan 99
    68|    66| description TEMP
    69|    67|#
    70|    68|vlan 1320
    71|    69| description VLAN_1320_SW2POP20_SW1POP20_MPLS
    72|    70|#
    73|    71|aaa
    74|    72| authentication-scheme default
    75|    73|  authentication-mode local
    76|    74| authentication-scheme radius
    77|    75|  authentication-mode radius
    78|    76| authorization-scheme default
    79|    77|  authorization-mode local
    80|    78| accounting-scheme default
    81|    79|  accounting-mode none
    82|    80| local-aaa-user password policy administrator
    83|    81|  password history record number 0
    84|    82|  password expire 0
    85|    83| domain default
    86|    84|  authentication-scheme default
    87|    85|  accounting-scheme default
    88|    86| domain default_admin
    89|    87|  authentication-scheme default
    90|    88|  accounting-scheme default
    91|    89| local-user cyberweb password irreversible-cipher $1d$b^zHDAsG,:4;d)=J$tqT7A#L|>N<SCJLDs@m;`mY3P2DlSYgK-HKw:SwU$
    92|    90| local-user cyberweb privilege level 3
    93|    91| local-user cyberweb service-type ssh
    94|    92|#
    95|    93|free-rule-template name default_free_rule
    96|    94|#
    97|    95|dot1x-access-profile name dot1x_access_profile
    98|    96|#
    99|    97|mac-access-profile name mac_access_profile
   100|    98|#
   101|    99|remote-unit
   102|   100|#
   103|   101|stack
   104|   102|#
   105|   103|license
   106|   104|#
   107|   105|warranty
   108|   106|#
   109|   107|interface Vlanif1320
   110|   108| mtu 9216
   111|   109| description VLAN_1320_SW2POP20_SW1POP20_MPLS
   112|   110| ip address 10.244.120.21 255.255.255.252
   113|   111| ospf cost 10
   114|   112| ospf network-type p2p
   115|   113|#
   116|   114|interface Stack-Port1/1
   117|   115| shutdown
   118|   116|#
   119|   117|interface Stack-Port1/2
   120|   118| shutdown
   121|   119|#
   122|   120|interface GE1/0/1
   123|   121| shutdown
   124|   122|#
   125|   123|interface GE1/0/2
   126|   124| shutdown
   127|   125|#
   128|   126|interface GE1/0/3
   129|   127| shutdown
   130|   128|#
   131|   129|interface GE1/0/4
   132|   130| shutdown
   133|   131|#
   134|   132|interface GE1/0/5
   135|   133| description PTP_SW2POP20_P5_CE020_P5
   136|   134|#
   137|   135|interface GE1/0/6
   138|   136| shutdown
   139|   137|#
   140|   138|interface GE1/0/7
   141|   139| shutdown
   142|   140|#
   143|   141|interface GE1/0/8
   144|   142| shutdown
   145|   143|#
   146|   144|interface GE1/0/9
   147|   145| shutdown
   148|   146|#
   149|   147|interface GE1/0/10
   150|   148| shutdown
   151|   149|#
   152|   150|interface GE1/0/11
   153|   151| shutdown
   154|   152|#
   155|   153|interface GE1/0/12
   156|   154| shutdown
   157|   155|#
   158|   156|interface GE1/0/13
   159|   157| shutdown
   160|   158|#
   161|   159|interface GE1/0/14
   162|   160| shutdown
   163|   161|#
   164|   162|interface GE1/0/15
   165|   163| shutdown
   166|   164|#
   167|   165|interface GE1/0/16
   168|   166| shutdown
   169|   167|#
   170|   168|interface GE1/0/17
   171|   169| shutdown
   172|   170|#
   173|   171|interface GE1/0/18
   174|   172| shutdown
   175|   173|#
   176|   174|interface GE1/0/19
   177|   175| shutdown
   178|   176|#
   179|   177|interface GE1/0/20
   180|   178| shutdown
   181|   179|#
   182|   180|interface GE1/0/21
   183|   181| shutdown
   184|   182|#
   185|   183|interface GE1/0/22
   186|   184| shutdown
   187|   185|#
   188|   186|interface GE1/0/23
   189|   187| shutdown
   190|   188|#
   191|   189|interface GE1/0/24
   192|   190| shutdown
   193|   191|#
   194|   192|interface GE1/0/25
   195|   193| shutdown
   196|   194|#
   197|   195|interface GE1/0/26
   198|   196| shutdown
   199|   197|#
   200|   198|interface GE1/0/27
   201|   199| shutdown
   202|   200|#
   203|   201|interface GE1/0/28
   204|   202| shutdown
   205|   203|#
   206|   204|interface GE1/0/29
   207|   205| shutdown
   208|   206|#
   209|   207|interface GE1/0/30
   210|   208| shutdown
   211|   209|#
   212|   210|interface GE1/0/31
   213|   211| shutdown
   214|   212|#
   215|   213|interface GE1/0/32
   216|   214| shutdown
   217|   215|#
   218|   216|interface GE1/0/33
   219|   217| shutdown
   220|   218|#
   221|   219|interface GE1/0/34
   222|   220| shutdown
   223|   221|#
   224|   222|interface GE1/0/35
   225|   223| shutdown
   226|   224|#
   227|   225|interface GE1/0/36
   228|   226| shutdown
   229|   227|#
   230|   228|interface GE1/0/37
   231|   229| shutdown
   232|   230|#
   233|   231|interface GE1/0/38
   234|   232| shutdown
   235|   233|#
   236|   234|interface GE1/0/39
   237|   235| shutdown
   238|   236|#
   239|   237|interface GE1/0/40
   240|   238| shutdown
   241|   239|#
   242|   240|interface GE1/0/41
   243|   241| shutdown
   244|   242|#
   245|   243|interface GE1/0/42
   246|   244| shutdown
   247|   245|#
   248|   246|interface GE1/0/43
   249|   247| shutdown
   250|   248|#
   251|   249|interface GE1/0/44
   252|   250| shutdown
   253|   251|#
   254|   252|interface GE1/0/45
   255|   253| shutdown
   256|   254|#
   257|   255|interface GE1/0/46
   258|   256| shutdown
   259|   257|#
   260|   258|interface GE1/0/47
   261|   259| shutdown
   262|   260|#
   263|   261|interface GE1/0/48
   264|   262| shutdown
   265|   263|#
   266|   264|interface 10GE1/0/1
   267|   265| shutdown
   268|   266|#
   269|   267|interface 10GE1/0/2
   270|   268| shutdown
   271|   269|#
   272|   270|interface 10GE1/0/3
   273|   271| shutdown
   274|   272|#
   275|   273|interface 10GE1/0/4
   276|   274| description PTP_SW2POP20_PX04_SW1POP20_PX04
   277|   275| port link-type trunk
   278|   276| undo port trunk allow-pass vlan 1
   279|   277| port trunk allow-pass vlan 1320
   280|   278| jumboframe enable 10240
   281|   279| device transceiver 10GBASE-FIBER
   282|   280|#
   283|   281|interface 10GE1/0/5
   284|   282| shutdown
   285|   283|#
   286|   284|interface 10GE1/0/6
   287|   285| shutdown
   288|   286|#
   289|   287|interface LoopBack0
   290|   288| ip address 10.244.189.20 255.255.255.255
   291|   289|#
   292|   290|interface NULL0
   293|   291|#
   294|   292|ospf 1 router-id 10.244.189.20
   295|   293| bfd all-interfaces enable
   296|   294| import-route direct cost 15 type 1
   297|   295| import-route static cost 15 type 1
   298|   296| silent-interface all
   299|   297| undo silent-interface Vlanif1320
   300|   298| opaque-capability enable
   301|   299| area 0.0.0.0
   302|   300|  network 10.244.120.20 0.0.0.3 description Vlanif1320_SW1POP20
   303|   301|  network 10.244.189.20 0.0.0.0 description Loopback1_SW2POP20
   304|   302|#
   305|   303|snmp-agent
   306|   304|snmp-agent local-engineid 800007DB0364C394EC59D7
   307|   305|snmp-agent community read cipher %@%##!!!!!!!!!"!!!!"!!!!*!!!!7LTnVOK_g:_(A12WK0*E:3!MYJe_V0nS,%O!!!!!2jp5!!!!!!U!!!!]<d)'w,<w!JCJu7"%8PIq2lV%9Y\X=\|7d02{>|%;zJ~K_0]~/FyheRFE.a@{,SL1!!!!!!!!!!!!!!!%@%# alias __CommunityAliasName_01_57636
   308|   306|#
   309|   307|snmp-agent sys-info contact CyberWeb
   310|   308|snmp-agent sys-info version v2c v3
   311|   309|#
   312|   310|snmp-agent protocol source-interface 10GE1/0/4
   313|   311|snmp-agent protocol source-interface LoopBack0
   314|   312|undo snmp-agent protocol source-status all-interface
   315|   313|undo snmp-agent protocol source-status ipv6 all-interface
   316|   314|#
   317|   315|undo snmp-agent proxy protocol source-status all-interface
   318|   316|undo snmp-agent proxy protocol source-status ipv6 all-interface
   319|   317|#
   320|   318|#
   321|   319|stelnet server enable
   322|   320|ssh server rsa-key min-length 3072
   323|   321|ssh server-source -i LoopBack0
   324|   322|undo ssh server-source all-interface
   325|   323|undo ssh ipv6 server-source all-interface
   326|   324|ssh authorization-type default aaa
   327|   325|#
   328|   326|ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   329|   327|ssh server hmac sha2_512 sha2_256
   330|   328|ssh server key-exchange dh_group_exchange_sha256 dh_group16_sha512 curve25519_sha256
   331|   329|#
   332|   330|ssh server publickey rsa_sha2_256 rsa_sha2_512
   333|   331|#
   334|   332|ssh server dh-exchange min-len 3072
   335|   333|#
   336|   334|ssh client publickey rsa_sha2_256 rsa_sha2_512
   337|   335|#
   338|   336|ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   339|   337|ssh client hmac sha2_512 sha2_256
   340|   338|ssh client key-exchange dh_group_exchange_sha256 dh_group16_sha512 curve25519_sha256
   341|   339|#
   342|   340|user-interface maximum-vty 5
   343|   341|#
   344|   342|user-interface con 0
   345|   343| authentication-mode password
   346|   344| set authentication password cipher $1d$A|9W/tlK&WMqM(*o$Q7)i8j,4R./)lS6w_Ho=>9P9L`M/ACucM]0V.W./$
   347|   345|#
   348|   346|user-interface vty 0 4
   349|   347| authentication-mode aaa
   350|   348| protocol inbound ssh
   351|   349|#
   352|   350|ztp domain-type registration-center domain register.naas.huawei.com port 10020
   353|   351|#
   354|   352|web-manager http forward enable
   355|   353|#
   356|   354|return
   357|   355|<SW2POP20_NAVEGANTES>
   358|   356|```
   359|   357|
```

## 🗒️ Observações
- {{notes}}
