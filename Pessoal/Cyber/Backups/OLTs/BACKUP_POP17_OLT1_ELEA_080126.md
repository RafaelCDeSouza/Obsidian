---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de POP17_OLT1

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | POP17_OLT1 |
| **Tipo** | OLT |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[POP17_OLT1]]
     2|
     3|     1|```yaml
     4|     2|POP17_OLT1_ELEA#display current-configuration
     5|     3|{ <cr>|include-default<K>|interface<K>|ont<K>|port<K>|section<K>|service-port<K>||<K> }:
     6|     4|
     7|     5|  Command:
     8|     6|          display current-configuration
     9|     7|[Active: H901MPSA; Standby: H901MPSA]
    10|     8|[Patch Info: SPH306]
    11|     9|[MA5800V100R021: 6611]
    12|    10|#
    13|    11|timezone GMT- 03:00
    14|    12|#
    15|    13|[pre-config]
    16|    14|  <pre-config>
    17|    15| board add 0/0 H901PISA
    18|    16| board add 0/1 H901GPHF
    19|    17|#
    20|    18|[sysmode]
    21|    19|  <sysmode>
    22|    20| switch vdsl mode to tr129
    23|    21| xpon mode switch-to profile-mode
    24|    22| sysmode end
    25|    23|#
    26|    24|[global-config]
    27|    25|  <global-config>
    28|    26| sysname POP17_OLT1_ELEA
    29|    27| terminal user-profile name suporte 0 0 00:00:00 00:00:00
    30|    28| terminal user name buildrun_new_password root *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$* 7 0000:00:00:00:00:00 0000:00:00:00:00:00 root 1 first-login-info 0 self-changed-password 1 "-----"
    31|    29| terminal user name buildrun_new_password radiusnet *~uc$3b$l(vW3i7bgUnjV&M[Z[R($I6%KQ=eQO+)}ArO$^B0R(b)<7~_ry74+%n%NX3|:$* 0 2000:01:07:21:40:08 2000:01:07:21:42:27 root 2 first-login-info 0 self-changed-password 1 "20"
    32|    30| terminal user name buildrun_new_password suporte *~ub$3b$iT6A&rFGz;D:afIkqJ'G$S+DfNEXY:8"\B+N|F+SNhYj$'qel$P}GNzS(vXU+$* 0 2025:07:28:09:25:41 2025:07:28:09:26:41 suporte 3 first-login-info 0 self-changed-password 1 "-----"
    33|    31| system modify logon password disable
    34|    32| system user password security mode enhance
    35|    33| system user password security-length 12
    36|    34| terminal user name history_password radiusnet *~uc$1b${\_WFnOIy8$(<T>A8#SW:'*cX0V3gq7YTBQMx.s~F{WC<P)G|JP$*
    37|    35| terminal user name history_password suporte *~ub$3b$qs<&RA-Vv6S,B38`.ar4$MHLGH)E7w6o~g"1"ZA6G98e$40_\y#64x`I(|1w*$*
    38|    36| ssh client key-exchange sftp dh_group14_sha1 dh_group_exchange_sha1 dh_group_exchange_sha256 curve25519_sha256
    39|    37| xpon ont optical-ddm quick-query disable
    40|    38| dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
    41|    39| dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
    42|    40| ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
    43|    41|  ont-port pots 1 eth 2
    44|    42|  port vlan eth 1 transparent
    45|    43|  port vlan eth 2 transparent
    46|    44|  port vlan iphost translation 171 user-vlan 171
    47|    45|  commit
    48|    46| ont-srvprofile gpon profile-id 21 profile-name "SRVPROFILE_BRIDGE_21"
    49|    47|  ont-port eth 1
    50|    48|  port vlan eth 1 translation 21 user-vlan 21
    51|    49|  commit
    52|    50| ont-srvprofile gpon profile-id 171 profile-name "SRVPROFILE_BRIDGE_171"
    53|    51|  ont-port eth 1
    54|    52|  port vlan eth 1 translation 171 user-vlan 171
    55|    53|  commit
    56|    54| ont-srvprofile gpon profile-id 173 profile-name "SRVPROFILE_BRIDGE_173"
    57|    55|  ont-port eth 1
    58|    56|  port vlan eth 1 translation 173 user-vlan 173
    59|    57|  commit
    60|    58| ont-srvprofile gpon profile-id 3005 profile-name "SRVPROFILE_BRIDGE_V3005"
    61|    59|  ont-port eth 1
    62|    60|  port vlan eth 1 translation 3005 user-vlan 3005
    63|    61|  commit
    64|    62| ont-srvprofile gpon profile-id 3103 profile-name "SRVPROFILE_BRIDGE_3103"
    65|    63|  ont-port eth 1
    66|    64|  port vlan eth 1 translation 3103 user-vlan 3103
    67|    65|  commit
    68|    66| ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
    69|    67|  ont-port eth 1
    70|    68|  port vlan eth 1 translation 3105 user-vlan 3105
    71|    69|  commit
    72|    70| ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
    73|    71|  ont-port eth 2
    74|    72|  port vlan eth 1 translation 3107 user-vlan 3107
    75|    73|  commit
    76|    74| ont-srvprofile gpon profile-id 3108 profile-name "SRVPROFILE_BRIDGE_3108"
    77|    75|  ont-port eth 1
    78|    76|  port vlan eth 1 translation 3108 user-vlan 3108
    79|    77|  commit
    80|    78| ont-srvprofile gpon profile-id 3256 profile-name "SRVPROFILE_BRIDGE_V3256"
    81|    79|  ont-port eth 1
    82|    80|  port vlan eth 1 translation 3256 user-vlan 3256
    83|    81|  commit
    84|    82| ont-srvprofile gpon profile-id 3261 profile-name "SRVPROFILE_BRIDGE_V3261"
    85|    83|  ont-port eth 1
    86|    84|  port vlan eth 1 translation 3261 user-vlan 3261
    87|    85|  commit
    88|    86| ont-srvprofile gpon profile-id 3341 profile-name "SRVPROFILE_BRIDGE_V3341"
    89|    87|  ont-port eth 2
    90|    88|  port q-in-q eth 1 enable
    91|    89|  commit
    92|    90| ont-srvprofile gpon profile-id 3540 profile-name "SRVPROFILE_BRIDGE_3540"
    93|    91|  ont-port eth 1
    94|    92|  port vlan eth 1 translation 3540 user-vlan 3540
    95|    93|  commit
    96|    94| ont-srvprofile gpon profile-id 3964 profile-name "SRVPROFILE_BRIDGE_V3964"
    97|    95|  ont-port eth 2
    98|    96|  port q-in-q eth 1 enable
    99|    97|  commit
   100|    98| ont-lineprofile gpon profile-id 0 profile-name "line-profile_default_0"
   101|    99|  omcc encrypt off
   102|   100|  tcont 0 dba-profile-id 2
   103|   101|  tcont 1 dba-profile-id 0
   104|   102|  commit
   105|   103|  quit
   106|   104| ont-lineprofile gpon profile-id 21 profile-name "LINE_PROFILE_21"
   107|   105|  omcc encrypt on
   108|   106|  tcont 1 dba-profile-id 10
   109|   107|  gem add 21 eth tcont 1 encrypt on
   110|   108|  gem mapping 21 0 vlan 21
   111|   109|  commit
   112|   110|  quit
   113|   111| ont-lineprofile gpon profile-id 171 profile-name "LINE_PROFILE_171"
   114|   112|  omcc encrypt on
   115|   113|  tcont 1 dba-profile-id 10
   116|   114|  gem add 171 eth tcont 1 encrypt on
   117|   115|  gem mapping 171 0 vlan 171
   118|   116|  commit
   119|   117|  quit
   120|   118| ont-lineprofile gpon profile-id 173 profile-name "LINE_PROFILE_173"
   121|   119|  omcc encrypt on
   122|   120|  tcont 1 dba-profile-id 10
   123|   121|  gem add 173 eth tcont 1 encrypt on
   124|   122|  gem mapping 173 0 vlan 173
   125|   123|  commit
   126|   124|  quit
   127|   125| ont-lineprofile gpon profile-id 3103 profile-name "LINE_PROFILE_3103"
   128|   126|  omcc encrypt on
   129|   127|  tcont 1 dba-profile-id 11
   130|   128|  gem add 103 eth tcont 1 encrypt on
   131|   129|  gem mapping 103 0 vlan 3103
   132|   130|  commit
   133|   131|  quit
   134|   132| ont-lineprofile gpon profile-id 3105 profile-name "LINE_PROFILE_3105"
   135|   133|  omcc encrypt on
   136|   134|  tcont 1 dba-profile-id 11
   137|   135|  gem add 105 eth tcont 1 encrypt on
   138|   136|  gem mapping 105 0 vlan 3105
   139|   137|  commit
   140|   138|  quit
   141|   139| ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
   142|   140|  omcc encrypt on
   143|   141|  tcont 1 dba-profile-id 11
   144|   142|  gem add 107 eth tcont 1 encrypt on
   145|   143|  gem mapping 107 0 vlan 3107
   146|   144|  commit
   147|   145|  quit
   148|   146| ont-lineprofile gpon profile-id 3108 profile-name "LINE_PROFILE_3108"
   149|   147|  omcc encrypt on
   150|   148|  tcont 1 dba-profile-id 11
   151|   149|  gem add 108 eth tcont 1 encrypt on
   152|   150|  gem mapping 108 0 vlan 3108
   153|   151|  commit
   154|   152|  quit
   155|   153| ont-lineprofile gpon profile-id 3256 profile-name "LINE_PROFILE_V3256"
   156|   154|  omcc encrypt on
   157|   155|  tcont 1 dba-profile-id 10
   158|   156|  gem add 256 eth tcont 1 encrypt on
   159|   157|  gem mapping 256 0 vlan 3256
   160|   158|  commit
   161|   159|  quit
   162|   160| ont-lineprofile gpon profile-id 3261 profile-name "LINE_PROFILE_V3261"
   163|   161|  omcc encrypt on
   164|   162|  tcont 1 dba-profile-id 10
   165|   163|  gem add 261 eth tcont 1 encrypt on
   166|   164|  gem mapping 261 0 vlan 3261
   167|   165|  commit
   168|   166|  quit
   169|   167| ont-lineprofile gpon profile-id 3341 profile-name "LINE_PROFILE_V3341"
   170|   168|  omcc encrypt on
   171|   169|  tcont 1 dba-profile-id 10
   172|   170|  gem add 341 eth tcont 0 encrypt on
   173|   171|  gem mapping 341 0 vlan 3341
   174|   172|  commit
   175|   173|  quit
   176|   174| ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
   177|   175|  omcc encrypt on
   178|   176|  tcont 1 dba-profile-id 10
   179|   177|  gem add 540 eth tcont 1 encrypt on
   180|   178|  gem mapping 540 0 vlan 3540
   181|   179|  commit
   182|   180|  quit
   183|   181| ont-lineprofile gpon profile-id 3964 profile-name "LINE_PROFILE_V3964"
   184|   182|  omcc encrypt on
   185|   183|  tcont 1 dba-profile-id 10
   186|   184|  gem add 964 eth tcont 0 encrypt on
   187|   185|  gem mapping 964 0 vlan 3964
   188|   186|  commit
   189|   187|  quit
   190|   188|#
   191|   189|[device-config]
   192|   190|  <device-config>
   193|   191| board add standby sub0 CPCA
   194|   192| system hardware-recovery disable serial-link
   195|   193|#
   196|   194|[public-config]
   197|   195|  <public-config>
   198|   196| monitor uplink-port traffic port 0/3/0
   199|   197| monitor uplink-port traffic port 0/3/1
   200|   198| monitor uplink-port traffic port 0/3/2
   201|   199| monitor uplink-port traffic port 0/3/3
   202|   200| monitor uplink-port traffic port 0/4/0
   203|   201| monitor uplink-port traffic port 0/4/1
   204|   202| monitor uplink-port traffic port 0/4/2
   205|   203| monitor uplink-port traffic port 0/4/3
   206|   204| sysman service telnet disable
   207|   205| sysman service dhcp-relay enable
   208|   206| sysman service dhcpv6-relay enable
   209|   207|#
   210|   208|[vlan-config]
   211|   209|  <vlan-config>
   212|   210| vlan 21 smart
   213|   211| vlan 170 to 171 smart
   214|   212| vlan 173 smart
   215|   213| vlan 3103 smart
   216|   214| vlan 3105 smart
   217|   215| vlan 3107 to 3108 smart
   218|   216| vlan 3256 smart
   219|   217| vlan 3261 smart
   220|   218| vlan 3341 smart
   221|   219| vlan 3540 smart
   222|   220| vlan 3964 smart
   223|   221| vlan desc 21 description "VLAN21_POP17_OLT1_PPPOE_SCHOSSL"
   224|   222| vlan desc 170 description "VLAN170_POP17_OLT1_GERENCIA"
   225|   223| vlan desc 171 description "VLAN171_POP17_OLT1_PPPOE_SCHOSSL"
   226|   224| vlan desc 173 description "VLAN173_POP17_OLT1_PPPOE_CYBER"
   227|   225| vlan desc 3103 description "VLAN3103_CAMERAS"
   228|   226| vlan desc 3105 description "VLAN3105_CAMERAS_SSP"
   229|   227| vlan desc 3107 description "VLAN3107_CAMERAS_POA_MAIS_SEG"
   230|   228| vlan desc 3108 description "VLAN3108_CAMERAS_POA_MAIS_SEG"
   231|   229| vlan desc 3256 description "VLAN_3256_TRANSP_TELIUM_DIVERSOS"
   232|   230| vlan desc 3261 description "VLAN_3261_PROV_VALESAT"
   233|   231| vlan desc 3341 description "VLAN_3341_TRANSP_L2_EQT"
   234|   232| vlan desc 3540 description "VLAN_3540_MEDIANET"
   235|   233| vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
   236|   234| port vlan 21 0/3 0
   237|   235| port vlan 21 0/3 1
   238|   236| port vlan 21 0/3 2
   239|   237| port vlan 21 0/3 3
   240|   238| port vlan 170 to 171 0/3 0
   241|   239| port vlan 170 to 171 0/3 1
   242|   240| port vlan 170 to 171 0/3 2
   243|   241| port vlan 170 to 171 0/3 3
   244|   242| port vlan 173 0/3 0
   245|   243| port vlan 173 0/3 1
   246|   244| port vlan 173 0/3 2
   247|   245| port vlan 173 0/3 3
   248|   246| port vlan 3103 0/3 0
   249|   247| port vlan 3103 0/3 1
   250|   248| port vlan 3103 0/3 2
   251|   249| port vlan 3103 0/3 3
   252|   250| port vlan 3105 0/3 0
   253|   251| port vlan 3105 0/3 1
   254|   252| port vlan 3105 0/3 2
   255|   253| port vlan 3105 0/3 3
   256|   254| port vlan 3107 to 3108 0/3 0
   257|   255| port vlan 3107 to 3108 0/3 1
   258|   256| port vlan 3107 to 3108 0/3 2
   259|   257| port vlan 3107 to 3108 0/3 3
   260|   258| port vlan 3256 0/3 0
   261|   259| port vlan 3256 0/3 1
   262|   260| port vlan 3256 0/3 2
   263|   261| port vlan 3256 0/3 3
   264|   262| port vlan 3261 0/3 0
   265|   263| port vlan 3261 0/3 1
   266|   264| port vlan 3261 0/3 2
   267|   265| port vlan 3261 0/3 3
   268|   266| port vlan 3341 0/3 0
   269|   267| port vlan 3341 0/3 1
   270|   268| port vlan 3341 0/3 2
   271|   269| port vlan 3540 0/3 0
   272|   270| port vlan 3540 0/3 1
   273|   271| port vlan 3540 0/3 2
   274|   272| port vlan 3964 0/3 0
   275|   273| port vlan 3964 0/3 1
   276|   274| port vlan 3964 0/3 2
   277|   275| port vlan 3964 0/3 3
   278|   276|#
   279|   277|[mpu]
   280|   278|  <mpu-0/3>
   281|   279|interface mpu 0/3
   282|   280| auto-neg 0 disable
   283|   281| speed 0 10000
   284|   282| auto-neg 1 disable
   285|   283| speed 1 10000
   286|   284| auto-neg 2 enable
   287|   285| speed 2 1000
   288|   286| auto-neg 3 enable
   289|   287| speed 3 1000
   290|   288|#
   291|   289|  <mpu-0/4>
   292|   290|interface mpu 0/4
   293|   291| auto-neg 0 disable
   294|   292| speed 0 10000
   295|   293| auto-neg 1 disable
   296|   294| speed 1 10000
   297|   295| auto-neg 2 enable
   298|   296| speed 2 1000
   299|   297| auto-neg 3 enable
   300|   298| speed 3 1000
   301|   299|#
   302|   300|[gpon]
   303|   301|  <gpon-0/1>
   304|   302| interface gpon 0/1
   305|   303| port 0 ont-auto-find enable
   306|   304| port 1 ont-auto-find enable
   307|   305| port 2 ont-auto-find enable
   308|   306| port 3 ont-auto-find enable
   309|   307| port 4 ont-auto-find enable
   310|   308| port 5 ont-auto-find enable
   311|   309| port 6 ont-auto-find enable
   312|   310| port 7 ont-auto-find enable
   313|   311| port 8 ont-auto-find enable
   314|   312| port 9 ont-auto-find enable
   315|   313| port 10 ont-auto-find enable
   316|   314| port 11 ont-auto-find enable
   317|   315| port 12 ont-auto-find enable
   318|   316| port 13 ont-auto-find enable
   319|   317| port 14 ont-auto-find enable
   320|   318| port 15 ont-auto-find enable
   321|   319| ont add 0 0 sn-auth "485754431D6BF99B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   322|   320| ont add 0 1 sn-auth "485754431D29599B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   323|   321| ont add 0 2 sn-auth "485754431DE5369B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   324|   322| ont add 0 3 sn-auth "485754431D9FF59B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   325|   323| ont add 0 4 sn-auth "485754431D54129B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   326|   324| ont add 0 5 sn-auth "485754431D5DE49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   327|   325| ont add 0 6 sn-auth "485754431DE8089B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   328|   326| ont add 0 7 sn-auth "485754431D425A9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   329|   327| ont add 0 8 sn-auth "485754431D9ED19B" omci ont-lineprofile-id 3341 ont-srvprofile-id 3341 desc "ONT_HUAWEI"
   330|   328| ont add 0 10 sn-auth "485754434B93199C" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
   331|   329| ont add 9 0 sn-auth "485754431D69839B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   332|   330| ont add 9 1 sn-auth "495442533272E734" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "473"
   333|   331| ont add 9 2 sn-auth "485754431DDEFA9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   334|   332| ont add 9 3 sn-auth "495442533272DDCC" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "479"
   335|   333| ont add 9 4 sn-auth "495442533271C789" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "491"
   336|   334| ont add 9 5 sn-auth "495442533271C787" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "477"
   337|   335| ont add 9 6 sn-auth "495442533272E722" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "493"
   338|   336| ont add 9 7 sn-auth "495442533272E736" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "475"
   339|   337| ont add 9 8 sn-auth "495442533272E73C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "485"
   340|   338| ont add 9 9 sn-auth "52434D47199880E7" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "483"
   341|   339| ont add 9 10 sn-auth "485754431D0EB59B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   342|   340| ont add 9 11 sn-auth "485754431D0BDB9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   343|   341| ont add 9 12 sn-auth "485754431DDD019B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   344|   342| ont add 9 13 sn-auth "485754431D303D9B" omci ont-lineprofile-id 3261 ont-srvprofile-id 3261 desc "11"
   345|   343| ont add 9 14 sn-auth "485754431D29EC9B" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
   346|   344| ont add 9 15 sn-auth "485754431DBE3B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   347|   345| ont add 9 16 sn-auth "485754431D62439B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   348|   346| ont add 9 17 sn-auth "485754431DB99C9B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   349|   347| ont add 9 18 sn-auth "485754431D0E649B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   350|   348| ont add 9 19 sn-auth "485754431DA8319B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   351|   349| ont add 9 20 sn-auth "48575443A1C375B1" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
   352|   350| ont add 9 21 sn-auth "48575443AD77FD9A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   353|   351| ont add 9 22 sn-auth "485754431DFC139B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   354|   352| ont add 9 23 sn-auth "485754431DFC2C9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   355|   353| ont add 9 24 sn-auth "48575443B414D09E" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "nick_eventos_oab"
   356|   354| ont add 9 25 sn-auth "485754431D48DC9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   357|   355| ont add 9 26 sn-auth "48575443AD79059A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   358|   356| ont add 9 27 sn-auth "485754431DBB119B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   359|   357| ont add 10 0 sn-auth "4954425332576545" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "451"
   360|   358| ont add 10 1 sn-auth "44443732E606E938" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "447"
   361|   359| ont add 10 2 sn-auth "48575443AD90E39A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   362|   360| ont add 10 3 sn-auth "485754431D886A9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   363|   361| ont add 10 4 sn-auth "485754431DC4269B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   364|   362| ont add 10 5 sn-auth "52434D4719987EBB" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "453"
   365|   363| ont add 10 6 sn-auth "48575443F5E7B4AB" omci ont-lineprofile-id 171 ont-srvprofile-id 171 desc "16959_mercadospinelli_teste_a570"
   366|   364| ont add 10 7 sn-auth "52434D471998817E" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "455"
   367|   365| ont add 10 8 sn-auth "485754431D5DF29B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "457"
   368|   366| ont add 10 9 sn-auth "52434D47199882D4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "459"
   369|   367| ont add 10 10 sn-auth "485754431DFC809B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   370|   368| ont add 10 11 sn-auth "485754434B8E5A9C" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   371|   369| ont add 10 12 sn-auth "52434D4719988829" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   372|   370| ont add 10 13 sn-auth "485754431D823E9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   373|   371| ont add 10 14 sn-auth "52434D473A602627" omci ont-lineprofile-id 21 ont-srvprofile-id 21 desc "6175_lairrosina_2p_47ba"
   374|   372| ont add 10 15 sn-auth "495442533272E738" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "463"
   375|   373| ont add 10 16 sn-auth "495442533272E73A" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "461"
   376|   374| ont add 10 17 sn-auth "52434D4719988349" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "465"
   377|   375| ont add 10 18 sn-auth "52434D471998827C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "467"
   378|   376| ont add 10 19 sn-auth "52434D47199880C1" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "469"
   379|   377| ont add 10 20 sn-auth "485754431DEAF79B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   380|   378| ont add 10 21 sn-auth "46535454B81CEB0A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   381|   379| ont add 10 22 sn-auth "485754431D4D889B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   382|   380| ont add 10 23 sn-auth "485754431DBA399B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   383|   381| ont add 10 24 sn-auth "485754431D6C259B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "579"
   384|   382| ont add 10 25 sn-auth "485754431DB1B79B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   385|   383| ont add 10 26 sn-auth "485754431DEF459B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   386|   384| ont add 10 27 sn-auth "485754431DA02D9B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "637"
   387|   385| ont add 10 28 sn-auth "485754431DDC859B" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
   388|   386| ont add 10 29 sn-auth "485754431DC2D49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   389|   387| ont add 10 30 sn-auth "46535454B81CFF03" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   390|   388| ont port native-vlan 0 0 eth 1 vlan 3107 priority 0
   391|   389| ont port native-vlan 0 1 eth 1 vlan 3107 priority 0
   392|   390| ont port native-vlan 0 2 eth 1 vlan 3964 priority 0
   393|   391| ont port native-vlan 0 2 eth 2 vlan 3964 priority 0
   394|   392| ont port native-vlan 0 3 eth 1 vlan 3964 priority 0
   395|   393| ont port native-vlan 0 3 eth 2 vlan 3964 priority 0
   396|   394| ont port native-vlan 0 4 eth 1 vlan 3964 priority 0
   397|   395| ont port native-vlan 0 4 eth 2 vlan 3964 priority 0
   398|   396| ont port native-vlan 0 5 eth 1 vlan 3107 priority 0
   399|   397| ont port native-vlan 0 5 eth 2 vlan 3107 priority 0
   400|   398| ont port native-vlan 0 6 eth 1 vlan 3964 priority 0
   401|   399| ont port native-vlan 0 6 eth 2 vlan 3964 priority 0
   402|   400| ont port native-vlan 0 7 eth 1 vlan 3107 priority 0
   403|   401| ont port native-vlan 0 7 eth 2 vlan 3107 priority 0
   404|   402| ont port native-vlan 0 8 eth 1 vlan 3341 priority 0
   405|   403| ont port native-vlan 0 8 eth 2 vlan 3341 priority 0
   406|   404| ont port native-vlan 0 10 eth 1 vlan 3540 priority 0
   407|   405| ont port native-vlan 9 0 eth 1 vlan 3256 priority 0
   408|   406| ont port native-vlan 9 1 eth 1 vlan 3105 priority 0
   409|   407| ont port native-vlan 9 2 eth 1 vlan 3964 priority 0
   410|   408| ont port native-vlan 9 2 eth 2 vlan 3964 priority 0
   411|   409| ont port native-vlan 9 3 eth 1 vlan 3105 priority 0
   412|   410| ont port native-vlan 9 4 eth 1 vlan 3105 priority 0
   413|   411| ont port native-vlan 9 5 eth 1 vlan 3105 priority 0
   414|   412| ont port native-vlan 9 6 eth 1 vlan 3105 priority 0
   415|   413| ont port native-vlan 9 7 eth 1 vlan 3105 priority 0
   416|   414| ont port native-vlan 9 8 eth 1 vlan 3105 priority 0
   417|   415| ont port native-vlan 9 9 eth 1 vlan 3105 priority 0
   418|   416| ont port native-vlan 9 10 eth 1 vlan 3256 priority 0
   419|   417| ont port native-vlan 9 11 eth 1 vlan 3107 priority 0
   420|   418| ont port native-vlan 9 11 eth 2 vlan 3107 priority 0
   421|   419| ont port native-vlan 9 12 eth 1 vlan 3107 priority 0
   422|   420| ont port native-vlan 9 12 eth 2 vlan 3107 priority 0
   423|   421| ont port native-vlan 9 13 eth 1 vlan 3261 priority 0
   424|   422| ont port native-vlan 9 14 eth 1 vlan 173 priority 0
   425|   423| ont port native-vlan 9 15 eth 1 vlan 3107 priority 0
   426|   424| ont port native-vlan 9 16 eth 1 vlan 3107 priority 0
   427|   425| ont port native-vlan 9 16 eth 2 vlan 3107 priority 0
   428|   426| ont port native-vlan 9 17 eth 1 vlan 3256 priority 0
   429|   427| ont port native-vlan 9 18 eth 1 vlan 3964 priority 0
   430|   428| ont port native-vlan 9 18 eth 2 vlan 3964 priority 0
   431|   429| ont port native-vlan 9 19 eth 1 vlan 3964 priority 0
   432|   430| ont port native-vlan 9 19 eth 2 vlan 3964 priority 0
   433|   431| ont port native-vlan 9 20 eth 1 vlan 173 priority 0
   434|   432| ont port native-vlan 9 21 eth 1 vlan 3107 priority 0
   435|   433| ont port native-vlan 9 21 eth 2 vlan 3107 priority 0
   436|   434| ont port native-vlan 9 22 eth 1 vlan 3107 priority 0
   437|   435| ont port native-vlan 9 22 eth 2 vlan 3107 priority 0
   438|   436| ont port native-vlan 9 23 eth 1 vlan 3107 priority 0
   439|   437| ont port native-vlan 9 23 eth 2 vlan 3107 priority 0
   440|   438| ont port native-vlan 9 24 eth 1 vlan 173 priority 0
   441|   439| ont port native-vlan 9 25 eth 1 vlan 3107 priority 0
   442|   440| ont port native-vlan 9 25 eth 2 vlan 3107 priority 0
   443|   441| ont port native-vlan 9 26 eth 1 vlan 3107 priority 0
   444|   442| ont port native-vlan 9 26 eth 2 vlan 3107 priority 0
   445|   443| ont port native-vlan 9 27 eth 1 vlan 3107 priority 0
   446|   444| ont port native-vlan 9 27 eth 2 vlan 3107 priority 0
   447|   445| ont port native-vlan 10 0 eth 1 vlan 3105 priority 0
   448|   446| ont port native-vlan 10 1 eth 1 vlan 3105 priority 0
   449|   447| ont port native-vlan 10 2 eth 1 vlan 3107 priority 0
   450|   448| ont port native-vlan 10 2 eth 2 vlan 3107 priority 0
   451|   449| ont port native-vlan 10 3 eth 1 vlan 3964 priority 0
   452|   450| ont port native-vlan 10 3 eth 2 vlan 3964 priority 0
   453|   451| ont port native-vlan 10 4 eth 1 vlan 3107 priority 0
   454|   452| ont port native-vlan 10 4 eth 2 vlan 3107 priority 0
   455|   453| ont port native-vlan 10 5 eth 1 vlan 3105 priority 0
   456|   454| ont port native-vlan 10 7 eth 1 vlan 3105 priority 0
   457|   455| ont port native-vlan 10 8 eth 1 vlan 3105 priority 0
   458|   456| ont port native-vlan 10 9 eth 1 vlan 3105 priority 0
   459|   457| ont port native-vlan 10 10 eth 1 vlan 3256 priority 0
   460|   458| ont port native-vlan 10 11 eth 1 vlan 3964 priority 0
   461|   459| ont port native-vlan 10 11 eth 2 vlan 3964 priority 0
   462|   460| ont port native-vlan 10 12 eth 1 vlan 3256 priority 0
   463|   461| ont port native-vlan 10 13 eth 1 vlan 3964 priority 0
   464|   462| ont port native-vlan 10 13 eth 2 vlan 3964 priority 0
   465|   463| ont port native-vlan 10 14 eth 1 vlan 21 priority 0
   466|   464| ont port native-vlan 10 15 eth 1 vlan 3105 priority 0
   467|   465| ont port native-vlan 10 16 eth 1 vlan 3105 priority 0
   468|   466| ont port native-vlan 10 17 eth 1 vlan 3105 priority 0
   469|   467| ont port native-vlan 10 18 eth 1 vlan 3105 priority 0
   470|   468| ont port native-vlan 10 19 eth 1 vlan 3105 priority 0
   471|   469| ont port native-vlan 10 20 eth 1 vlan 3256 priority 0
   472|   470| ont port native-vlan 10 21 eth 1 vlan 3107 priority 0
   473|   471| ont port native-vlan 10 21 eth 2 vlan 3107 priority 0
   474|   472| ont port native-vlan 10 22 eth 1 vlan 3256 priority 0
   475|   473| ont port native-vlan 10 23 eth 1 vlan 3964 priority 0
   476|   474| ont port native-vlan 10 23 eth 2 vlan 3964 priority 0
   477|   475| ont port native-vlan 10 24 eth 1 vlan 3105 priority 0
   478|   476| ont port native-vlan 10 25 eth 1 vlan 3107 priority 0
   479|   477| ont port native-vlan 10 25 eth 2 vlan 3107 priority 0
   480|   478| ont port native-vlan 10 26 eth 1 vlan 3107 priority 0
   481|   479| ont port native-vlan 10 26 eth 2 vlan 3107 priority 0
   482|   480| ont port native-vlan 10 27 eth 1 vlan 3105 priority 0
   483|   481| ont port native-vlan 10 28 eth 1 vlan 173 priority 0
   484|   482| ont port native-vlan 10 29 eth 1 vlan 3107 priority 0
   485|   483| ont port native-vlan 10 29 eth 2 vlan 3107 priority 0
   486|   484| ont port native-vlan 10 30 eth 1 vlan 3107 priority 0
   487|   485| ont port native-vlan 10 30 eth 2 vlan 3107 priority 0
   488|   486|#
   489|   487|[platform-config]
   490|   488|  <platform-config>
   491|   489| autosave interval on
   492|   490| autosave time off
   493|   491| autosave interval 1442
   494|   492| autosave time 00:00:00
   495|   493| autosave interval configuration 480
   496|   494|#
   497|   495|[emu-config]
   498|   496|  <emu-config>
   499|   497| emu add 0 fan 0 1  "H901FMSA"
   500|   498|#
   501|   499|[bbs-config]
   502|   500|  <bbs-config>
   503|   501| service-port 0 vlan 3107 gpon 0/1/0 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
   504|   502| service-port 1 vlan 3540 gpon 0/1/0 ont 10 gemport 540 multi-service user-vlan 3540 tag-transform translate
   505|   503| service-port 2 vlan 3107 gpon 0/1/0 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
   506|   504| service-port 3 vlan 3964 gpon 0/1/0 ont 2 gemport 964 multi-service user-vlan 3964 tag-transform translate
   507|   505| service-port 4 vlan 3964 gpon 0/1/0 ont 3 gemport 964 multi-service user-vlan 3964 tag-transform translate
   508|   506| service-port 5 vlan 3964 gpon 0/1/0 ont 4 gemport 964 multi-service user-vlan 3964 tag-transform translate
   509|   507| service-port 6 vlan 3107 gpon 0/1/9 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   510|   508| service-port 7 vlan 3105 gpon 0/1/10 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
   511|   509| service-port 8 vlan 3107 gpon 0/1/9 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   512|   510| service-port 9 vlan 3107 gpon 0/1/9 ont 27 gemport 107 multi-service user-vlan 3107 tag-transform translate
   513|   511| service-port 10 vlan 3105 gpon 0/1/10 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   514|   512| service-port 12 vlan 3105 gpon 0/1/10 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
   515|   513| service-port 14 vlan 3105 gpon 0/1/10 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   516|   514| service-port 21 vlan 3256 gpon 0/1/10 ont 12 gemport 256 multi-service user-vlan 3256 tag-transform translate
   517|   515| service-port 25 vlan 21 gpon 0/1/10 ont 14 gemport 21 multi-service user-vlan 21 tag-transform translate
   518|   516| service-port 26 vlan 3105 gpon 0/1/10 ont 15 gemport 105 multi-service user-vlan 3105 tag-transform translate
   519|   517| service-port 27 vlan 3105 gpon 0/1/10 ont 16 gemport 105 multi-service user-vlan 3105 tag-transform translate
   520|   518| service-port 28 vlan 3105 gpon 0/1/10 ont 17 gemport 105 multi-service user-vlan 3105 tag-transform translate
   521|   519| service-port 29 vlan 3105 gpon 0/1/10 ont 18 gemport 105 multi-service user-vlan 3105 tag-transform translate
   522|   520| service-port 30 vlan 3105 gpon 0/1/10 ont 19 gemport 105 multi-service user-vlan 3105 tag-transform translate
   523|   521| service-port 31 vlan 3964 gpon 0/1/10 ont 3 gemport 964 multi-service user-vlan 3964 tag-transform translate
   524|   522| service-port 32 vlan 3964 gpon 0/1/10 ont 13 gemport 964 multi-service user-vlan 3964 tag-transform translate
   525|   523| service-port 33 vlan 3256 gpon 0/1/10 ont 20 gemport 256 multi-service user-vlan 3256 tag-transform translate
   526|   524| service-port 36 vlan 3964 gpon 0/1/9 ont 2 gemport 964 multi-service user-vlan 3964 tag-transform translate
   527|   525| service-port 37 vlan 3105 gpon 0/1/9 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
   528|   526| service-port 39 vlan 3105 gpon 0/1/9 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
   529|   527| service-port 40 vlan 3105 gpon 0/1/9 ont 4 gemport 105 multi-service user-vlan 3105 tag-transform translate
   530|   528| service-port 41 vlan 3105 gpon 0/1/9 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   531|   529| service-port 42 vlan 3105 gpon 0/1/9 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
   532|   530| service-port 43 vlan 3105 gpon 0/1/9 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
   533|   531| service-port 44 vlan 3105 gpon 0/1/9 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
   534|   532| service-port 45 vlan 3105 gpon 0/1/9 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   535|   533| service-port 46 vlan 3256 gpon 0/1/9 ont 0 gemport 256 multi-service user-vlan 3256 tag-transform translate
   536|   534| service-port 48 vlan 3256 gpon 0/1/9 ont 10 gemport 256 multi-service user-vlan 3256 tag-transform translate
   537|   535| service-port 49 vlan 3105 gpon 0/1/10 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
   538|   536| service-port 52 vlan 3256 gpon 0/1/10 ont 10 gemport 256 multi-service user-vlan 3256 tag-transform translate
   539|   537| service-port 54 vlan 3261 gpon 0/1/9 ont 13 gemport 261 multi-service user-vlan 3261 tag-transform translate
   540|   538| service-port 56 vlan 3256 gpon 0/1/10 ont 22 gemport 256 multi-service user-vlan 3256 tag-transform translate
   541|   539| service-port 57 vlan 173 gpon 0/1/9 ont 14 gemport 173 multi-service user-vlan 173 tag-transform translate
   542|   540| service-port 58 vlan 3107 gpon 0/1/9 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
   543|   541| service-port 59 vlan 3964 gpon 0/1/10 ont 23 gemport 964 multi-service user-vlan 3964 tag-transform translate
   544|   542| service-port 63 vlan 3964 gpon 0/1/9 ont 18 gemport 964 multi-service user-vlan 3964 tag-transform translate
   545|   543| service-port 64 vlan 3256 gpon 0/1/9 ont 17 gemport 256 multi-service user-vlan 3256 tag-transform translate
   546|   544| service-port 65 vlan 3964 gpon 0/1/9 ont 19 gemport 964 multi-service user-vlan 3964 tag-transform translate
   547|   545| service-port 66 vlan 3107 gpon 0/1/9 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
   548|   546| service-port 70 vlan 3107 gpon 0/1/10 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   549|   547| service-port 71 vlan 3107 gpon 0/1/0 ont 5 gemport 107 multi-service user-vlan 3107 tag-transform translate
   550|   548| service-port 72 vlan 3964 gpon 0/1/0 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
   551|   549| service-port 73 vlan 3107 gpon 0/1/0 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
   552|   550| service-port 75 vlan 3105 gpon 0/1/10 ont 24 gemport 105 multi-service user-vlan 3105 tag-transform translate
   553|   551| service-port 76 vlan 3107 gpon 0/1/10 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   554|   552| service-port 77 vlan 3105 gpon 0/1/10 ont 27 gemport 105 multi-service user-vlan 3105 tag-transform translate
   555|   553| service-port 79 vlan 3341 gpon 0/1/0 ont 8 gemport 341 multi-service user-vlan 3341 tag-transform translate
   556|   554| service-port 81 vlan 173 gpon 0/1/10 ont 28 gemport 173 multi-service user-vlan 173 tag-transform translate
   557|   555| service-port 83 vlan 173 gpon 0/1/9 ont 20 gemport 173 multi-service user-vlan 173 tag-transform translate
   558|   556| service-port 85 vlan 3105 gpon 0/1/10 ont 0 gemport 105 multi-service user-vlan 3105 tag-transform translate
   559|   557| service-port 86 vlan 3107 gpon 0/1/10 ont 29 gemport 107 multi-service user-vlan 3107 tag-transform translate
   560|   558| service-port 88 vlan 3107 gpon 0/1/9 ont 22 gemport 107 multi-service user-vlan 3107 tag-transform translate
   561|   559| service-port 89 vlan 3107 gpon 0/1/9 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
   562|   560| service-port 94 vlan 3107 gpon 0/1/9 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
   563|   561| service-port 97 vlan 171 gpon 0/1/10 ont 6 gemport 171 multi-service user-vlan 171 tag-transform translate
   564|   562| service-port 99 vlan 3107 gpon 0/1/9 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
   565|   563| service-port 100 vlan 3964 gpon 0/1/10 ont 11 gemport 964 multi-service user-vlan 3964 tag-transform translate
   566|   564| service-port 101 vlan 173 gpon 0/1/9 ont 24 gemport 173 multi-service user-vlan 173 tag-transform translate
   567|   565| service-port 102 vlan 3107 gpon 0/1/10 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   568|   566| service-port 103 vlan 3107 gpon 0/1/10 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
   569|   567| service-port 104 vlan 3107 gpon 0/1/10 ont 30 gemport 107 multi-service user-vlan 3107 tag-transform translate
   570|   568| service-port 106 vlan 3107 gpon 0/1/9 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
   571|   569| service-port 107 vlan 3107 gpon 0/1/10 ont 4 gemport 107 multi-service user-vlan 3107 tag-transform translate
   572|   570| overload-aware mac-address upper-threshold 50 lower-threshold 45
   573|   571| overload-aware mac-address disable
   574|   572| overload-aware ip route hardware disable
   575|   573| monitor uplink-port non-unicast port 0/3/0
   576|   574| monitor uplink-port non-unicast port 0/3/1
   577|   575| monitor uplink-port non-unicast port 0/3/2
   578|   576| monitor uplink-port non-unicast port 0/3/3
   579|   577| monitor uplink-port non-unicast port 0/4/0
   580|   578| monitor uplink-port non-unicast port 0/4/1
   581|   579| monitor uplink-port non-unicast port 0/4/2
   582|   580| monitor uplink-port non-unicast port 0/4/3
   583|   581|#
   584|   582|[abs-config]
   585|   583|  <abs-config>
   586|   584| monitor uplink-port pppoe port 0/3/0
   587|   585| monitor uplink-port pppoe port 0/3/1
   588|   586| monitor uplink-port pppoe port 0/3/2
   589|   587| monitor uplink-port pppoe port 0/3/3
   590|   588| monitor uplink-port pppoe port 0/4/0
   591|   589| monitor uplink-port pppoe port 0/4/1
   592|   590| monitor uplink-port pppoe port 0/4/2
   593|   591| monitor uplink-port pppoe port 0/4/3
   594|   592|#
   595|   593|[security-config]
   596|   594|  <security-config>
   597|   595| security anti-illegal-hoplimit-nd disable
   598|   596|#
   599|   597|[config]
   600|   598|  <config>
   601|   599| security anti-ipattack disable
   602|   600| security anti-icmpattack disable
   603|   601| security anti-ipv6attack disable
   604|   602| security anti-icmpv6attack disable
   605|   603|#
   606|   604|[ip-tunnel-profile]
   607|   605|  <ip-tunnel-profile>
   608|   606| ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
   609|   607|#
   610|   608|set neid 0x869745
   611|   609|#
   612|   610|[aaa]
   613|   611|  <aaa>
   614|   612|aaa
   615|   613| #
   616|   614| authentication-scheme "default"
   617|   615| #
   618|   616| authorization-scheme "default"
   619|   617| #
   620|   618| accounting-scheme "default"
   621|   619| #
   622|   620| domain "default"
   623|   621|#
   624|   622|[Interface]
   625|   623|  <Vlanif170>
   626|   624|interface Vlanif170
   627|   625| ip address 10.244.17.254 255.255.255.252
   628|   626|#
   629|   627|  <MEth0>
   630|   628|interface MEth0
   631|   629| ip address 10.11.104.2 255.255.255.0
   632|   630|#
   633|   631|  <NULL0>
   634|   632|interface NULL0
   635|   633|#
   636|   634|undo dcn
   637|   635|#
   638|   636|[route-static]
   639|   637|  <route-static>
   640|   638|ip route-static 0.0.0.0 0.0.0.0 10.244.17.253
   641|   639|#
   642|   640|[snmp]
   643|   641|  <snmp>
   644|   642|snmp-agent local-engineid 800007DB03C8A776869746
   645|   643|snmp-agent community read cipher "%+%##!!!!!!!!!"!!!!"!!!!(!!!!7LTnVOK_g:Db*h7:55199K,w>[7^9;Ll;2K3]G!I2jp5!!!!!!1!!!!))n^QE@hw8*cl/T*5G6+%+%#"
   646|   644|#
   647|   645|[post-system]
   648|   646|  <post-system>
   649|   647| ssh user "radiusnet" authentication-type password
   650|   648| ssh user "root" authentication-type password
   651|   649| ssh user "suporte" authentication-type password
   652|   650| ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   653|   651| ssh server hmac sha2_512 sha2_256 sha1
   654|   652| ssh server key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521 sm2_kep
   655|   653| ssh server dh-exchange min-len 2048
   656|   654| ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
   657|   655| ntp-service server disable
   658|   656| ntp-service ipv6 server disable
   659|   657| ntp-service server source-interface all disable
   660|   658| ntp-service ipv6 server source-interface all disable
   661|   659| ntp-service unicast-server 200.160.0.8
   662|   660| ntp-service unicast-server 200.189.40.8
   663|   661| ssh client publickey rsa rsa_sha2_256 rsa_sha2_512 ed25519
   664|   662| ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   665|   663| ssh client hmac sha2_512 sha2_256 sha1
   666|   664| ssh client key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521 sm2_kep
   667|   665|#
   668|   666|[source-interface]
   669|   667|  <source-interface>
   670|   668| sysman server source ssh any-interface
   671|   669| sysman server source ssh ipv6 ::
   672|   670| sysman server source snmp any-interface
   673|   671| sysman server source snmp ipv6 ::
   674|   672| sysman server source netconf any-interface
   675|   673| sysman server source netconf ipv6 ::
   676|   674| sysman server source trace any-interface
   677|   675| sysman server source telnet any-interface
   678|   676| sysman server source telnet ipv6 ::
   679|   677| sysman server source ipdr any-interface
   680|   678|#
   681|   679|return
   682|   680|```
   683|   681|
```

## 🗒️ Observações
- {{notes}}
