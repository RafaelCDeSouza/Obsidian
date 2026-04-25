[[POP13_OLT1]]

     1|```yaml
     2|[Active: H901MPSG; Standby: H901MPSG]
     3|[Patch Info: SPC200]
     4|[MA5800V100R022: 5011]
     5|#
     6|timezone GMT- 03:00
     7|#
     8|[pre-config]
     9|  <pre-config>
    10| board add 0/0 H901PISA
    11| board add 0/1 H903GPSF
    12|#
    13|[sysmode]
    14|  <sysmode>
    15| switch vdsl mode to tr129
    16| xpon mode switch-to profile-mode
    17| sysmode end
    18|#
    19|[global-config]
    20|  <global-config>
    21| sysname POP13_OLT1_HAVANA
    22| terminal user-profile name suporte 0 0 00:00:00 00:00:00
    23| terminal user name buildrun_new_password root *j$3b$'|xh%#oao0xa$1(v3b7.$+k:\Y;S_M)j]fhN32ilONqgZN^,[zQ@SA*;IFbG7$* 7 0000:00:00:00:00:00 2023:07:09:10:34:44 root 1 first-login-info 0 self-changed-password 1 "-----"
    24| terminal user name buildrun_new_password radiusnet *~uc$3b$\Q_wUL$Uv@5f73XgY/HX$TM<cMMzCN1VXy&(x>D.DB`,g'|o1QEt&_TJ(X5E3$* 0 2023:07:01:04:49:35 2023:07:01:04:59:48 root 2 first-login-info 0 self-changed-password 1 "-----"
    25| terminal user name buildrun_new_password suporte *~ub$3b$!g]SB`[/$G%eagGgRk.A$x9iQ,(I7A&kM2IKKD!a@pQX/Zn|E_&:)M>PVYNt>$* 0 2025:07:28:09:24:10 2025:07:28:09:24:47 suporte 3 first-login-info 0 self-changed-password 1 "Suporte Operador"
    26| system modify logon password enable all
    27| system user password security mode enhance
    28| system user password security-length 12
    29| terminal user name history_password root *j$3b$q|rIE*eMKIVFPXI9%VG5$'zA6B5)7#0/t|:Vh@Aw<+fEK5[t.o;%+'P)&^$D5$* *j$3b$w{C62YDl,&$[3iCFU'a4$bRBk.w,A!UTH9,,ZN'R0G^k%1_'PKF9%]\U$:^!*$* *j$3b$3|X`>Rv]tJ@'.}G~}tJH$9%rLG;^HlWl@hg1,Qo,CM2TbL8)M0E$fz$LB:]WA$* *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$*
    30| terminal user name history_password radiusnet *~uc$3b$-qex9:,/",oYL*3yOJ~V$/`rK-B.k-Na^m*7n>/lNKO]iJu4d$:vL%<1Znm(;$*
    31| terminal user name history_password suporte *~ub$3b$\["@~sYK5:x^|2I=A*xY$B$,rCB^k0)yA=xJzGUK@XyE;2J$sGGar;^U,7^jG$*
    32| ssh client key-exchange sftp dh_group_exchange_sha256 curve25519_sha256
    33| ssh client dh-exchange sftp min-len 2048
    34| xpon ont optical-ddm quick-query disable
    35| dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
    36| dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
    37| dba-profile add profile-id 12 profile-name "dba-profile_12" type4 max 204800
    38| ont wan-profile profile-id 0 profile-name "wan-profile_0"
    39|  nat enable
    40|  quit
    41| ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
    42|  ont-port pots 1 eth 2
    43|  port vlan eth 1 transparent
    44|  port vlan eth 2 transparent
    45|  port vlan iphost translation 131 user-vlan 131
    46|  commit
    47| ont-srvprofile gpon profile-id 3 profile-name "SRVPROFILE_ROUTER_CYBER"
    48|  ont-port pots 1 eth 2
    49|  port vlan eth 1 transparent
    50|  port vlan eth 2 transparent
    51|  port vlan iphost translation 133 user-vlan 133
    52|  commit
    53| ont-srvprofile gpon profile-id 10 profile-name "ONT-1GE"
    54|  ont-port eth 1 catv adaptive 8
    55|  ring check enable
    56|  commit
    57| ont-srvprofile gpon profile-id 21 profile-name "SRVPROFILE_BRIDGE_21"
    58|  ont-port eth 1
    59|  port vlan eth 1 translation 21 user-vlan 21
    60|  commit
    61| ont-srvprofile gpon profile-id 30 profile-name "SRVPROFILE_BRIDGE_30_DUASP"
    62|  ont-port eth 2
    63|  port vlan eth 1 translation 3104 user-vlan 3104
    64|  port vlan eth 2 translation 3108 user-vlan 3108
    65|  commit
    66| ont-srvprofile gpon profile-id 131 profile-name "SRVPROFILE_BRIDGE_131"
    67|  ont-port eth 1
    68|  port vlan eth 1 translation 131 user-vlan 131
    69|  commit
    70| ont-srvprofile gpon profile-id 133 profile-name "SRVPROFILE_BRIDGE_133"
    71|  ont-port eth 1
    72|  port vlan eth 1 translation 133 user-vlan 133
    73|  commit
    74| ont-srvprofile gpon profile-id 134 profile-name "SRVPROFILE_BRIDGE_133_DUASP"
    75|  ont-port eth 2
    76|  port vlan eth 1 translation 133 user-vlan 133
    77|  port vlan eth 2 translation 133 user-vlan 133
    78|  commit
    79| ont-srvprofile gpon profile-id 964 profile-name "SRVPROFILE_BRIDGE_3964"
    80|  ont-port eth 1
    81|  port q-in-q eth 1 enable
    82|  commit
    83| ont-srvprofile gpon profile-id 2107 profile-name "SRVPROFILE2_BRIDGE_3107"
    84|  ont-port eth 1
    85|  port vlan eth 1 translation 3107 user-vlan 3107
    86|  commit
    87| ont-srvprofile gpon profile-id 3005 profile-name "SRVPROFILE_BRIDGE_V3005"
    88|  ont-port eth 2
    89|  port q-in-q eth 1 enable
    90|  commit
    91| ont-srvprofile gpon profile-id 3103 profile-name "SRVPROFILE_BRIDGE_3103"
    92|  ont-port eth 1
    93|  port vlan eth 1 translation 3103 user-vlan 3103
    94|  commit
    95| ont-srvprofile gpon profile-id 3104 profile-name "SRVPROFILE_BRIDGE_3104"
    96|  ont-port eth 1
    97|  port vlan eth 1 translation 3104 user-vlan 3104
    98|  commit
    99| ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
   100|  ont-port eth 1
   101|  port vlan eth 1 translation 3105 user-vlan 3105
   102|  commit
   103| ont-srvprofile gpon profile-id 3106 profile-name "SRVPROFILE_BRIDGE_3106"
   104|  ont-port eth 4
   105|  port vlan eth 1 translation 133 user-vlan 133
   106|  port vlan eth 2 translation 3106 user-vlan 3106
   107|  port vlan eth 3 translation 3106 user-vlan 3106
   108|  port vlan eth 4 translation 3106 user-vlan 3106
   109|  commit
   110| ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
   111|  ont-port eth 2
   112|  port vlan eth 1 translation 3107 user-vlan 3107
   113|  port vlan eth 2 translation 3108 user-vlan 3108
   114|  commit
   115| ont-srvprofile gpon profile-id 3108 profile-name "SRVPROFILE_BRIDGE_3108"
   116|  ont-port eth 1
   117|  port vlan eth 1 translation 3108 user-vlan 3108
   118|  commit
   119| ont-srvprofile gpon profile-id 3540 profile-name "SRVPROFILE_BRIDGE_3540"
   120|  ont-port eth 1
   121|  port vlan eth 1 translation 3540 user-vlan 3540
   122|  commit
   123| ont-srvprofile gpon profile-id 3907 profile-name "SRVPROFILE_BRIDGE_3907"
   124|  ont-port eth 2
   125|  port q-in-q eth 1 enable
   126|  port vlan eth 1 translation 3907 user-vlan 3907
   127|  port vlan eth 2 translation 133 user-vlan 133
   128|  commit
   129| ont-srvprofile gpon profile-id 3964 profile-name "SRVPROFILE_BRIDGE_V3964"
   130|  ont-port eth 2
   131|  port q-in-q eth 1 enable
   132|  commit
   133| ont-lineprofile gpon profile-id 0 profile-name "line-profile_default_0"
   134|  omcc encrypt off
   135|  tcont 0 dba-profile-id 2
   136|  tcont 1 dba-profile-id 0
   137|  commit
   138|  quit
   139| ont-lineprofile gpon profile-id 1 profile-name "SMARTOLT_FLEXIBLE_GPON"
   140|  fec-upstream enable
   141|  omcc encrypt on
   142|  tr069-management enable
   143|  mapping-mode priority
   144|  tcont 0 dba-profile-id 2
   145|  tcont 1 dba-profile-id 11
   146|  tcont 2 dba-profile-id 11
   147|  tcont 3 dba-profile-id 11
   148|  gem add 1 eth tcont 1 encrypt on
   149|  gem add 2 eth tcont 2 encrypt on
   150|  gem add 3 eth tcont 3 encrypt on
   151|  gem mapping 1 1 priority 0
   152|  gem mapping 2 1 priority 2
   153|  gem mapping 3 1 priority 5
   154|  commit
   155|  quit
   156| ont-lineprofile gpon profile-id 2 profile-name "line-profile_2"
   157|  omcc encrypt on
   158|  commit
   159|  quit
   160| ont-lineprofile gpon profile-id 21 profile-name "LINE_PROFILE_21"
   161|  omcc encrypt on
   162|  tcont 1 dba-profile-id 10
   163|  gem add 21 eth tcont 1 encrypt on
   164|  gem mapping 21 0 vlan 21
   165|  commit
   166|  quit
   167| ont-lineprofile gpon profile-id 30 profile-name "LINE_PROFILE_30"
   168|  omcc encrypt on
   169|  tcont 1 dba-profile-id 10
   170|  tcont 2 dba-profile-id 10
   171|  gem add 104 eth tcont 1 encrypt on
   172|  gem add 108 eth tcont 2 encrypt on
   173|  gem mapping 104 0 vlan 3104
   174|  gem mapping 108 0 vlan 3108
   175|  commit
   176|  quit
   177| ont-lineprofile gpon profile-id 131 profile-name "LINE_PROFILE_131"
   178|  omcc encrypt on
   179|  tcont 1 dba-profile-id 10
   180|  gem add 131 eth tcont 1 encrypt on
   181|  gem mapping 131 0 vlan 131
   182|  commit
   183|  quit
   184| ont-lineprofile gpon profile-id 133 profile-name "LINE_PROFILE_133"
   185|  omcc encrypt on
   186|  tcont 1 dba-profile-id 10
   187|  gem add 133 eth tcont 1 encrypt on
   188|  gem mapping 133 0 vlan 133
   189|  commit
   190|  quit
   191| ont-lineprofile gpon profile-id 134 profile-name "LINE_PROFILE_V133_DUASP"
   192|  omcc encrypt on
   193|  tcont 1 dba-profile-id 10
   194|  tcont 2 dba-profile-id 10
   195|  gem add 131 eth tcont 1 encrypt on
   196|  gem add 133 eth tcont 2 encrypt on
   197|  gem mapping 131 0 vlan 131
   198|  gem mapping 133 0 vlan 133
   199|  commit
   200|  quit
   201| ont-lineprofile gpon profile-id 964 profile-name "LINE_PROFILE_3964"
   202|  omcc encrypt on
   203|  tcont 1 dba-profile-id 10
   204|  gem add 964 eth tcont 1 encrypt on
   205|  gem mapping 964 0 vlan 3964
   206|  commit
   207|  quit
   208| ont-lineprofile gpon profile-id 2107 profile-name "LINE_PROFILE2_3107"
   209|  omcc encrypt on
   210|  tcont 1 dba-profile-id 11
   211|  gem add 107 eth tcont 1 encrypt on
   212|  gem mapping 107 0 vlan 3107
   213|  commit
   214|  quit
   215| ont-lineprofile gpon profile-id 3005 profile-name "LINE_PROFILE_V3005"
   216|  omcc encrypt on
   217|  tcont 1 dba-profile-id 10
   218|  gem add 5 eth tcont 0 encrypt on
   219|  gem mapping 5 0 vlan 3005
   220|  commit
   221|  quit
   222| ont-lineprofile gpon profile-id 3103 profile-name "LINE_PROFILE_3103"
   223|  omcc encrypt on
   224|  tcont 1 dba-profile-id 11
   225|  gem add 103 eth tcont 1 encrypt on
   226|  gem mapping 103 0 vlan 3103
   227|  commit
   228|  quit
   229| ont-lineprofile gpon profile-id 3104 profile-name "LINE_PROFILE_3104"
   230|  omcc encrypt on
   231|  tcont 1 dba-profile-id 11
   232|  gem add 104 eth tcont 1 encrypt on
   233|  gem mapping 104 0 vlan 3104
   234|  commit
   235|  quit
   236| ont-lineprofile gpon profile-id 3105 profile-name "LINE_PROFILE_3105"
   237|  omcc encrypt on
   238|  tcont 1 dba-profile-id 11
   239|  gem add 105 eth tcont 1 encrypt on
   240|  gem mapping 105 0 vlan 3105
   241|  commit
   242|  quit
   243| ont-lineprofile gpon profile-id 3106 profile-name "LINE_PROFILE_3106"
   244|  omcc encrypt on
   245|  tcont 1 dba-profile-id 10
   246|  tcont 2 dba-profile-id 11
   247|  gem add 106 eth tcont 2 encrypt on
   248|  gem add 133 eth tcont 1 encrypt on
   249|  gem mapping 106 0 vlan 3106
   250|  gem mapping 133 0 vlan 133
   251|  commit
   252|  quit
   253| ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
   254|  omcc encrypt on
   255|  tcont 1 dba-profile-id 11
   256|  tcont 2 dba-profile-id 11
   257|  gem add 107 eth tcont 1 encrypt on
   258|  gem add 108 eth tcont 2 encrypt on
   259|  gem mapping 107 0 vlan 3107
   260|  gem mapping 108 0 vlan 310
   261|  commit
   262|  quit
   263| ont-lineprofile gpon profile-id 3108 profile-name "LINE_PROFILE_3108"
   264|  omcc encrypt on
   265|  tcont 1 dba-profile-id 11
   266|  gem add 108 eth tcont 1 encrypt on
   267|  gem mapping 108 0 vlan 3108
   268|  commit
   269|  quit
   270| ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
   271|  omcc encrypt on
   272|  tcont 1 dba-profile-id 10
   273|  gem add 540 eth tcont 1 encrypt on
   274|  gem mapping 540 0 vlan 3540
   275|  commit
   276|  quit
   277| ont-lineprofile gpon profile-id 3907 profile-name "LINE_PROFILE_3907"
   278|  omcc encrypt on
   279|  tcont 1 dba-profile-id 12
   280|  tcont 2 dba-profile-id 12
   281|  gem add 133 eth tcont 2 encrypt on
   282|  gem add 907 eth tcont 1 encrypt on
   283|  gem mapping 133 0 vlan 133
   284|  gem mapping 907 0 vlan 3907
   285|  commit
   286|  quit
   287| ont-lineprofile gpon profile-id 3964 profile-name "LINE_PROFILE_V3964"
   288|  omcc encrypt on
   289|  tcont 1 dba-profile-id 10
   290|  gem add 964 eth tcont 0 encrypt on
   291|  gem mapping 964 0 vlan 3964
   292|  commit
   293|  quit
   294|#
   295|[device-config]
   296|  <device-config>
   297| board add standby sub0 CPCG
   298| system hardware-recovery disable serial-link
   299|#
   300|[public-config]
   301|  <public-config>
   302| monitor uplink-port traffic port 0/3/0
   303| monitor uplink-port traffic port 0/3/1
   304| monitor uplink-port traffic port 0/3/2
   305| monitor uplink-port traffic port 0/4/0
   306| monitor uplink-port traffic port 0/4/1
   307| monitor uplink-port traffic port 0/4/2
   308| monitor uplink-port traffic port 0/4/3
   309| sysman service telnet disable
   310| sysman service dhcp-relay disable
   311| sysman service dhcpv6-relay disable
   312|#
   313|[dnet-config]
   314|  <dnet-config>
   315| dedicated-net dedicated-net-id 0 dedicated-net-name "DNet-0"
   316|#
   317|[vlan-config]
   318|  <vlan-config>
   319| vlan 21 smart
   320| vlan 130 to 131 smart
   321| vlan 133 smart
   322| vlan 3005 smart
   323| vlan 3103 to 3108 smart
   324| vlan 3540 smart
   325| vlan 3907 smart
   326| vlan 3964 smart
   327| vlan desc 21 description "VLAN21_POP17_OLT1_PPPOE_SCHOSSL"
   328| vlan desc 130 description "VLAN130_POP13_OLT1_GERENCIA"
   329| vlan desc 131 description "VLAN131_POP13_OLT1_PPPOE"
   330| vlan desc 133 description "VLAN133_POP13_OLT1_PPPOE"
   331| vlan desc 3005 description "VLAN_3005_TRANSP_L2_TELIUM"
   332| vlan desc 3107 description "VLAN_3107_POA_+_SEG"
   333| vlan desc 3108 description "VLAN_3108_POA_+_SEG"
   334| vlan desc 3540 description "VLAN_3540_MEDIANET"
   335| vlan desc 3907 description "VLAN_3907_TRANSP_ALIANCA"
   336| vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
   337| port vlan 21 0/3 0
   338| port vlan 21 0/3 1
   339| port vlan 21 0/3 2
   340| port vlan 130 to 131 0/3 0
   341| port vlan 130 to 131 0/3 1
   342| port vlan 130 to 131 0/3 2
   343| port vlan 133 0/3 0
   344| port vlan 133 0/3 1
   345| port vlan 133 0/3 2
   346| port vlan 3005 0/3 0
   347| port vlan 3005 0/3 1
   348| port vlan 3005 0/3 2
   349| port vlan 3103 to 3108 0/3 0
   350| port vlan 3103 to 3108 0/3 1
   351| port vlan 3103 to 3108 0/3 2
   352| port vlan 3540 0/3 0
   353| port vlan 3540 0/3 1
   354| port vlan 3540 0/3 2
   355| port vlan 3907 0/3 0
   356| port vlan 3907 0/3 1
   357| port vlan 3907 0/3 2
   358| port vlan 3964 0/3 0
   359| port vlan 3964 0/3 1
   360| port vlan 3964 0/3 2
   361|#
   362|[mpu]
   363|  <mpu-0/3>
   364|interface mpu 0/3
   365| auto-neg 0 disable
   366| speed 0 10000
   367| auto-neg 1 disable
   368| speed 1 10000
   369| auto-neg 2 enable
   370| speed 2 1000
   371| auto-neg 3 enable
   372| speed 3 1000
   373| jumbo-frame 0 enable
   374| jumbo-frame 1 enable
   375| jumbo-frame 2 enable
   376| jumbo-frame 3 enable
   377|#
   378|  <mpu-0/4>
   379|interface mpu 0/4
   380| auto-neg 0 disable
   381| speed 0 10000
   382| auto-neg 1 disable
   383| speed 1 10000
   384| auto-neg 2 enable
   385| speed 2 1000
   386| auto-neg 3 enable
   387| speed 3 1000
   388|#
   389|[gpon]
   390|  <gpon-0/1>
   391| interface gpon 0/1
   392| port 0 ont-auto-find enable
   393| port 0 ont-password-renew extra 1440
   394| port 1 ont-auto-find enable
   395| port 1 ont-password-renew extra 1440
   396| port 2 ont-auto-find enable
   397| port 2 ont-password-renew extra 1440
   398| port 3 ont-auto-find enable
   399| port 3 ont-password-renew extra 1440
   400| port 4 ont-auto-find enable
   401| port 4 ont-password-renew extra 1440
   402| port 5 ont-auto-find enable
   403| port 5 ont-password-renew extra 1440
   404| port 6 ont-auto-find enable
   405| port 6 ont-password-renew extra 1440
   406| port 7 ont-auto-find enable
   407| port 7 ont-password-renew extra 1440
   408| port 8 ont-auto-find enable
   409| port 8 ont-password-renew extra 1440
   410| port 9 ont-auto-find enable
   411| port 9 ont-password-renew extra 1440
   412| port 10 ont-auto-find enable
   413| port 10 ont-password-renew extra 1440
   414| port 11 ont-auto-find enable
   415| port 11 ont-password-renew extra 1440
   416| port 12 ont-auto-find enable
   417| port 12 ont-password-renew extra 1440
   418| port 13 ont-auto-find enable
   419| port 13 ont-password-renew extra 1440
   420| port 14 ont-auto-find enable
   421| port 14 ont-password-renew extra 1440
   422| port 15 ont-auto-find enable
   423| port 15 ont-password-renew extra 1440
   424| ont add 0 0 sn-auth "48575443F5E5A8AB" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15063_andreafatorri_dfde"
   425| ont add 2 0 sn-auth "48575443C6A45AB1" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "113"
   426| ont add 2 1 sn-auth "485754431D0CEE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "SAUDE_PUC"
   427| ont add 2 2 sn-auth "485754431D76B79B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   428| ont add 2 3 sn-auth "485754431DB8849B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "551"
   429| ont add 2 4 sn-auth "48575443F2F962AB" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15885_paulosilveira_2927"
   430| ont add 2 5 sn-auth "485754431D53899B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "569"
   431| ont add 2 6 sn-auth "485754430F72EEB1" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "16515_dellasltda_29d8"
   432| ont add 2 7 sn-auth "485754431D70DD9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "703"
   433| ont add 2 8 sn-auth "485754430F6670B1" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "16891_antoniodasilva_2f98"
   434| ont add 6 0 sn-auth "485754431D2F209B" omci ont-lineprofile-id 964 ont-srvprofile-id 964 desc "ONT_HUAWEI"
   435| ont add 6 1 sn-auth "485754431D917D9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   436| ont add 6 2 sn-auth "485754431D7F809B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   437| ont add 6 3 sn-auth "49544253E8F6E69B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "499"
   438| ont add 6 4 sn-auth "485754431D00EB9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   439| ont add 6 5 sn-auth "485754431DD4269B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "341"
   440| ont add 6 6 sn-auth "485754431D90F69B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   441| ont add 6 7 sn-auth "485754431D1BCD9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "175"
   442| ont add 6 8 sn-auth "49544253E8F6E466" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "503"
   443| ont add 6 9 sn-auth "48575443A6A4929B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "507"
   444| ont add 6 10 sn-auth "49544253E8F6E46B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "509"
   445| ont add 6 11 sn-auth "495442530A6E7038" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "521"
   446| ont add 6 12 sn-auth "485754431DFE479B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   447| ont add 6 13 sn-auth "485754431D99689B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "527"
   448| ont add 6 14 sn-auth "485754431D5F089B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "511"
   449| ont add 6 15 sn-auth "49544253E8F6E697" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "513"
   450| ont add 6 16 sn-auth "49544253E8F6E69D" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "517"
   451| ont add 6 17 sn-auth "49544253E8F6E6A4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "519"
   452| ont add 6 18 sn-auth "495442538B6899B9" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "535"
   453| ont add 6 19 sn-auth "485754431D38009B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   454| ont add 6 20 sn-auth "52434D471998831F" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "529"
   455| ont add 6 21 sn-auth "485754431DDF599B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   456| ont add 6 22 sn-auth "49544253E8F6E69C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "515"
   457| ont add 6 23 sn-auth "52434D473A98232B" omci ont-lineprofile-id 21 ont-srvprofile-id 21 desc "11047_br_sulnet_1e0e"
   458| ont add 6 24 sn-auth "485754431DAB359B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "9933_gevanildosantos_b860"
   459| ont add 6 25 sn-auth "485754431D5C2F9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   460| ont add 6 26 sn-auth "495442533271C76F" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "533"
   461| ont add 6 27 sn-auth "52434D47199881D4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "525"
   462| ont add 6 28 sn-auth "52434D4719988743" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "537"
   463| ont add 6 29 sn-auth "52434D47199880D2" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "539"
   464| ont add 6 30 sn-auth "495442533271C78D" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "541"
   465| ont add 6 31 sn-auth "52434D4719988CDA" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "543"
   466| ont add 6 32 sn-auth "485754431D4F509B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   467| ont add 6 33 sn-auth "52434D4719988311" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "547"
   468| ont add 6 34 sn-auth "485754431D74FF9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "561"
   469| ont add 6 35 sn-auth "485754431D7C619B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "555"
   470| ont add 6 36 sn-auth "485754431D6F829B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "325"
   471| ont add 6 37 sn-auth "485754431DA7649B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "559"
   472| ont add 6 38 sn-auth "485754431D95CE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "557"
   473| ont add 6 39 sn-auth "485754431D6AEE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   474| ont add 6 40 sn-auth "48575443F2F34EAB" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
   475| ont add 6 41 sn-auth "485754431DB5979B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   476| ont add 6 42 sn-auth "485754431D386D9B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "523"
   477| ont add 6 43 sn-auth "485754431D8A8D9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
   478| ont add 6 44 sn-auth "485754431D41749B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   479| ont add 6 45 sn-auth "485754434B23899C" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   480| ont add 6 46 sn-auth "465354540000E3FB" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   481| ont add 6 47 sn-auth "46535454B81CDDD7" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   482| ont add 6 48 sn-auth "48575443F262089E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   483| ont add 6 49 sn-auth "485754431D0AB89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   484| ont add 6 50 sn-auth "48575443B463809E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   485| ont add 6 51 sn-auth "48575443A63A459B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   486| ont add 6 52 sn-auth "46535454B81CF304" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   487| ont add 6 53 sn-auth "46535454B81D0B15" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   488| ont add 6 54 sn-auth "46535454B81CF12B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   489| ont add 6 55 sn-auth "46535454B81CE041" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   490| ont add 6 56 sn-auth "48575443A23AFD9D" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   491| ont add 12 0 sn-auth "52434D4719988363" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "109"
   492| ont add 12 1 sn-auth "52434D4719988276" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "107"
   493| ont add 12 2 sn-auth "52434D47199882A7" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "111"
   494| ont add 12 3 sn-auth "485754431D3AE69B" omci ont-lineprofile-id 3106 ont-srvprofile-id 3106 desc "SSP_3106"
   495| ont add 12 4 sn-auth "49544253E8F6DF7E" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "123"
   496| ont add 12 5 sn-auth "485754431DF4E69B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "125"
   497| ont add 12 6 sn-auth "495442533221BE08" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "1197"
   498| ont add 12 7 sn-auth "52434D4719987EC8" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "137"
   499| ont add 12 8 sn-auth "52434D471998D22B" omci ont-lineprofile-id 3106 ont-srvprofile-id 3106 desc "CLIENTE_DEDICADO"
   500| ont add 12 9 sn-auth "52434D4719987FC9" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "135"
   501| ont add 12 10 sn-auth "485754431DA6499B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "141"
   502| ont add 12 11 sn-auth "485754431DD9A39B" omci ont-lineprofile-id 3907 ont-srvprofile-id 3907 desc "CLIENTE_DEDICADO_ADVICEIT"
   503| ont add 12 12 sn-auth "485754431DE2AF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   504| ont add 12 13 sn-auth "485754431D29539B" omci ont-lineprofile-id 3005 ont-srvprofile-id 3005 desc "TRANSP_L2_TELIUM_S_CAS"
   505| ont add 12 14 sn-auth "485754431D9B7F9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   506| ont add 12 15 sn-auth "485754431D2EF29B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   507| ont add 12 16 sn-auth "485754431D0F779B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   508| ont add 12 17 sn-auth "485754431D175B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   509| ont add 12 18 sn-auth "485754431DC47E9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   510| ont add 12 19 sn-auth "485754431D82C89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   511| ont add 12 20 sn-auth "485754431DAE569B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   512| ont add 12 21 sn-auth "485754431DE04D9B" omci ont-lineprofile-id 30 ont-srvprofile-id 30 desc "ONU_CEIC"
   513| ont add 12 22 sn-auth "485754431D03569B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   514| ont add 12 23 sn-auth "485754431D3ABA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   515| ont add 12 24 sn-auth "485754431D39A29B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   516| ont add 12 25 sn-auth "485754431D22759B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   517| ont add 12 26 sn-auth "485754431D04499B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   518| ont add 12 27 sn-auth "485754431DE8ED9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "343"
   519| ont add 12 28 sn-auth "485754431D04339B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   520| ont add 12 29 sn-auth "485754431D53079B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   521| ont add 12 30 sn-auth "485754431DC9FF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   522| ont add 12 31 sn-auth "485754431D07D39B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   523| ont add 12 32 sn-auth "485754431D23EF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   524| ont add 12 33 sn-auth "485754431D6C069B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   525| ont add 12 34 sn-auth "49544253325312A2" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "369"
   526| ont add 12 35 sn-auth "44443732E606FE80" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "373"
   527| ont add 12 36 sn-auth "49544253E8F8D375" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "371"
   528| ont add 12 37 sn-auth "485754431D69929B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   529| ont add 12 38 sn-auth "485754431DD70D9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   530| ont add 12 39 sn-auth "485754431DAE039B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   531| ont add 12 40 sn-auth "485754431D87919B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   532| ont add 12 41 sn-auth "485754431D01D59B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   533| ont add 12 42 sn-auth "485754431DEDB19B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   534| ont add 12 43 sn-auth "485754431DD0EA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   535| ont add 12 44 sn-auth "485754431D261B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   536| ont add 12 45 sn-auth "485754431DAAB59B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "567"
   537| ont add 12 46 sn-auth "485754431D61E39B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   538| ont add 12 47 sn-auth "485754431D01D49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "CAMERA"
   539| ont add 12 48 sn-auth "485754431DCBDE9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   540| ont add 12 49 sn-auth "485754431D637B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   541| ont add 12 50 sn-auth "485754431D8DA19B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   542| ont add 12 51 sn-auth "485754431DCEEA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   543| ont add 12 52 sn-auth "485754431D34DE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "663"
   544| ont add 12 53 sn-auth "485754431DC18D9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   545| ont add 12 54 sn-auth "485754431DFAC69B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   546| ont add 12 55 sn-auth "485754431D6FFF9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "169"
   547| ont add 12 56 sn-auth "485754431D52589B" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
   548| ont add 12 57 sn-auth "48575443E7165C9E" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
   549| ont add 12 58 sn-auth "485754433217A59D" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
   550| ont add 12 59 sn-auth "4857544380B1A79A" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "TELEALARME_PONTO4"
   551| ont add 14 0 sn-auth "485754431D5E219B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   552| ont add 14 1 sn-auth "485754431D1BB49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   553| ont add 14 2 sn-auth "485754431D10639B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   554| ont add 14 3 sn-auth "485754431D63CE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   555| ont add 14 4 sn-auth "485754431DAB889B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15245_lojaquero_quero_8cc9"
   556| ont add 14 5 sn-auth "485754431DEE7C9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   557| ont add 14 6 sn-auth "485754431DF11A9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   558| ont add 14 7 sn-auth "485754431DB2F89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   559| ont add 14 8 sn-auth "485754431DBE379B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   560| ont add 14 9 sn-auth "485754431DCD239B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   561| ont add 14 10 sn-auth "485754431D29499B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   562| ont add 14 11 sn-auth "485754431D2E7B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   563| ont add 14 12 sn-auth "485754431DBB729B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   564| ont add 14 13 sn-auth "48575443326D819D" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   565| ont add 14 14 sn-auth "48575443E751E79E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   566| ont add 14 15 sn-auth "4653545400006E11" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   567| ont add 14 16 sn-auth "4653545400007369" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   568| ont add 14 17 sn-auth "4653545400006439" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   569| ont add 14 18 sn-auth "485754431DCA839B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   570| ont add 14 19 sn-auth "48575443261CDA9F" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   571| ont add 14 20 sn-auth "48575443D415BD9E" omci ont-lineprofile-id 2107 ont-srvprofile-id 2107 desc "SMSEG212"
   572| ont add 14 21 sn-auth "485754434B881B9C" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   573| ont add 14 22 sn-auth "46535454000072C2" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   574| ont add 14 23 sn-auth "48575443E79A8F9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   575| ont add 14 24 sn-auth "485754431D63839B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "8371_dgt_panvel2_0ee5"
   576| ont add 14 25 sn-auth "48575443F2307C9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   577| ont add 14 26 sn-auth "46535454B81CEEA6" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   578| ont add 14 27 sn-auth "46535454B81D0904" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   579| ont add 14 28 sn-auth "46535454B81CFA68" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   580| ont port native-vlan 2 0 eth 1 vlan 133 priority 0
   581| ont port native-vlan 2 1 eth 1 vlan 133 priority 0
   582| ont port native-vlan 2 2 eth 1 vlan 3107 priority 0
   583| ont port native-vlan 2 3 eth 1 vlan 3105 priority 0
   584| ont port native-vlan 2 5 eth 1 vlan 3105 priority 0
   585| ont port native-vlan 2 7 eth 1 vlan 133 priority 0
   586| ont port native-vlan 6 0 eth 1 vlan 3964 priority 0
   587| ont port native-vlan 6 1 eth 1 vlan 3107 priority 0
   588| ont port native-vlan 6 1 eth 2 vlan 3107 priority 0
   589| ont port native-vlan 6 2 eth 1 vlan 3107 priority 0
   590| ont port native-vlan 6 2 eth 2 vlan 3107 priority 0
   591| ont port native-vlan 6 3 eth 1 vlan 3105 priority 0
   592| ont port native-vlan 6 4 eth 1 vlan 3964 priority 0
   593| ont port native-vlan 6 4 eth 2 vlan 3964 priority 0
   594| ont port native-vlan 6 5 eth 1 vlan 133 priority 0
   595| ont port native-vlan 6 6 eth 1 vlan 3964 priority 0
   596| ont port native-vlan 6 6 eth 2 vlan 3964 priority 0
   597| ont port native-vlan 6 7 eth 1 vlan 133 priority 0
   598| ont port native-vlan 6 8 eth 1 vlan 3105 priority 0
   599| ont port native-vlan 6 9 eth 1 vlan 3105 priority 0
   600| ont port native-vlan 6 10 eth 1 vlan 3105 priority 0
   601| ont port native-vlan 6 11 eth 1 vlan 3105 priority 0
   602| ont port native-vlan 6 12 eth 1 vlan 3964 priority 0
   603| ont port native-vlan 6 12 eth 2 vlan 3964 priority 0
   604| ont port native-vlan 6 13 eth 1 vlan 3105 priority 0
   605| ont port native-vlan 6 14 eth 1 vlan 3105 priority 0
   606| ont port native-vlan 6 15 eth 1 vlan 3105 priority 0
   607| ont port native-vlan 6 16 eth 1 vlan 3105 priority 0
   608| ont port native-vlan 6 17 eth 1 vlan 3105 priority 0
   609| ont port native-vlan 6 18 eth 1 vlan 3105 priority 0
   610| ont port native-vlan 6 19 eth 1 vlan 3964 priority 0
   611| ont port native-vlan 6 19 eth 2 vlan 3964 priority 0
   612| ont port native-vlan 6 20 eth 1 vlan 3105 priority 0
   613| ont port native-vlan 6 21 eth 1 vlan 3964 priority 0
   614| ont port native-vlan 6 21 eth 2 vlan 3964 priority 0
   615| ont port native-vlan 6 22 eth 1 vlan 3105 priority 0
   616| ont port native-vlan 6 23 eth 1 vlan 21 priority 0
   617| ont port native-vlan 6 24 eth 1 vlan 131 priority 0
   618| ont port native-vlan 6 25 eth 1 vlan 3964 priority 0
   619| ont port native-vlan 6 25 eth 2 vlan 3964 priority 0
   620| ont port native-vlan 6 26 eth 1 vlan 3105 priority 0
   621| ont port native-vlan 6 27 eth 1 vlan 3105 priority 0
   622| ont port native-vlan 6 28 eth 1 vlan 3105 priority 0
   623| ont port native-vlan 6 29 eth 1 vlan 3105 priority 0
   624| ont port native-vlan 6 30 eth 1 vlan 3105 priority 0
   625| ont port native-vlan 6 31 eth 1 vlan 3105 priority 0
   626| ont port native-vlan 6 32 eth 1 vlan 3964 priority 0
   627| ont port native-vlan 6 32 eth 2 vlan 3964 priority 0
   628| ont port native-vlan 6 33 eth 1 vlan 3105 priority 0
   629| ont port native-vlan 6 34 eth 1 vlan 133 priority 0
   630| ont port native-vlan 6 35 eth 1 vlan 133 priority 0
   631| ont port native-vlan 6 36 eth 1 vlan 133 priority 0
   632| ont port native-vlan 6 37 eth 1 vlan 133 priority 0
   633| ont port native-vlan 6 38 eth 1 vlan 133 priority 0
   634| ont port native-vlan 6 39 eth 1 vlan 3107 priority 0
   635| ont port native-vlan 6 39 eth 2 vlan 3107 priority 0
   636| ont port native-vlan 6 41 eth 1 vlan 3107 priority 0
   637| ont port native-vlan 6 41 eth 2 vlan 3107 priority 0
   638| ont port native-vlan 6 42 eth 1 vlan 3105 priority 0
   639| ont port native-vlan 6 43 eth 1 vlan 133 priority 0
   640| ont port native-vlan 6 44 eth 1 vlan 3107 priority 0
   641| ont port native-vlan 6 44 eth 2 vlan 3107 priority 0
   642| ont port native-vlan 6 45 eth 1 vlan 3107 priority 0
   643| ont port native-vlan 6 45 eth 2 vlan 3107 priority 0
   644| ont port native-vlan 6 46 eth 1 vlan 3107 priority 0
   645| ont port native-vlan 6 46 eth 2 vlan 3107 priority 0
   646| ont port native-vlan 6 47 eth 1 vlan 3107 priority 0
   647| ont port native-vlan 6 47 eth 2 vlan 3107 priority 0
   648| ont port native-vlan 6 48 eth 1 vlan 3107 priority 0
   649| ont port native-vlan 6 48 eth 2 vlan 3107 priority 0
   650| ont port native-vlan 6 49 eth 1 vlan 3107 priority 0
   651| ont port native-vlan 6 49 eth 2 vlan 3107 priority 0
   652| ont port native-vlan 6 50 eth 1 vlan 3107 priority 0
   653| ont port native-vlan 6 50 eth 2 vlan 3107 priority 0
   654| ont port native-vlan 6 51 eth 1 vlan 3107 priority 0
   655| ont port native-vlan 6 51 eth 2 vlan 3107 priority 0
   656| ont port native-vlan 6 52 eth 1 vlan 3107 priority 0
   657| ont port native-vlan 6 52 eth 2 vlan 3107 priority 0
   658| ont port native-vlan 6 53 eth 1 vlan 3107 priority 0
   659| ont port native-vlan 6 53 eth 2 vlan 3107 priority 0
   660| ont port native-vlan 6 54 eth 1 vlan 3107 priority 0
   661| ont port native-vlan 6 54 eth 2 vlan 3107 priority 0
   662| ont port native-vlan 6 55 eth 1 vlan 3107 priority 0
   663| ont port native-vlan 6 55 eth 2 vlan 3107 priority 0
   664| ont port native-vlan 6 56 eth 1 vlan 3107 priority 0
   665| ont port native-vlan 6 56 eth 2 vlan 3107 priority 0
   666| ont port native-vlan 12 0 eth 1 vlan 3105 priority 0
   667| ont port native-vlan 12 1 eth 1 vlan 3105 priority 0
   668| ont port native-vlan 12 2 eth 1 vlan 3105 priority 0
   669| ont port native-vlan 12 3 eth 1 vlan 133 priority 0
   670| ont port native-vlan 12 3 eth 2 vlan 3106 priority 0
   671| ont port native-vlan 12 4 eth 1 vlan 3105 priority 0
   672| ont port native-vlan 12 5 eth 1 vlan 3105 priority 0
   673| ont port native-vlan 12 6 eth 1 vlan 3105 priority 0
   674| ont port native-vlan 12 7 eth 1 vlan 3105 priority 0
   675| ont port native-vlan 12 8 eth 1 vlan 133 priority 0
   676| ont port native-vlan 12 8 eth 2 vlan 3106 priority 0
   677| ont port native-vlan 12 9 eth 1 vlan 3105 priority 0
   678| ont port native-vlan 12 10 eth 1 vlan 3105 priority 0
   679| ont port native-vlan 12 11 eth 1 vlan 3907 priority 0
   680| ont port native-vlan 12 11 eth 2 vlan 133 priority 0
   681| ont port native-vlan 12 12 eth 1 vlan 3107 priority 0
   682| ont port native-vlan 12 13 eth 1 vlan 3005 priority 0
   683| ont port native-vlan 12 14 eth 1 vlan 3107 priority 0
   684| ont port native-vlan 12 15 eth 1 vlan 3107 priority 0
   685| ont port native-vlan 12 16 eth 1 vlan 3107 priority 0
   686| ont port native-vlan 12 17 eth 1 vlan 3107 priority 0
   687| ont port native-vlan 12 18 eth 1 vlan 3107 priority 0
   688| ont port native-vlan 12 19 eth 1 vlan 3107 priority 0
   689| ont port native-vlan 12 19 eth 2 vlan 3107 priority 0
   690| ont port native-vlan 12 20 eth 1 vlan 3107 priority 0
   691| ont port native-vlan 12 21 eth 1 vlan 3104 priority 0
   692| ont port native-vlan 12 21 eth 2 vlan 3108 priority 0
   693| ont port native-vlan 12 22 eth 1 vlan 3964 priority 0
   694| ont port native-vlan 12 22 eth 2 vlan 3964 priority 0
   695| ont port native-vlan 12 23 eth 1 vlan 3107 priority 0
   696| ont port native-vlan 12 24 eth 1 vlan 3107 priority 0
   697| ont port native-vlan 12 24 eth 2 vlan 3107 priority 0
   698| ont port native-vlan 12 25 eth 1 vlan 3107 priority 0
   699| ont port native-vlan 12 25 eth 2 vlan 3107 priority 0
   700| ont port native-vlan 12 26 eth 1 vlan 3107 priority 0
   701| ont port native-vlan 12 26 eth 2 vlan 3107 priority 0
   702| ont port native-vlan 12 27 eth 1 vlan 133 priority 0
   703| ont port native-vlan 12 28 eth 1 vlan 3107 priority 0
   704| ont port native-vlan 12 29 eth 1 vlan 3107 priority 0
   705| ont port native-vlan 12 30 eth 1 vlan 3107 priority 0
   706| ont port native-vlan 12 30 eth 2 vlan 3107 priority 0
   707| ont port native-vlan 12 31 eth 1 vlan 3107 priority 0
   708| ont port native-vlan 12 32 eth 1 vlan 3107 priority 0
   709| ont port native-vlan 12 33 eth 1 vlan 3107 priority 0
   710| ont port native-vlan 12 34 eth 1 vlan 3105 priority 0
   711| ont port native-vlan 12 35 eth 1 vlan 3105 priority 0
   712| ont port native-vlan 12 36 eth 1 vlan 3105 priority 0
   713| ont port native-vlan 12 37 eth 1 vlan 3107 priority 0
   714| ont port native-vlan 12 38 eth 1 vlan 3107 priority 0
   715| ont port native-vlan 12 38 eth 2 vlan 3107 priority 0
   716| ont port native-vlan 12 39 eth 1 vlan 3964 priority 0
   717| ont port native-vlan 12 39 eth 2 vlan 3964 priority 0
   718| ont port native-vlan 12 40 eth 1 vlan 3964 priority 0
   719| ont port native-vlan 12 40 eth 2 vlan 3964 priority 0
   720| ont port native-vlan 12 41 eth 1 vlan 3964 priority 0
   721| ont port native-vlan 12 41 eth 2 vlan 3964 priority 0
   722| ont port native-vlan 12 42 eth 1 vlan 3107 priority 0
   723| ont port native-vlan 12 43 eth 1 vlan 3107 priority 0
   724| ont port native-vlan 12 44 eth 1 vlan 3107 priority 0
   725| ont port native-vlan 12 44 eth 2 vlan 3107 priority 0
   726| ont port native-vlan 12 45 eth 1 vlan 3105 priority 0
   727| ont port native-vlan 12 46 eth 1 vlan 3107 priority 0
   728| ont port native-vlan 12 47 eth 1 vlan 3107 priority 0
   729| ont port native-vlan 12 48 eth 1 vlan 3964 priority 0
   730| ont port native-vlan 12 48 eth 2 vlan 3964 priority 0
   731| ont port native-vlan 12 49 eth 1 vlan 3107 priority 0
   732| ont port native-vlan 12 49 eth 2 vlan 3107 priority 0
   733| ont port native-vlan 12 50 eth 1 vlan 3107 priority 0
   734| ont port native-vlan 12 51 eth 1 vlan 3107 priority 0
   735| ont port native-vlan 12 52 eth 1 vlan 133 priority 0
   736| ont port native-vlan 12 53 eth 1 vlan 3964 priority 0
   737| ont port native-vlan 12 53 eth 2 vlan 3964 priority 0
   738| ont port native-vlan 12 54 eth 1 vlan 3964 priority 0
   739| ont port native-vlan 12 54 eth 2 vlan 3964 priority 0
   740| ont port native-vlan 12 55 eth 1 vlan 133 priority 0
   741| ont port native-vlan 12 56 eth 1 vlan 3540 priority 0
   742| ont port native-vlan 12 57 eth 1 vlan 3540 priority 0
   743| ont port native-vlan 12 58 eth 1 vlan 133 priority 0
   744| ont port native-vlan 12 59 eth 1 vlan 133 priority 0
   745| ont port native-vlan 14 0 eth 1 vlan 3107 priority 0
   746| ont port native-vlan 14 0 eth 2 vlan 3107 priority 0
   747| ont port native-vlan 14 1 eth 1 vlan 3107 priority 0
   748| ont port native-vlan 14 1 eth 2 vlan 3107 priority 0
   749| ont port native-vlan 14 2 eth 1 vlan 3107 priority 0
   750| ont port native-vlan 14 2 eth 2 vlan 3107 priority 0
   751| ont port native-vlan 14 3 eth 1 vlan 3107 priority 0
   752| ont port native-vlan 14 3 eth 2 vlan 3107 priority 0
   753| ont port native-vlan 14 4 eth 1 vlan 131 priority 0
   754| ont port native-vlan 14 5 eth 1 vlan 3964 priority 0
   755| ont port native-vlan 14 5 eth 2 vlan 3964 priority 0
   756| ont port native-vlan 14 6 eth 1 vlan 3964 priority 0
   757| ont port native-vlan 14 6 eth 2 vlan 3964 priority 0
   758| ont port native-vlan 14 7 eth 1 vlan 3107 priority 0
   759| ont port native-vlan 14 7 eth 2 vlan 3107 priority 0
   760| ont port native-vlan 14 8 eth 1 vlan 3107 priority 0
   761| ont port native-vlan 14 8 eth 2 vlan 3107 priority 0
   762| ont port native-vlan 14 9 eth 1 vlan 3107 priority 0
   763| ont port native-vlan 14 9 eth 2 vlan 3107 priority 0
   764| ont port native-vlan 14 10 eth 1 vlan 3964 priority 0
   765| ont port native-vlan 14 10 eth 2 vlan 3964 priority 0
   766| ont port native-vlan 14 11 eth 1 vlan 3107 priority 0
   767| ont port native-vlan 14 11 eth 2 vlan 3107 priority 0
   768| ont port native-vlan 14 12 eth 1 vlan 3964 priority 0
   769| ont port native-vlan 14 12 eth 2 vlan 3964 priority 0
   770| ont port native-vlan 14 13 eth 1 vlan 3107 priority 0
   771| ont port native-vlan 14 13 eth 2 vlan 3107 priority 0
   772| ont port native-vlan 14 14 eth 1 vlan 3107 priority 0
   773| ont port native-vlan 14 14 eth 2 vlan 3107 priority 0
   774| ont port native-vlan 14 15 eth 1 vlan 3107 priority 0
   775| ont port native-vlan 14 15 eth 2 vlan 3107 priority 0
   776| ont port native-vlan 14 16 eth 1 vlan 3107 priority 0
   777| ont port native-vlan 14 16 eth 2 vlan 3107 priority 0
   778| ont port native-vlan 14 17 eth 1 vlan 3107 priority 0
   779| ont port native-vlan 14 17 eth 2 vlan 3107 priority 0
   780| ont port native-vlan 14 18 eth 1 vlan 3107 priority 0
   781| ont port native-vlan 14 18 eth 2 vlan 3107 priority 0
   782| ont port native-vlan 14 19 eth 1 vlan 3107 priority 0
   783| ont port native-vlan 14 19 eth 2 vlan 3107 priority 0
   784| ont port native-vlan 14 20 eth 1 vlan 3107 priority 0
   785| ont port native-vlan 14 21 eth 1 vlan 3107 priority 0
   786| ont port native-vlan 14 21 eth 2 vlan 3107 priority 0
   787| ont port native-vlan 14 22 eth 1 vlan 3107 priority 0
   788| ont port native-vlan 14 22 eth 2 vlan 3107 priority 0
   789| ont port native-vlan 14 23 eth 1 vlan 3107 priority 0
   790| ont port native-vlan 14 23 eth 2 vlan 3107 priority 0
   791| ont port native-vlan 14 24 eth 1 vlan 131 priority 0
   792| ont port native-vlan 14 25 eth 1 vlan 3107 priority 0
   793| ont port native-vlan 14 25 eth 2 vlan 3107 priority 0
   794| ont port native-vlan 14 26 eth 1 vlan 3107 priority 0
   795| ont port native-vlan 14 26 eth 2 vlan 3107 priority 0
   796| ont port native-vlan 14 27 eth 1 vlan 3107 priority 0
   797| ont port native-vlan 14 27 eth 2 vlan 3107 priority 0
   798| ont port native-vlan 14 28 eth 1 vlan 3107 priority 0
   799| ont port native-vlan 14 28 eth 2 vlan 3107 priority 0
   800|#
   801|[platform-config]
   802|  <platform-config>
   803| autosave type data
   804| autosave interval on
   805| autosave interval 1442
   806| autosave time on
   807| autosave time 00:00:00
   808| autosave type configuration
   809| autosave interval on
   810| autosave interval 1442
   811| autosave time on
   812| autosave time 00:00:00
   813| autosave interval configuration 480
   814|#
   815|[emu-config]
   816|  <emu-config>
   817| emu add 0 fan 0 1  "H902FMSA"
   818|#
   819|[bbs-config]
   820|  <bbs-config>
   821| link-aggregation 0/3 2 ingress workmode lacp-static
   822| link-aggregation add-member 0/3/2 0/3 3
   823| service-port 0 vlan 3105 gpon 0/1/12 ont 0 gemport 105 multi-service user-vlan 3105 tag-transform translate
   824| service-port 1 vlan 3105 gpon 0/1/12 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
   825| service-port 2 vlan 3105 gpon 0/1/12 ont 2 gemport 105 multi-service user-vlan 3105 tag-transform translate
   826| service-port 3 vlan 133 gpon 0/1/12 ont 3 gemport 133 multi-service user-vlan 133 tag-transform translate
   827| service-port 4 vlan 3106 gpon 0/1/12 ont 3 gemport 106 multi-service user-vlan 3106 tag-transform translate
   828| service-port 5 vlan 133 gpon 0/1/2 ont 0 gemport 133 multi-service user-vlan 133 tag-transform translate
   829| service-port 6 vlan 133 gpon 0/1/2 ont 1 gemport 133 multi-service user-vlan 133 tag-transform translate
   830| service-port 7 vlan 3105 gpon 0/1/12 ont 4 gemport 105 multi-service user-vlan 3105 tag-transform translate
   831| service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate
   832| service-port 10 vlan 3105 gpon 0/1/12 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
   833| service-port 11 vlan 3907 gpon 0/1/12 ont 11 gemport 907 multi-service user-vlan 3907 tag-transform translate
   834| service-port 12 vlan 3105 gpon 0/1/12 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   835| service-port 14 vlan 3105 gpon 0/1/12 ont 10 gemport 105 multi-service user-vlan 3105 tag-transform translate
   836| service-port 15 vlan 133 gpon 0/1/12 ont 8 gemport 133 multi-service user-vlan 133 tag-transform translate
   837| service-port 16 vlan 3106 gpon 0/1/12 ont 8 gemport 106 multi-service user-vlan 3106 tag-transform translate
   838| service-port 17 vlan 3105 gpon 0/1/2 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   839| service-port 18 vlan 3108 gpon 0/1/12 ont 21 gemport 108 multi-service user-vlan 3108 tag-transform translate
   840| service-port 19 vlan 3005 gpon 0/1/12 ont 13 gemport 5 multi-service user-vlan 3005 tag-transform transparent
   841| service-port 20 vlan 3105 gpon 0/1/6 ont 42 gemport 105 multi-service user-vlan 3105 tag-transform translate
   842| service-port 21 vlan 3964 gpon 0/1/6 ont 0 gemport 964 multi-service user-vlan 3964 tag-transform translate
   843| service-port 22 vlan 3107 gpon 0/1/12 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
   844| service-port 23 vlan 3107 gpon 0/1/12 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
   845| service-port 24 vlan 3107 gpon 0/1/12 ont 17 gemport 107 multi-service user-vlan 3107 tag-transform translate
   846| service-port 25 vlan 3107 gpon 0/1/12 ont 18 gemport 107 multi-service user-vlan 3107 tag-transform translate
   847| service-port 26 vlan 3540 gpon 0/1/12 ont 56 gemport 540 multi-service user-vlan 3540 tag-transform translate
   848| service-port 27 vlan 3107 gpon 0/1/12 ont 20 gemport 107 multi-service user-vlan 3107 tag-transform translate
   849| service-port 28 vlan 133 gpon 0/1/6 ont 43 gemport 133 multi-service user-vlan 133 tag-transform translate
   850| service-port 29 vlan 3104 gpon 0/1/12 ont 21 gemport 104 multi-service user-vlan 3104 tag-transform translate
   851| service-port 30 vlan 3540 gpon 0/1/12 ont 57 gemport 540 multi-service user-vlan 3540 tag-transform translate
   852| service-port 31 vlan 3107 gpon 0/1/12 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
   853| service-port 32 vlan 3107 gpon 0/1/12 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
   854| service-port 33 vlan 3107 gpon 0/1/12 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
   855| service-port 34 vlan 3107 gpon 0/1/14 ont 20 gemport 107 multi-service user-vlan 3107 tag-transform translate
   856| service-port 37 vlan 133 gpon 0/1/12 ont 27 gemport 133 multi-service user-vlan 133 tag-transform translate
   857| service-port 38 vlan 3107 gpon 0/1/12 ont 28 gemport 107 multi-service user-vlan 3107 tag-transform translate
   858| service-port 39 vlan 3107 gpon 0/1/12 ont 29 gemport 107 multi-service user-vlan 3107 tag-transform translate
   859| service-port 41 vlan 3107 gpon 0/1/12 ont 31 gemport 107 multi-service user-vlan 3107 tag-transform translate
   860| service-port 42 vlan 3107 gpon 0/1/12 ont 32 gemport 107 multi-service user-vlan 3107 tag-transform translate
   861| service-port 43 vlan 3107 gpon 0/1/12 ont 33 gemport 107 multi-service user-vlan 3107 tag-transform translate
   862| service-port 44 vlan 3105 gpon 0/1/12 ont 34 gemport 105 multi-service user-vlan 3105 tag-transform translate
   863| service-port 45 vlan 3105 gpon 0/1/12 ont 35 gemport 105 multi-service user-vlan 3105 tag-transform translate
   864| service-port 46 vlan 3105 gpon 0/1/12 ont 36 gemport 105 multi-service user-vlan 3105 tag-transform translate
   865| service-port 47 vlan 3107 gpon 0/1/12 ont 37 gemport 107 multi-service user-vlan 3107 tag-transform translate
   866| service-port 49 vlan 3964 gpon 0/1/12 ont 39 gemport 964 multi-service user-vlan 3964 tag-transform translate
   867| service-port 50 vlan 3964 gpon 0/1/12 ont 40 gemport 964 multi-service user-vlan 3964 tag-transform translate
   868| service-port 51 vlan 3964 gpon 0/1/12 ont 41 gemport 964 multi-service user-vlan 3964 tag-transform translate
   869| service-port 52 vlan 3107 gpon 0/1/12 ont 42 gemport 107 multi-service user-vlan 3107 tag-transform translate
   870| service-port 53 vlan 3107 gpon 0/1/12 ont 43 gemport 107 multi-service user-vlan 3107 tag-transform translate
   871| service-port 56 vlan 3107 gpon 0/1/12 ont 46 gemport 107 multi-service user-vlan 3107 tag-transform translate
   872| service-port 57 vlan 3107 gpon 0/1/12 ont 47 gemport 107 multi-service user-vlan 3107 tag-transform translate
   873| service-port 58 vlan 3964 gpon 0/1/12 ont 48 gemport 964 multi-service user-vlan 3964 tag-transform translate
   874| service-port 59 vlan 3964 gpon 0/1/12 ont 22 gemport 964 multi-service user-vlan 3964 tag-transform translate
   875| service-port 60 vlan 3107 gpon 0/1/12 ont 50 gemport 107 multi-service user-vlan 3107 tag-transform translate
   876| service-port 61 vlan 131 gpon 0/1/0 ont 0 gemport 131 multi-service user-vlan 131 tag-transform translate
   877| service-port 62 vlan 3107 gpon 0/1/12 ont 51 gemport 107 multi-service user-vlan 3107 tag-transform translate
   878| service-port 63 vlan 133 gpon 0/1/12 ont 52 gemport 133 multi-service user-vlan 133 tag-transform translate
   879| service-port 65 vlan 3964 gpon 0/1/12 ont 53 gemport 964 multi-service user-vlan 3964 tag-transform translate
   880| service-port 66 vlan 3107 gpon 0/1/2 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   881| service-port 67 vlan 3964 gpon 0/1/12 ont 54 gemport 964 multi-service user-vlan 3964 tag-transform translate
   882| service-port 72 vlan 131 gpon 0/1/2 ont 6 gemport 131 multi-service user-vlan 131 tag-transform translate
   883| service-port 73 vlan 133 gpon 0/1/2 ont 7 gemport 133 multi-service user-vlan 133 tag-transform translate
   884| service-port 74 vlan 131 gpon 0/1/2 ont 8 gemport 131 multi-service user-vlan 131 tag-transform translate
   885| service-port 75 vlan 3107 gpon 0/1/12 ont 24 gemport 107 multi-service user-vlan 3107 tag-transform translate
   886| service-port 76 vlan 3105 gpon 0/1/6 ont 11 gemport 105 multi-service user-vlan 3105 tag-transform translate
   887| service-port 79 vlan 3107 gpon 0/1/14 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
   888| service-port 80 vlan 3107 gpon 0/1/14 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
   889| service-port 81 vlan 3107 gpon 0/1/12 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   890| service-port 82 vlan 3107 gpon 0/1/14 ont 3 gemport 107 multi-service user-vlan 3107 tag-transform translate
   891| service-port 83 vlan 131 gpon 0/1/14 ont 4 gemport 131 multi-service user-vlan 131 tag-transform translate
   892| service-port 84 vlan 3964 gpon 0/1/14 ont 5 gemport 964 multi-service user-vlan 3964 tag-transform translate
   893| service-port 85 vlan 3964 gpon 0/1/14 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
   894| service-port 86 vlan 3107 gpon 0/1/14 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
   895| service-port 87 vlan 3107 gpon 0/1/14 ont 8 gemport 107 multi-service user-vlan 3107 tag-transform translate
   896| service-port 88 vlan 3107 gpon 0/1/14 ont 9 gemport 107 multi-service user-vlan 3107 tag-transform translate
   897| service-port 89 vlan 3964 gpon 0/1/14 ont 10 gemport 964 multi-service user-vlan 3964 tag-transform translate
   898| service-port 90 vlan 3107 gpon 0/1/14 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
   899| service-port 91 vlan 3964 gpon 0/1/14 ont 12 gemport 964 multi-service user-vlan 3964 tag-transform translate
   900| service-port 92 vlan 133 gpon 0/1/12 ont 55 gemport 133 multi-service user-vlan 133 tag-transform translate
   901| service-port 94 vlan 3107 gpon 0/1/14 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
   902| service-port 95 vlan 3107 gpon 0/1/6 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
   903| service-port 96 vlan 3107 gpon 0/1/6 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   904| service-port 97 vlan 3107 gpon 0/1/14 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
   905| service-port 98 vlan 3105 gpon 0/1/6 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
   906| service-port 99 vlan 3964 gpon 0/1/6 ont 4 gemport 964 multi-service user-vlan 3964 tag-transform translate
   907| service-port 100 vlan 133 gpon 0/1/6 ont 5 gemport 133 multi-service user-vlan 133 tag-transform translate
   908| service-port 101 vlan 3964 gpon 0/1/6 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
   909| service-port 102 vlan 133 gpon 0/1/6 ont 7 gemport 133 multi-service user-vlan 133 tag-transform translate
   910| service-port 103 vlan 3105 gpon 0/1/6 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
   911| service-port 105 vlan 3105 gpon 0/1/6 ont 10 gemport 105 multi-service user-vlan 3105 tag-transform translate
   912| service-port 107 vlan 3107 gpon 0/1/14 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
   913| service-port 108 vlan 3107 gpon 0/1/14 ont 17 gemport 107 multi-service user-vlan 3107 tag-transform translate
   914| service-port 110 vlan 3105 gpon 0/1/6 ont 15 gemport 105 multi-service user-vlan 3105 tag-transform translate
   915| service-port 111 vlan 3105 gpon 0/1/6 ont 16 gemport 105 multi-service user-vlan 3105 tag-transform translate
   916| service-port 112 vlan 3105 gpon 0/1/6 ont 17 gemport 105 multi-service user-vlan 3105 tag-transform translate
   917| service-port 113 vlan 3964 gpon 0/1/6 ont 12 gemport 964 multi-service user-vlan 3964 tag-transform translate
   918| service-port 115 vlan 3964 gpon 0/1/6 ont 19 gemport 964 multi-service user-vlan 3964 tag-transform translate
   919| service-port 116 vlan 3105 gpon 0/1/6 ont 20 gemport 105 multi-service user-vlan 3105 tag-transform translate
   920| service-port 118 vlan 3105 gpon 0/1/6 ont 22 gemport 105 multi-service user-vlan 3105 tag-transform translate
   921| service-port 119 vlan 21 gpon 0/1/6 ont 23 gemport 21 multi-service user-vlan 21 tag-transform translate
   922| service-port 121 vlan 3964 gpon 0/1/6 ont 21 gemport 964 multi-service user-vlan 3964 tag-transform translate
   923| service-port 122 vlan 3964 gpon 0/1/6 ont 25 gemport 964 multi-service user-vlan 3964 tag-transform translate
   924| service-port 123 vlan 3105 gpon 0/1/6 ont 13 gemport 105 multi-service user-vlan 3105 tag-transform translate
   925| service-port 124 vlan 3107 gpon 0/1/12 ont 19 gemport 107 multi-service user-vlan 3107 tag-transform translate
   926| service-port 125 vlan 3105 gpon 0/1/6 ont 26 gemport 105 multi-service user-vlan 3105 tag-transform translate
   927| service-port 126 vlan 3105 gpon 0/1/6 ont 18 gemport 105 multi-service user-vlan 3105 tag-transform translate
   928| service-port 127 vlan 3105 gpon 0/1/6 ont 27 gemport 105 multi-service user-vlan 3105 tag-transform translate
   929| service-port 128 vlan 3105 gpon 0/1/6 ont 28 gemport 105 multi-service user-vlan 3105 tag-transform translate
   930| service-port 129 vlan 3105 gpon 0/1/6 ont 29 gemport 105 multi-service user-vlan 3105 tag-transform translate
   931| service-port 130 vlan 3105 gpon 0/1/6 ont 30 gemport 105 multi-service user-vlan 3105 tag-transform translate
   932| service-port 131 vlan 3105 gpon 0/1/6 ont 31 gemport 105 multi-service user-vlan 3105 tag-transform translate
   933| service-port 132 vlan 3964 gpon 0/1/6 ont 32 gemport 964 multi-service user-vlan 3964 tag-transform translate
   934| service-port 133 vlan 3107 gpon 0/1/12 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   935| service-port 134 vlan 3105 gpon 0/1/6 ont 33 gemport 105 multi-service user-vlan 3105 tag-transform translate
   936| service-port 135 vlan 3107 gpon 0/1/12 ont 30 gemport 107 multi-service user-vlan 3107 tag-transform translate
   937| service-port 137 vlan 3105 gpon 0/1/12 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   938| service-port 138 vlan 3105 gpon 0/1/2 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
   939| service-port 139 vlan 3107 gpon 0/1/12 ont 44 gemport 107 multi-service user-vlan 3107 tag-transform translate
   940| service-port 141 vlan 3105 gpon 0/1/6 ont 14 gemport 105 multi-service user-vlan 3105 tag-transform translate
   941| service-port 142 vlan 133 gpon 0/1/6 ont 35 gemport 133 multi-service user-vlan 133 tag-transform translate
   942| service-port 143 vlan 3105 gpon 0/1/6 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   943| service-port 144 vlan 133 gpon 0/1/6 ont 34 gemport 133 multi-service user-vlan 133 tag-transform translate
   944| service-port 145 vlan 133 gpon 0/1/6 ont 36 gemport 133 multi-service user-vlan 133 tag-transform translate
   945| service-port 146 vlan 133 gpon 0/1/6 ont 37 gemport 133 multi-service user-vlan 133 tag-transform translate
   946| service-port 147 vlan 133 gpon 0/1/6 ont 38 gemport 133 multi-service user-vlan 133 tag-transform translate
   947| service-port 148 vlan 3105 gpon 0/1/12 ont 45 gemport 105 multi-service user-vlan 3105 tag-transform translate
   948| service-port 150 vlan 3107 gpon 0/1/14 ont 13 gemport 107 multi-service user-vlan 3107 tag-transform translate
   949| service-port 151 vlan 3107 gpon 0/1/6 ont 39 gemport 107 multi-service user-vlan 3107 tag-transform translate
   950| service-port 152 vlan 133 gpon 0/1/6 ont 40 gemport 133 multi-service user-vlan 133 tag-transform translate
   951| service-port 153 vlan 3107 gpon 0/1/6 ont 41 gemport 107 multi-service user-vlan 3107 tag-transform translate
   952| service-port 154 vlan 3107 gpon 0/1/12 ont 49 gemport 107 multi-service user-vlan 3107 tag-transform translate
   953| service-port 155 vlan 131 gpon 0/1/6 ont 24 gemport 131 multi-service user-vlan 131 tag-transform translate
   954| service-port 156 vlan 131 gpon 0/1/2 ont 4 gemport 131 multi-service user-vlan 131 tag-transform translate
   955| service-port 157 vlan 3107 gpon 0/1/12 ont 38 gemport 107 multi-service user-vlan 3107 tag-transform translate
   956| service-port 158 vlan 3107 gpon 0/1/14 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   957| service-port 160 vlan 3107 gpon 0/1/14 ont 18 gemport 107 multi-service user-vlan 3107 tag-transform translate
   958| service-port 161 vlan 133 gpon 0/1/12 ont 58 gemport 133 multi-service user-vlan 133 tag-transform translate
   959| service-port 162 vlan 3107 gpon 0/1/6 ont 44 gemport 107 multi-service user-vlan 3107 tag-transform translate
   960| service-port 163 vlan 3107 gpon 0/1/6 ont 45 gemport 107 multi-service user-vlan 3107 tag-transform translate
   961| service-port 164 vlan 3107 gpon 0/1/6 ont 46 gemport 107 multi-service user-vlan 3107 tag-transform translate
   962| service-port 165 vlan 3107 gpon 0/1/6 ont 47 gemport 107 multi-service user-vlan 3107 tag-transform translate
   963| service-port 166 vlan 3107 gpon 0/1/6 ont 48 gemport 107 multi-service user-vlan 3107 tag-transform translate
   964| service-port 167 vlan 3107 gpon 0/1/14 ont 19 gemport 107 multi-service user-vlan 3107 tag-transform translate
   965| service-port 169 vlan 3107 gpon 0/1/14 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
   966| service-port 170 vlan 3107 gpon 0/1/14 ont 22 gemport 107 multi-service user-vlan 3107 tag-transform translate
   967| service-port 171 vlan 3105 gpon 0/1/12 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
   968| service-port 172 vlan 3107 gpon 0/1/14 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
   969| service-port 173 vlan 131 gpon 0/1/14 ont 24 gemport 131 multi-service user-vlan 131 tag-transform translate
   970| service-port 174 vlan 3107 gpon 0/1/14 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   971| service-port 176 vlan 3107 gpon 0/1/6 ont 50 gemport 107 multi-service user-vlan 3107 tag-transform translate
   972| service-port 177 vlan 3107 gpon 0/1/14 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   973| service-port 178 vlan 3107 gpon 0/1/6 ont 51 gemport 107 multi-service user-vlan 3107 tag-transform translate
   974| service-port 179 vlan 3107 gpon 0/1/14 ont 27 gemport 107 multi-service user-vlan 3107 tag-transform translate
   975| service-port 180 vlan 3107 gpon 0/1/14 ont 28 gemport 107 multi-service user-vlan 3107 tag-transform translate
   976| service-port 181 vlan 3107 gpon 0/1/6 ont 52 gemport 107 multi-service user-vlan 3107 tag-transform translate
   977| service-port 182 vlan 3107 gpon 0/1/6 ont 53 gemport 107 multi-service user-vlan 3107 tag-transform translate
   978| service-port 183 vlan 3107 gpon 0/1/6 ont 54 gemport 107 multi-service user-vlan 3107 tag-transform translate
   979| service-port 184 vlan 3107 gpon 0/1/6 ont 55 gemport 107 multi-service user-vlan 3107 tag-transform translate
   980| service-port 185 vlan 3107 gpon 0/1/6 ont 56 gemport 107 multi-service user-vlan 3107 tag-transform translate
   981| service-port 251 vlan 133 gpon 0/1/12 ont 59 gemport 133 multi-service user-vlan 133 tag-transform translate
   982| service-port 252 vlan 3107 gpon 0/1/6 ont 49 gemport 107 multi-service user-vlan 3107 tag-transform translate
   983| monitor uplink-port non-unicast port 0/3/0
   984| monitor uplink-port non-unicast port 0/3/1
   985| monitor uplink-port non-unicast port 0/3/2
   986| monitor uplink-port non-unicast port 0/4/0
   987| monitor uplink-port non-unicast port 0/4/1
   988| monitor uplink-port non-unicast port 0/4/2
   989| monitor uplink-port non-unicast port 0/4/3
   990|#
   991|[abs-config]
   992|  <abs-config>
   993| monitor uplink-port pppoe port 0/3/0
   994| monitor uplink-port pppoe port 0/3/1
   995| monitor uplink-port pppoe port 0/3/2
   996| monitor uplink-port pppoe port 0/4/0
   997| monitor uplink-port pppoe port 0/4/1
   998| monitor uplink-port pppoe port 0/4/2
   999| monitor uplink-port pppoe port 0/4/3
  1000| nac bind pki-domain default
  1001|#
  1002|[lacp-config]
  1003|  <lacp-config>
  1004| link-aggregation lacp-key 0/3/2 1
  1005|#
  1006|[pki-config]
  1007|  <pki-config>
  1008|pki domain default
  1009| pki import-certificate local filename huawei_equipment.crt
  1010| pki import-certificate trusted-ca filename huawei_access_product_ca.crt
  1011| pki import-certificate trusted-ca filename huawei_equipment_root_ca.crt
  1012|pki switch preset-certificate chain link
  1013|#
  1014|[dimmng-config]
  1015|  <dimmng-config>
  1016|dim measure disable
  1017|#
  1018|[snmp]
  1019|  <snmp>
  1020| snmp-agent local-engineid 800007DB036C3491244627
  1021| snmp-agent community read cipher "%$%#cV(!!!!!!!!!!!!r-S*Wi7}:<GN$14DSU]DbQT.8&mvJ'eNAK;-,q3~H!"LGCAA|:|*JH(WGSG5g}y#;4Ygv+%$%#"
  1022|#
  1023|[ip-tunnel-profile]
  1024|  <ip-tunnel-profile>
  1025| ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
  1026|#
  1027| ip tunnel priority-profile vxlan index 0 name "default-profile-0" inbound dscp-outer cos-inner
  1028|#
  1029|#
  1030|set neid 0xD5B4A6
  1031|#
  1032|[aaa]
  1033|  <aaa>
  1034|aaa
  1035| #
  1036| authentication-scheme "default"
  1037| #
  1038| authorization-scheme "default"
  1039| #
  1040| accounting-scheme "default"
  1041| #
  1042| domain "default"
  1043|#
  1044|[Interface]
  1045|  <Vlanif130>
  1046|interface Vlanif130
  1047| ip address 10.244.13.254 255.255.255.252
  1048|#
  1049|  <MEth0>
  1050|interface MEth0
  1051| ip address 10.244.13.250 255.255.255.252
  1052|#
  1053|  <NULL0>
  1054|interface NULL0
  1055|#
  1056|undo dcn
  1057|#
  1058|[route-static]
  1059|  <route-static>
  1060|ip route-static 0.0.0.0 0.0.0.0 10.244.13.253
  1061|#
  1062|[post-system]
  1063|  <post-system>
  1064| ssh user "radiusnet" authentication-type password
  1065| ssh user "root" authentication-type password
  1066| ssh user "suporte" authentication-type password
  1067| ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
  1068| ssh server hmac sha2_512 sha2_256 sha1
  1069| ssh server key-exchange dh_group_exchange_sha256 curve25519_sha256
  1070| ssh server dh-exchange min-len 2048
  1071| ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
  1072| ntp-service server disable
  1073| ntp-service ipv6 server disable
  1074| ntp-service server source-interface all disable
  1075| ntp-service ipv6 server source-interface all disable
  1076| ntp-service unicast-server 200.160.0.8
  1077| ntp-service unicast-server 200.189.40.8
  1078| ssh client publickey rsa rsa_sha2_256 rsa_sha2_512 ed25519
  1079| ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
  1080| ssh client hmac sha2_512 sha2_256 sha1
  1081| ssh client key-exchange dh_group_exchange_sha256 curve25519_sha256
  1082|#
  1083|[source-interface]
  1084|  <source-interface>
  1085| sysman server source ssh meth 0
  1086| sysman server source ssh any-interface
  1087| sysman server source snmp any-interface
  1088|#
  1089|return
  1090|
  1091|```
  1092|