[[POP17_OLT1]]

     1|```yaml
     2|POP17_OLT1_ELEA#display current-configuration
     3|{ <cr>|include-default<K>|interface<K>|ont<K>|port<K>|section<K>|service-port<K>||<K> }:
     4|
     5|  Command:
     6|          display current-configuration
     7|[Active: H901MPSA; Standby: H901MPSA]
     8|[Patch Info: SPH306]
     9|[MA5800V100R021: 6611]
    10|#
    11|timezone GMT- 03:00
    12|#
    13|[pre-config]
    14|  <pre-config>
    15| board add 0/0 H901PISA
    16| board add 0/1 H901GPHF
    17|#
    18|[sysmode]
    19|  <sysmode>
    20| switch vdsl mode to tr129
    21| xpon mode switch-to profile-mode
    22| sysmode end
    23|#
    24|[global-config]
    25|  <global-config>
    26| sysname POP17_OLT1_ELEA
    27| terminal user-profile name suporte 0 0 00:00:00 00:00:00
    28| terminal user name buildrun_new_password root *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$* 7 0000:00:00:00:00:00 0000:00:00:00:00:00 root 1 first-login-info 0 self-changed-password 1 "-----"
    29| terminal user name buildrun_new_password radiusnet *~uc$3b$l(vW3i7bgUnjV&M[Z[R($I6%KQ=eQO+)}ArO$^B0R(b)<7~_ry74+%n%NX3|:$* 0 2000:01:07:21:40:08 2000:01:07:21:42:27 root 2 first-login-info 0 self-changed-password 1 "20"
    30| terminal user name buildrun_new_password suporte *~ub$3b$iT6A&rFGz;D:afIkqJ'G$S+DfNEXY:8"\B+N|F+SNhYj$'qel$P}GNzS(vXU+$* 0 2025:07:28:09:25:41 2025:07:28:09:26:41 suporte 3 first-login-info 0 self-changed-password 1 "-----"
    31| system modify logon password disable
    32| system user password security mode enhance
    33| system user password security-length 12
    34| terminal user name history_password radiusnet *~uc$1b${\_WFnOIy8$(<T>A8#SW:'*cX0V3gq7YTBQMx.s~F{WC<P)G|JP$*
    35| terminal user name history_password suporte *~ub$3b$qs<&RA-Vv6S,B38`.ar4$MHLGH)E7w6o~g"1"ZA6G98e$40_\y#64x`I(|1w*$*
    36| ssh client key-exchange sftp dh_group14_sha1 dh_group_exchange_sha1 dh_group_exchange_sha256 curve25519_sha256
    37| xpon ont optical-ddm quick-query disable
    38| dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
    39| dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
    40| ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
    41|  ont-port pots 1 eth 2
    42|  port vlan eth 1 transparent
    43|  port vlan eth 2 transparent
    44|  port vlan iphost translation 171 user-vlan 171
    45|  commit
    46| ont-srvprofile gpon profile-id 21 profile-name "SRVPROFILE_BRIDGE_21"
    47|  ont-port eth 1
    48|  port vlan eth 1 translation 21 user-vlan 21
    49|  commit
    50| ont-srvprofile gpon profile-id 171 profile-name "SRVPROFILE_BRIDGE_171"
    51|  ont-port eth 1
    52|  port vlan eth 1 translation 171 user-vlan 171
    53|  commit
    54| ont-srvprofile gpon profile-id 173 profile-name "SRVPROFILE_BRIDGE_173"
    55|  ont-port eth 1
    56|  port vlan eth 1 translation 173 user-vlan 173
    57|  commit
    58| ont-srvprofile gpon profile-id 3005 profile-name "SRVPROFILE_BRIDGE_V3005"
    59|  ont-port eth 1
    60|  port vlan eth 1 translation 3005 user-vlan 3005
    61|  commit
    62| ont-srvprofile gpon profile-id 3103 profile-name "SRVPROFILE_BRIDGE_3103"
    63|  ont-port eth 1
    64|  port vlan eth 1 translation 3103 user-vlan 3103
    65|  commit
    66| ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
    67|  ont-port eth 1
    68|  port vlan eth 1 translation 3105 user-vlan 3105
    69|  commit
    70| ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
    71|  ont-port eth 2
    72|  port vlan eth 1 translation 3107 user-vlan 3107
    73|  commit
    74| ont-srvprofile gpon profile-id 3108 profile-name "SRVPROFILE_BRIDGE_3108"
    75|  ont-port eth 1
    76|  port vlan eth 1 translation 3108 user-vlan 3108
    77|  commit
    78| ont-srvprofile gpon profile-id 3256 profile-name "SRVPROFILE_BRIDGE_V3256"
    79|  ont-port eth 1
    80|  port vlan eth 1 translation 3256 user-vlan 3256
    81|  commit
    82| ont-srvprofile gpon profile-id 3261 profile-name "SRVPROFILE_BRIDGE_V3261"
    83|  ont-port eth 1
    84|  port vlan eth 1 translation 3261 user-vlan 3261
    85|  commit
    86| ont-srvprofile gpon profile-id 3341 profile-name "SRVPROFILE_BRIDGE_V3341"
    87|  ont-port eth 2
    88|  port q-in-q eth 1 enable
    89|  commit
    90| ont-srvprofile gpon profile-id 3540 profile-name "SRVPROFILE_BRIDGE_3540"
    91|  ont-port eth 1
    92|  port vlan eth 1 translation 3540 user-vlan 3540
    93|  commit
    94| ont-srvprofile gpon profile-id 3964 profile-name "SRVPROFILE_BRIDGE_V3964"
    95|  ont-port eth 2
    96|  port q-in-q eth 1 enable
    97|  commit
    98| ont-lineprofile gpon profile-id 0 profile-name "line-profile_default_0"
    99|  omcc encrypt off
   100|  tcont 0 dba-profile-id 2
   101|  tcont 1 dba-profile-id 0
   102|  commit
   103|  quit
   104| ont-lineprofile gpon profile-id 21 profile-name "LINE_PROFILE_21"
   105|  omcc encrypt on
   106|  tcont 1 dba-profile-id 10
   107|  gem add 21 eth tcont 1 encrypt on
   108|  gem mapping 21 0 vlan 21
   109|  commit
   110|  quit
   111| ont-lineprofile gpon profile-id 171 profile-name "LINE_PROFILE_171"
   112|  omcc encrypt on
   113|  tcont 1 dba-profile-id 10
   114|  gem add 171 eth tcont 1 encrypt on
   115|  gem mapping 171 0 vlan 171
   116|  commit
   117|  quit
   118| ont-lineprofile gpon profile-id 173 profile-name "LINE_PROFILE_173"
   119|  omcc encrypt on
   120|  tcont 1 dba-profile-id 10
   121|  gem add 173 eth tcont 1 encrypt on
   122|  gem mapping 173 0 vlan 173
   123|  commit
   124|  quit
   125| ont-lineprofile gpon profile-id 3103 profile-name "LINE_PROFILE_3103"
   126|  omcc encrypt on
   127|  tcont 1 dba-profile-id 11
   128|  gem add 103 eth tcont 1 encrypt on
   129|  gem mapping 103 0 vlan 3103
   130|  commit
   131|  quit
   132| ont-lineprofile gpon profile-id 3105 profile-name "LINE_PROFILE_3105"
   133|  omcc encrypt on
   134|  tcont 1 dba-profile-id 11
   135|  gem add 105 eth tcont 1 encrypt on
   136|  gem mapping 105 0 vlan 3105
   137|  commit
   138|  quit
   139| ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
   140|  omcc encrypt on
   141|  tcont 1 dba-profile-id 11
   142|  gem add 107 eth tcont 1 encrypt on
   143|  gem mapping 107 0 vlan 3107
   144|  commit
   145|  quit
   146| ont-lineprofile gpon profile-id 3108 profile-name "LINE_PROFILE_3108"
   147|  omcc encrypt on
   148|  tcont 1 dba-profile-id 11
   149|  gem add 108 eth tcont 1 encrypt on
   150|  gem mapping 108 0 vlan 3108
   151|  commit
   152|  quit
   153| ont-lineprofile gpon profile-id 3256 profile-name "LINE_PROFILE_V3256"
   154|  omcc encrypt on
   155|  tcont 1 dba-profile-id 10
   156|  gem add 256 eth tcont 1 encrypt on
   157|  gem mapping 256 0 vlan 3256
   158|  commit
   159|  quit
   160| ont-lineprofile gpon profile-id 3261 profile-name "LINE_PROFILE_V3261"
   161|  omcc encrypt on
   162|  tcont 1 dba-profile-id 10
   163|  gem add 261 eth tcont 1 encrypt on
   164|  gem mapping 261 0 vlan 3261
   165|  commit
   166|  quit
   167| ont-lineprofile gpon profile-id 3341 profile-name "LINE_PROFILE_V3341"
   168|  omcc encrypt on
   169|  tcont 1 dba-profile-id 10
   170|  gem add 341 eth tcont 0 encrypt on
   171|  gem mapping 341 0 vlan 3341
   172|  commit
   173|  quit
   174| ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
   175|  omcc encrypt on
   176|  tcont 1 dba-profile-id 10
   177|  gem add 540 eth tcont 1 encrypt on
   178|  gem mapping 540 0 vlan 3540
   179|  commit
   180|  quit
   181| ont-lineprofile gpon profile-id 3964 profile-name "LINE_PROFILE_V3964"
   182|  omcc encrypt on
   183|  tcont 1 dba-profile-id 10
   184|  gem add 964 eth tcont 0 encrypt on
   185|  gem mapping 964 0 vlan 3964
   186|  commit
   187|  quit
   188|#
   189|[device-config]
   190|  <device-config>
   191| board add standby sub0 CPCA
   192| system hardware-recovery disable serial-link
   193|#
   194|[public-config]
   195|  <public-config>
   196| monitor uplink-port traffic port 0/3/0
   197| monitor uplink-port traffic port 0/3/1
   198| monitor uplink-port traffic port 0/3/2
   199| monitor uplink-port traffic port 0/3/3
   200| monitor uplink-port traffic port 0/4/0
   201| monitor uplink-port traffic port 0/4/1
   202| monitor uplink-port traffic port 0/4/2
   203| monitor uplink-port traffic port 0/4/3
   204| sysman service telnet disable
   205| sysman service dhcp-relay enable
   206| sysman service dhcpv6-relay enable
   207|#
   208|[vlan-config]
   209|  <vlan-config>
   210| vlan 21 smart
   211| vlan 170 to 171 smart
   212| vlan 173 smart
   213| vlan 3103 smart
   214| vlan 3105 smart
   215| vlan 3107 to 3108 smart
   216| vlan 3256 smart
   217| vlan 3261 smart
   218| vlan 3341 smart
   219| vlan 3540 smart
   220| vlan 3964 smart
   221| vlan desc 21 description "VLAN21_POP17_OLT1_PPPOE_SCHOSSL"
   222| vlan desc 170 description "VLAN170_POP17_OLT1_GERENCIA"
   223| vlan desc 171 description "VLAN171_POP17_OLT1_PPPOE_SCHOSSL"
   224| vlan desc 173 description "VLAN173_POP17_OLT1_PPPOE_CYBER"
   225| vlan desc 3103 description "VLAN3103_CAMERAS"
   226| vlan desc 3105 description "VLAN3105_CAMERAS_SSP"
   227| vlan desc 3107 description "VLAN3107_CAMERAS_POA_MAIS_SEG"
   228| vlan desc 3108 description "VLAN3108_CAMERAS_POA_MAIS_SEG"
   229| vlan desc 3256 description "VLAN_3256_TRANSP_TELIUM_DIVERSOS"
   230| vlan desc 3261 description "VLAN_3261_PROV_VALESAT"
   231| vlan desc 3341 description "VLAN_3341_TRANSP_L2_EQT"
   232| vlan desc 3540 description "VLAN_3540_MEDIANET"
   233| vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
   234| port vlan 21 0/3 0
   235| port vlan 21 0/3 1
   236| port vlan 21 0/3 2
   237| port vlan 21 0/3 3
   238| port vlan 170 to 171 0/3 0
   239| port vlan 170 to 171 0/3 1
   240| port vlan 170 to 171 0/3 2
   241| port vlan 170 to 171 0/3 3
   242| port vlan 173 0/3 0
   243| port vlan 173 0/3 1
   244| port vlan 173 0/3 2
   245| port vlan 173 0/3 3
   246| port vlan 3103 0/3 0
   247| port vlan 3103 0/3 1
   248| port vlan 3103 0/3 2
   249| port vlan 3103 0/3 3
   250| port vlan 3105 0/3 0
   251| port vlan 3105 0/3 1
   252| port vlan 3105 0/3 2
   253| port vlan 3105 0/3 3
   254| port vlan 3107 to 3108 0/3 0
   255| port vlan 3107 to 3108 0/3 1
   256| port vlan 3107 to 3108 0/3 2
   257| port vlan 3107 to 3108 0/3 3
   258| port vlan 3256 0/3 0
   259| port vlan 3256 0/3 1
   260| port vlan 3256 0/3 2
   261| port vlan 3256 0/3 3
   262| port vlan 3261 0/3 0
   263| port vlan 3261 0/3 1
   264| port vlan 3261 0/3 2
   265| port vlan 3261 0/3 3
   266| port vlan 3341 0/3 0
   267| port vlan 3341 0/3 1
   268| port vlan 3341 0/3 2
   269| port vlan 3540 0/3 0
   270| port vlan 3540 0/3 1
   271| port vlan 3540 0/3 2
   272| port vlan 3964 0/3 0
   273| port vlan 3964 0/3 1
   274| port vlan 3964 0/3 2
   275| port vlan 3964 0/3 3
   276|#
   277|[mpu]
   278|  <mpu-0/3>
   279|interface mpu 0/3
   280| auto-neg 0 disable
   281| speed 0 10000
   282| auto-neg 1 disable
   283| speed 1 10000
   284| auto-neg 2 enable
   285| speed 2 1000
   286| auto-neg 3 enable
   287| speed 3 1000
   288|#
   289|  <mpu-0/4>
   290|interface mpu 0/4
   291| auto-neg 0 disable
   292| speed 0 10000
   293| auto-neg 1 disable
   294| speed 1 10000
   295| auto-neg 2 enable
   296| speed 2 1000
   297| auto-neg 3 enable
   298| speed 3 1000
   299|#
   300|[gpon]
   301|  <gpon-0/1>
   302| interface gpon 0/1
   303| port 0 ont-auto-find enable
   304| port 1 ont-auto-find enable
   305| port 2 ont-auto-find enable
   306| port 3 ont-auto-find enable
   307| port 4 ont-auto-find enable
   308| port 5 ont-auto-find enable
   309| port 6 ont-auto-find enable
   310| port 7 ont-auto-find enable
   311| port 8 ont-auto-find enable
   312| port 9 ont-auto-find enable
   313| port 10 ont-auto-find enable
   314| port 11 ont-auto-find enable
   315| port 12 ont-auto-find enable
   316| port 13 ont-auto-find enable
   317| port 14 ont-auto-find enable
   318| port 15 ont-auto-find enable
   319| ont add 0 0 sn-auth "485754431D6BF99B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   320| ont add 0 1 sn-auth "485754431D29599B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   321| ont add 0 2 sn-auth "485754431DE5369B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   322| ont add 0 3 sn-auth "485754431D9FF59B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   323| ont add 0 4 sn-auth "485754431D54129B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   324| ont add 0 5 sn-auth "485754431D5DE49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   325| ont add 0 6 sn-auth "485754431DE8089B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   326| ont add 0 7 sn-auth "485754431D425A9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   327| ont add 0 8 sn-auth "485754431D9ED19B" omci ont-lineprofile-id 3341 ont-srvprofile-id 3341 desc "ONT_HUAWEI"
   328| ont add 0 10 sn-auth "485754434B93199C" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
   329| ont add 9 0 sn-auth "485754431D69839B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   330| ont add 9 1 sn-auth "495442533272E734" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "473"
   331| ont add 9 2 sn-auth "485754431DDEFA9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   332| ont add 9 3 sn-auth "495442533272DDCC" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "479"
   333| ont add 9 4 sn-auth "495442533271C789" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "491"
   334| ont add 9 5 sn-auth "495442533271C787" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "477"
   335| ont add 9 6 sn-auth "495442533272E722" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "493"
   336| ont add 9 7 sn-auth "495442533272E736" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "475"
   337| ont add 9 8 sn-auth "495442533272E73C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "485"
   338| ont add 9 9 sn-auth "52434D47199880E7" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "483"
   339| ont add 9 10 sn-auth "485754431D0EB59B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   340| ont add 9 11 sn-auth "485754431D0BDB9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   341| ont add 9 12 sn-auth "485754431DDD019B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   342| ont add 9 13 sn-auth "485754431D303D9B" omci ont-lineprofile-id 3261 ont-srvprofile-id 3261 desc "11"
   343| ont add 9 14 sn-auth "485754431D29EC9B" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
   344| ont add 9 15 sn-auth "485754431DBE3B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   345| ont add 9 16 sn-auth "485754431D62439B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   346| ont add 9 17 sn-auth "485754431DB99C9B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   347| ont add 9 18 sn-auth "485754431D0E649B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   348| ont add 9 19 sn-auth "485754431DA8319B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   349| ont add 9 20 sn-auth "48575443A1C375B1" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
   350| ont add 9 21 sn-auth "48575443AD77FD9A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   351| ont add 9 22 sn-auth "485754431DFC139B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   352| ont add 9 23 sn-auth "485754431DFC2C9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   353| ont add 9 24 sn-auth "48575443B414D09E" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "nick_eventos_oab"
   354| ont add 9 25 sn-auth "485754431D48DC9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   355| ont add 9 26 sn-auth "48575443AD79059A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   356| ont add 9 27 sn-auth "485754431DBB119B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   357| ont add 10 0 sn-auth "4954425332576545" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "451"
   358| ont add 10 1 sn-auth "44443732E606E938" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "447"
   359| ont add 10 2 sn-auth "48575443AD90E39A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   360| ont add 10 3 sn-auth "485754431D886A9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   361| ont add 10 4 sn-auth "485754431DC4269B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   362| ont add 10 5 sn-auth "52434D4719987EBB" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "453"
   363| ont add 10 6 sn-auth "48575443F5E7B4AB" omci ont-lineprofile-id 171 ont-srvprofile-id 171 desc "16959_mercadospinelli_teste_a570"
   364| ont add 10 7 sn-auth "52434D471998817E" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "455"
   365| ont add 10 8 sn-auth "485754431D5DF29B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "457"
   366| ont add 10 9 sn-auth "52434D47199882D4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "459"
   367| ont add 10 10 sn-auth "485754431DFC809B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   368| ont add 10 11 sn-auth "485754434B8E5A9C" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   369| ont add 10 12 sn-auth "52434D4719988829" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   370| ont add 10 13 sn-auth "485754431D823E9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   371| ont add 10 14 sn-auth "52434D473A602627" omci ont-lineprofile-id 21 ont-srvprofile-id 21 desc "6175_lairrosina_2p_47ba"
   372| ont add 10 15 sn-auth "495442533272E738" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "463"
   373| ont add 10 16 sn-auth "495442533272E73A" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "461"
   374| ont add 10 17 sn-auth "52434D4719988349" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "465"
   375| ont add 10 18 sn-auth "52434D471998827C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "467"
   376| ont add 10 19 sn-auth "52434D47199880C1" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "469"
   377| ont add 10 20 sn-auth "485754431DEAF79B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   378| ont add 10 21 sn-auth "46535454B81CEB0A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   379| ont add 10 22 sn-auth "485754431D4D889B" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   380| ont add 10 23 sn-auth "485754431DBA399B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   381| ont add 10 24 sn-auth "485754431D6C259B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "579"
   382| ont add 10 25 sn-auth "485754431DB1B79B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   383| ont add 10 26 sn-auth "485754431DEF459B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   384| ont add 10 27 sn-auth "485754431DA02D9B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "637"
   385| ont add 10 28 sn-auth "485754431DDC859B" omci ont-lineprofile-id 173 ont-srvprofile-id 173 desc "ONT_HUAWEI"
   386| ont add 10 29 sn-auth "485754431DC2D49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   387| ont add 10 30 sn-auth "46535454B81CFF03" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   388| ont port native-vlan 0 0 eth 1 vlan 3107 priority 0
   389| ont port native-vlan 0 1 eth 1 vlan 3107 priority 0
   390| ont port native-vlan 0 2 eth 1 vlan 3964 priority 0
   391| ont port native-vlan 0 2 eth 2 vlan 3964 priority 0
   392| ont port native-vlan 0 3 eth 1 vlan 3964 priority 0
   393| ont port native-vlan 0 3 eth 2 vlan 3964 priority 0
   394| ont port native-vlan 0 4 eth 1 vlan 3964 priority 0
   395| ont port native-vlan 0 4 eth 2 vlan 3964 priority 0
   396| ont port native-vlan 0 5 eth 1 vlan 3107 priority 0
   397| ont port native-vlan 0 5 eth 2 vlan 3107 priority 0
   398| ont port native-vlan 0 6 eth 1 vlan 3964 priority 0
   399| ont port native-vlan 0 6 eth 2 vlan 3964 priority 0
   400| ont port native-vlan 0 7 eth 1 vlan 3107 priority 0
   401| ont port native-vlan 0 7 eth 2 vlan 3107 priority 0
   402| ont port native-vlan 0 8 eth 1 vlan 3341 priority 0
   403| ont port native-vlan 0 8 eth 2 vlan 3341 priority 0
   404| ont port native-vlan 0 10 eth 1 vlan 3540 priority 0
   405| ont port native-vlan 9 0 eth 1 vlan 3256 priority 0
   406| ont port native-vlan 9 1 eth 1 vlan 3105 priority 0
   407| ont port native-vlan 9 2 eth 1 vlan 3964 priority 0
   408| ont port native-vlan 9 2 eth 2 vlan 3964 priority 0
   409| ont port native-vlan 9 3 eth 1 vlan 3105 priority 0
   410| ont port native-vlan 9 4 eth 1 vlan 3105 priority 0
   411| ont port native-vlan 9 5 eth 1 vlan 3105 priority 0
   412| ont port native-vlan 9 6 eth 1 vlan 3105 priority 0
   413| ont port native-vlan 9 7 eth 1 vlan 3105 priority 0
   414| ont port native-vlan 9 8 eth 1 vlan 3105 priority 0
   415| ont port native-vlan 9 9 eth 1 vlan 3105 priority 0
   416| ont port native-vlan 9 10 eth 1 vlan 3256 priority 0
   417| ont port native-vlan 9 11 eth 1 vlan 3107 priority 0
   418| ont port native-vlan 9 11 eth 2 vlan 3107 priority 0
   419| ont port native-vlan 9 12 eth 1 vlan 3107 priority 0
   420| ont port native-vlan 9 12 eth 2 vlan 3107 priority 0
   421| ont port native-vlan 9 13 eth 1 vlan 3261 priority 0
   422| ont port native-vlan 9 14 eth 1 vlan 173 priority 0
   423| ont port native-vlan 9 15 eth 1 vlan 3107 priority 0
   424| ont port native-vlan 9 16 eth 1 vlan 3107 priority 0
   425| ont port native-vlan 9 16 eth 2 vlan 3107 priority 0
   426| ont port native-vlan 9 17 eth 1 vlan 3256 priority 0
   427| ont port native-vlan 9 18 eth 1 vlan 3964 priority 0
   428| ont port native-vlan 9 18 eth 2 vlan 3964 priority 0
   429| ont port native-vlan 9 19 eth 1 vlan 3964 priority 0
   430| ont port native-vlan 9 19 eth 2 vlan 3964 priority 0
   431| ont port native-vlan 9 20 eth 1 vlan 173 priority 0
   432| ont port native-vlan 9 21 eth 1 vlan 3107 priority 0
   433| ont port native-vlan 9 21 eth 2 vlan 3107 priority 0
   434| ont port native-vlan 9 22 eth 1 vlan 3107 priority 0
   435| ont port native-vlan 9 22 eth 2 vlan 3107 priority 0
   436| ont port native-vlan 9 23 eth 1 vlan 3107 priority 0
   437| ont port native-vlan 9 23 eth 2 vlan 3107 priority 0
   438| ont port native-vlan 9 24 eth 1 vlan 173 priority 0
   439| ont port native-vlan 9 25 eth 1 vlan 3107 priority 0
   440| ont port native-vlan 9 25 eth 2 vlan 3107 priority 0
   441| ont port native-vlan 9 26 eth 1 vlan 3107 priority 0
   442| ont port native-vlan 9 26 eth 2 vlan 3107 priority 0
   443| ont port native-vlan 9 27 eth 1 vlan 3107 priority 0
   444| ont port native-vlan 9 27 eth 2 vlan 3107 priority 0
   445| ont port native-vlan 10 0 eth 1 vlan 3105 priority 0
   446| ont port native-vlan 10 1 eth 1 vlan 3105 priority 0
   447| ont port native-vlan 10 2 eth 1 vlan 3107 priority 0
   448| ont port native-vlan 10 2 eth 2 vlan 3107 priority 0
   449| ont port native-vlan 10 3 eth 1 vlan 3964 priority 0
   450| ont port native-vlan 10 3 eth 2 vlan 3964 priority 0
   451| ont port native-vlan 10 4 eth 1 vlan 3107 priority 0
   452| ont port native-vlan 10 4 eth 2 vlan 3107 priority 0
   453| ont port native-vlan 10 5 eth 1 vlan 3105 priority 0
   454| ont port native-vlan 10 7 eth 1 vlan 3105 priority 0
   455| ont port native-vlan 10 8 eth 1 vlan 3105 priority 0
   456| ont port native-vlan 10 9 eth 1 vlan 3105 priority 0
   457| ont port native-vlan 10 10 eth 1 vlan 3256 priority 0
   458| ont port native-vlan 10 11 eth 1 vlan 3964 priority 0
   459| ont port native-vlan 10 11 eth 2 vlan 3964 priority 0
   460| ont port native-vlan 10 12 eth 1 vlan 3256 priority 0
   461| ont port native-vlan 10 13 eth 1 vlan 3964 priority 0
   462| ont port native-vlan 10 13 eth 2 vlan 3964 priority 0
   463| ont port native-vlan 10 14 eth 1 vlan 21 priority 0
   464| ont port native-vlan 10 15 eth 1 vlan 3105 priority 0
   465| ont port native-vlan 10 16 eth 1 vlan 3105 priority 0
   466| ont port native-vlan 10 17 eth 1 vlan 3105 priority 0
   467| ont port native-vlan 10 18 eth 1 vlan 3105 priority 0
   468| ont port native-vlan 10 19 eth 1 vlan 3105 priority 0
   469| ont port native-vlan 10 20 eth 1 vlan 3256 priority 0
   470| ont port native-vlan 10 21 eth 1 vlan 3107 priority 0
   471| ont port native-vlan 10 21 eth 2 vlan 3107 priority 0
   472| ont port native-vlan 10 22 eth 1 vlan 3256 priority 0
   473| ont port native-vlan 10 23 eth 1 vlan 3964 priority 0
   474| ont port native-vlan 10 23 eth 2 vlan 3964 priority 0
   475| ont port native-vlan 10 24 eth 1 vlan 3105 priority 0
   476| ont port native-vlan 10 25 eth 1 vlan 3107 priority 0
   477| ont port native-vlan 10 25 eth 2 vlan 3107 priority 0
   478| ont port native-vlan 10 26 eth 1 vlan 3107 priority 0
   479| ont port native-vlan 10 26 eth 2 vlan 3107 priority 0
   480| ont port native-vlan 10 27 eth 1 vlan 3105 priority 0
   481| ont port native-vlan 10 28 eth 1 vlan 173 priority 0
   482| ont port native-vlan 10 29 eth 1 vlan 3107 priority 0
   483| ont port native-vlan 10 29 eth 2 vlan 3107 priority 0
   484| ont port native-vlan 10 30 eth 1 vlan 3107 priority 0
   485| ont port native-vlan 10 30 eth 2 vlan 3107 priority 0
   486|#
   487|[platform-config]
   488|  <platform-config>
   489| autosave interval on
   490| autosave time off
   491| autosave interval 1442
   492| autosave time 00:00:00
   493| autosave interval configuration 480
   494|#
   495|[emu-config]
   496|  <emu-config>
   497| emu add 0 fan 0 1  "H901FMSA"
   498|#
   499|[bbs-config]
   500|  <bbs-config>
   501| service-port 0 vlan 3107 gpon 0/1/0 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
   502| service-port 1 vlan 3540 gpon 0/1/0 ont 10 gemport 540 multi-service user-vlan 3540 tag-transform translate
   503| service-port 2 vlan 3107 gpon 0/1/0 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
   504| service-port 3 vlan 3964 gpon 0/1/0 ont 2 gemport 964 multi-service user-vlan 3964 tag-transform translate
   505| service-port 4 vlan 3964 gpon 0/1/0 ont 3 gemport 964 multi-service user-vlan 3964 tag-transform translate
   506| service-port 5 vlan 3964 gpon 0/1/0 ont 4 gemport 964 multi-service user-vlan 3964 tag-transform translate
   507| service-port 6 vlan 3107 gpon 0/1/9 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   508| service-port 7 vlan 3105 gpon 0/1/10 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
   509| service-port 8 vlan 3107 gpon 0/1/9 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   510| service-port 9 vlan 3107 gpon 0/1/9 ont 27 gemport 107 multi-service user-vlan 3107 tag-transform translate
   511| service-port 10 vlan 3105 gpon 0/1/10 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   512| service-port 12 vlan 3105 gpon 0/1/10 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
   513| service-port 14 vlan 3105 gpon 0/1/10 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   514| service-port 21 vlan 3256 gpon 0/1/10 ont 12 gemport 256 multi-service user-vlan 3256 tag-transform translate
   515| service-port 25 vlan 21 gpon 0/1/10 ont 14 gemport 21 multi-service user-vlan 21 tag-transform translate
   516| service-port 26 vlan 3105 gpon 0/1/10 ont 15 gemport 105 multi-service user-vlan 3105 tag-transform translate
   517| service-port 27 vlan 3105 gpon 0/1/10 ont 16 gemport 105 multi-service user-vlan 3105 tag-transform translate
   518| service-port 28 vlan 3105 gpon 0/1/10 ont 17 gemport 105 multi-service user-vlan 3105 tag-transform translate
   519| service-port 29 vlan 3105 gpon 0/1/10 ont 18 gemport 105 multi-service user-vlan 3105 tag-transform translate
   520| service-port 30 vlan 3105 gpon 0/1/10 ont 19 gemport 105 multi-service user-vlan 3105 tag-transform translate
   521| service-port 31 vlan 3964 gpon 0/1/10 ont 3 gemport 964 multi-service user-vlan 3964 tag-transform translate
   522| service-port 32 vlan 3964 gpon 0/1/10 ont 13 gemport 964 multi-service user-vlan 3964 tag-transform translate
   523| service-port 33 vlan 3256 gpon 0/1/10 ont 20 gemport 256 multi-service user-vlan 3256 tag-transform translate
   524| service-port 36 vlan 3964 gpon 0/1/9 ont 2 gemport 964 multi-service user-vlan 3964 tag-transform translate
   525| service-port 37 vlan 3105 gpon 0/1/9 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
   526| service-port 39 vlan 3105 gpon 0/1/9 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
   527| service-port 40 vlan 3105 gpon 0/1/9 ont 4 gemport 105 multi-service user-vlan 3105 tag-transform translate
   528| service-port 41 vlan 3105 gpon 0/1/9 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   529| service-port 42 vlan 3105 gpon 0/1/9 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
   530| service-port 43 vlan 3105 gpon 0/1/9 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
   531| service-port 44 vlan 3105 gpon 0/1/9 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
   532| service-port 45 vlan 3105 gpon 0/1/9 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   533| service-port 46 vlan 3256 gpon 0/1/9 ont 0 gemport 256 multi-service user-vlan 3256 tag-transform translate
   534| service-port 48 vlan 3256 gpon 0/1/9 ont 10 gemport 256 multi-service user-vlan 3256 tag-transform translate
   535| service-port 49 vlan 3105 gpon 0/1/10 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
   536| service-port 52 vlan 3256 gpon 0/1/10 ont 10 gemport 256 multi-service user-vlan 3256 tag-transform translate
   537| service-port 54 vlan 3261 gpon 0/1/9 ont 13 gemport 261 multi-service user-vlan 3261 tag-transform translate
   538| service-port 56 vlan 3256 gpon 0/1/10 ont 22 gemport 256 multi-service user-vlan 3256 tag-transform translate
   539| service-port 57 vlan 173 gpon 0/1/9 ont 14 gemport 173 multi-service user-vlan 173 tag-transform translate
   540| service-port 58 vlan 3107 gpon 0/1/9 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
   541| service-port 59 vlan 3964 gpon 0/1/10 ont 23 gemport 964 multi-service user-vlan 3964 tag-transform translate
   542| service-port 63 vlan 3964 gpon 0/1/9 ont 18 gemport 964 multi-service user-vlan 3964 tag-transform translate
   543| service-port 64 vlan 3256 gpon 0/1/9 ont 17 gemport 256 multi-service user-vlan 3256 tag-transform translate
   544| service-port 65 vlan 3964 gpon 0/1/9 ont 19 gemport 964 multi-service user-vlan 3964 tag-transform translate
   545| service-port 66 vlan 3107 gpon 0/1/9 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
   546| service-port 70 vlan 3107 gpon 0/1/10 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   547| service-port 71 vlan 3107 gpon 0/1/0 ont 5 gemport 107 multi-service user-vlan 3107 tag-transform translate
   548| service-port 72 vlan 3964 gpon 0/1/0 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
   549| service-port 73 vlan 3107 gpon 0/1/0 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
   550| service-port 75 vlan 3105 gpon 0/1/10 ont 24 gemport 105 multi-service user-vlan 3105 tag-transform translate
   551| service-port 76 vlan 3107 gpon 0/1/10 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   552| service-port 77 vlan 3105 gpon 0/1/10 ont 27 gemport 105 multi-service user-vlan 3105 tag-transform translate
   553| service-port 79 vlan 3341 gpon 0/1/0 ont 8 gemport 341 multi-service user-vlan 3341 tag-transform translate
   554| service-port 81 vlan 173 gpon 0/1/10 ont 28 gemport 173 multi-service user-vlan 173 tag-transform translate
   555| service-port 83 vlan 173 gpon 0/1/9 ont 20 gemport 173 multi-service user-vlan 173 tag-transform translate
   556| service-port 85 vlan 3105 gpon 0/1/10 ont 0 gemport 105 multi-service user-vlan 3105 tag-transform translate
   557| service-port 86 vlan 3107 gpon 0/1/10 ont 29 gemport 107 multi-service user-vlan 3107 tag-transform translate
   558| service-port 88 vlan 3107 gpon 0/1/9 ont 22 gemport 107 multi-service user-vlan 3107 tag-transform translate
   559| service-port 89 vlan 3107 gpon 0/1/9 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
   560| service-port 94 vlan 3107 gpon 0/1/9 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
   561| service-port 97 vlan 171 gpon 0/1/10 ont 6 gemport 171 multi-service user-vlan 171 tag-transform translate
   562| service-port 99 vlan 3107 gpon 0/1/9 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
   563| service-port 100 vlan 3964 gpon 0/1/10 ont 11 gemport 964 multi-service user-vlan 3964 tag-transform translate
   564| service-port 101 vlan 173 gpon 0/1/9 ont 24 gemport 173 multi-service user-vlan 173 tag-transform translate
   565| service-port 102 vlan 3107 gpon 0/1/10 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   566| service-port 103 vlan 3107 gpon 0/1/10 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
   567| service-port 104 vlan 3107 gpon 0/1/10 ont 30 gemport 107 multi-service user-vlan 3107 tag-transform translate
   568| service-port 106 vlan 3107 gpon 0/1/9 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
   569| service-port 107 vlan 3107 gpon 0/1/10 ont 4 gemport 107 multi-service user-vlan 3107 tag-transform translate
   570| overload-aware mac-address upper-threshold 50 lower-threshold 45
   571| overload-aware mac-address disable
   572| overload-aware ip route hardware disable
   573| monitor uplink-port non-unicast port 0/3/0
   574| monitor uplink-port non-unicast port 0/3/1
   575| monitor uplink-port non-unicast port 0/3/2
   576| monitor uplink-port non-unicast port 0/3/3
   577| monitor uplink-port non-unicast port 0/4/0
   578| monitor uplink-port non-unicast port 0/4/1
   579| monitor uplink-port non-unicast port 0/4/2
   580| monitor uplink-port non-unicast port 0/4/3
   581|#
   582|[abs-config]
   583|  <abs-config>
   584| monitor uplink-port pppoe port 0/3/0
   585| monitor uplink-port pppoe port 0/3/1
   586| monitor uplink-port pppoe port 0/3/2
   587| monitor uplink-port pppoe port 0/3/3
   588| monitor uplink-port pppoe port 0/4/0
   589| monitor uplink-port pppoe port 0/4/1
   590| monitor uplink-port pppoe port 0/4/2
   591| monitor uplink-port pppoe port 0/4/3
   592|#
   593|[security-config]
   594|  <security-config>
   595| security anti-illegal-hoplimit-nd disable
   596|#
   597|[config]
   598|  <config>
   599| security anti-ipattack disable
   600| security anti-icmpattack disable
   601| security anti-ipv6attack disable
   602| security anti-icmpv6attack disable
   603|#
   604|[ip-tunnel-profile]
   605|  <ip-tunnel-profile>
   606| ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
   607|#
   608|set neid 0x869745
   609|#
   610|[aaa]
   611|  <aaa>
   612|aaa
   613| #
   614| authentication-scheme "default"
   615| #
   616| authorization-scheme "default"
   617| #
   618| accounting-scheme "default"
   619| #
   620| domain "default"
   621|#
   622|[Interface]
   623|  <Vlanif170>
   624|interface Vlanif170
   625| ip address 10.244.17.254 255.255.255.252
   626|#
   627|  <MEth0>
   628|interface MEth0
   629| ip address 10.11.104.2 255.255.255.0
   630|#
   631|  <NULL0>
   632|interface NULL0
   633|#
   634|undo dcn
   635|#
   636|[route-static]
   637|  <route-static>
   638|ip route-static 0.0.0.0 0.0.0.0 10.244.17.253
   639|#
   640|[snmp]
   641|  <snmp>
   642|snmp-agent local-engineid 800007DB03C8A776869746
   643|snmp-agent community read cipher "%+%##!!!!!!!!!"!!!!"!!!!(!!!!7LTnVOK_g:Db*h7:55199K,w>[7^9;Ll;2K3]G!I2jp5!!!!!!1!!!!))n^QE@hw8*cl/T*5G6+%+%#"
   644|#
   645|[post-system]
   646|  <post-system>
   647| ssh user "radiusnet" authentication-type password
   648| ssh user "root" authentication-type password
   649| ssh user "suporte" authentication-type password
   650| ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   651| ssh server hmac sha2_512 sha2_256 sha1
   652| ssh server key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521 sm2_kep
   653| ssh server dh-exchange min-len 2048
   654| ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
   655| ntp-service server disable
   656| ntp-service ipv6 server disable
   657| ntp-service server source-interface all disable
   658| ntp-service ipv6 server source-interface all disable
   659| ntp-service unicast-server 200.160.0.8
   660| ntp-service unicast-server 200.189.40.8
   661| ssh client publickey rsa rsa_sha2_256 rsa_sha2_512 ed25519
   662| ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr
   663| ssh client hmac sha2_512 sha2_256 sha1
   664| ssh client key-exchange dh_group_exchange_sha256 dh_group_exchange_sha1 dh_group14_sha1 ecdh_sha2_nistp256 ecdh_sha2_nistp384 ecdh_sha2_nistp521 sm2_kep
   665|#
   666|[source-interface]
   667|  <source-interface>
   668| sysman server source ssh any-interface
   669| sysman server source ssh ipv6 ::
   670| sysman server source snmp any-interface
   671| sysman server source snmp ipv6 ::
   672| sysman server source netconf any-interface
   673| sysman server source netconf ipv6 ::
   674| sysman server source trace any-interface
   675| sysman server source telnet any-interface
   676| sysman server source telnet ipv6 ::
   677| sysman server source ipdr any-interface
   678|#
   679|return
   680|```
   681|