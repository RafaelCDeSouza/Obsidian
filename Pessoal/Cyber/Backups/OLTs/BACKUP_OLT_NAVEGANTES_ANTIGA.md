[[OLT_NAVEGANTES]]

     1|```yaml
     2|#
     3|timezone GMT- 03:00
     4|#
     5|[pre-config]
     6|  <pre-config>
     7| board add 0/0 H901PISC
     8| board add 0/1 H901GPSF
     9| board add 0/5 H901PISC
    10|#
    11|[sysmode]
    12|  <sysmode>
    13| switch vdsl mode to tr129
    14| xpon mode switch-to profile-mode
    15| sysmode end
    16|#
    17|[global-config]
    18|  <global-config>
    19| sysname POP20_OLT1_S_JOAO
    20| terminal user-profile name suporte 0 0 00:00:00 00:00:00
    21| terminal user name buildrun_new_password root *j$3b$%DYnL0&7{Kw:81~Vzn],$_m[D#h^kb+S#Xb,UFbq2tLCe5=oNISvo&!6K@:g4$* 7 0000:00:00:00:00:00 2000:01:02:08:37:58 root 1 first-login-info 0 self-changed-password 1 "-----"
    22| terminal user name buildrun_new_password radiusnet *~uc$3b$y|8iMCR>^"L-083UO+_:$bNAFE`s\IF,tYU2JK&gG._g:D=O;m5T'z@$OJD{B$* 0 2000:01:03:09:39:53 2000:01:03:09:40:26 root 2
    23|first-login-info 0 self-changed-password 1 "-----"
    24| terminal user name buildrun_new_password suporte *~ub$3b$Q[;^76Fg0Eyc:jLytPp8$kPD"4Xh|_+XG/1)KL`rQYu/j2o2"BBvV}]*u*MxG$* 0 2025:07:28:09:27:39 2025:07:28:09:28:19 suporte 3
    25|first-login-info 0 self-changed-password 1 "-----"
    26| terminal user name buildrun_new_password rafael *c$3b$*vTVFg_;{0<rk6&MbkkY$P&v$4)N~@=>0b'Uk7((#8r_--<VJ9W6d>3$ZiNA6$* 0 2025:11:03:09:51:34 2025:11:03:09:51:34 root 4
    27|first-login-info 1 self-changed-password 0 "-----"
    28| system modify logon password enable all
    29| system user password security mode enhance
    30| system user password security-length 12
    31| terminal user name history_password root *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$*
    32| terminal user name history_password radiusnet *~uc$3b$$dLq*%OZd")E+UALQs71$NIRs!%f<k)48PV3,*BR5]@0gK<Z[a4YCHcS*j0_8$*
    33| terminal user name history_password suporte *~ub$3b$>1}{YF`U0MK;`u<FrVl.$2b[yPO\}u+`mKy/L{DMKORc4G~qQtBUy6BN;kZXH$*
    34| ssh client key-exchange sftp dh_group_exchange_sha256 curve25519_sha256
    35| ssh client dh-exchange sftp min-len 2048
    36| xpon ont optical-ddm quick-query disable
    37| dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
    38| dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
    39| ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
    40|  ont-port pots 1 eth 2
    41|  port vlan eth 1 transparent
    42|  port vlan eth 2 transparent
    43|  port vlan iphost translation 201 user-vlan 201
    44|  commit
    45| ont-srvprofile gpon profile-id 201 profile-name "SRVPROFILE_BRIDGE_201"
    46|  ont-port eth 1
    47|  port vlan eth 1 translation 201 user-vlan 201
    48|  commit
    49| ont-srvprofile gpon profile-id 203 profile-name "SRVPROFILE_BRIDGE_203"
    50|  ont-port eth 2
    51|  port vlan eth 1 translation 203 user-vlan 203
    52|  commit
    53| ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
    54|  ont-port eth 1
    55|  port vlan eth 1 translation 3105 user-vlan 3105
    56|  commit
    57| ont-srvprofile gpon profile-id 3106 profile-name "SRVPROFILE_BRIDGE_3106"
    58|  ont-port eth 1
    59|  port vlan eth 1 translation 3106 user-vlan 3106
    60|  commit
    61| ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
    62|  ont-port eth 2
    63|  port vlan eth 1 translation 3107 user-vlan 3107
    64|  commit
    65| ont-srvprofile gpon profile-id 3256 profile-name "SRVPROFILE_BRIDGE_V3256"
    66|  ont-port eth 1
    67|  port vlan eth 1 translation 3256 user-vlan 3256
    68|  commit
    69| ont-srvprofile gpon profile-id 3261 profile-name "SRVPROFILE_BRIDGE_V3261"
    70|  ont-port eth 1
    71|  port vlan eth 1 translation 3261 user-vlan 3261
    72|  commit
    73| ont-srvprofile gpon profile-id 3341 profile-name "SRVPROFILE_BRIDGE_V3341"
    74|  ont-port eth 2
    75|  port q-in-q eth 1 enable
    76|  commit
    77| ont-srvprofile gpon profile-id 3964 profile-name "SRVPROFILE_BRIDGE_V3964"
    78|  ont-port eth 2
    79|  port q-in-q eth 1 enable
    80|  commit
    81| ont-lineprofile gpon profile-id 0 profile-name "line-profile_default_0"
    82|  omcc encrypt off
    83|  tcont 0 dba-profile-id 2
    84|  tcont 1 dba-profile-id 0
    85|  commit
    86|  quit
    87| ont-lineprofile gpon profile-id 201 profile-name "LINE_PROFILE_201"
    88|  omcc encrypt on
    89|  tcont 1 dba-profile-id 10
    90|  gem add 201 eth tcont 1 encrypt on
    91|  gem mapping 201 0 vlan 201
    92|  commit
    93|  quit
    94| ont-lineprofile gpon profile-id 203 profile-name "LINE_PROFILE_203"
    95|  omcc encrypt on
    96|  tcont 1 dba-profile-id 10
    97|  gem add 203 eth tcont 1 encrypt on
    98|  gem mapping 203 0 vlan 203
    99|  commit
   100|  quit
   101| ont-lineprofile gpon profile-id 3105 profile-name "LINE_PROFILE_3105"
   102|  omcc encrypt on
   103|  tcont 1 dba-profile-id 11
   104|  gem add 105 eth tcont 1 encrypt on
   105|  gem mapping 105 0 vlan 3105
   106|  commit
   107|  quit
   108| ont-lineprofile gpon profile-id 3106 profile-name "LINE_PROFILE_3106"
   109|  omcc encrypt on
   110|  tcont 1 dba-profile-id 11
   111|  gem add 106 eth tcont 1 encrypt on
   112|  gem mapping 106 0 vlan 3106
   113|  commit
   114|  quit
   115| ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
   116|  omcc encrypt on
   117|  tcont 1 dba-profile-id 11
   118|  gem add 107 eth tcont 1 encrypt on
   119|  gem mapping 107 0 vlan 3107
   120|  commit
   121|  quit
   122| ont-lineprofile gpon profile-id 3256 profile-name "LINE_PROFILE_V3256"
   123|  omcc encrypt on
   124|  tcont 1 dba-profile-id 10
   125|  gem add 256 eth tcont 1 encrypt on
   126|  gem mapping 256 0 vlan 3256
   127|  commit
   128|  quit
   129| ont-lineprofile gpon profile-id 3261 profile-name "LINE_PROFILE_V3261"
   130|  omcc encrypt on
   131|  tcont 1 dba-profile-id 10
   132|  gem add 261 eth tcont 1 encrypt on
   133|  gem mapping 261 0 vlan 3261
   134|  commit
   135|  quit
   136| ont-lineprofile gpon profile-id 3341 profile-name "LINE_PROFILE_V3341"
   137|  omcc encrypt on
   138|  tcont 1 dba-profile-id 10
   139|  gem add 341 eth tcont 0 encrypt on
   140|  gem mapping 341 0 vlan 3341
   141|  commit
   142|  quit
   143| ont-lineprofile gpon profile-id 3964 profile-name "LINE_PROFILE_V3964"
   144|  omcc encrypt on
   145|  tcont 1 dba-profile-id 10
   146|  gem add 964 eth tcont 0 encrypt on
   147|  gem mapping 964 0 vlan 3964
   148|  commit
   149|  quit
   150|#
   151|[device-config]
   152|  <device-config>
   153| board add standby sub0 CPCG
   154| system hardware-recovery disable serial-link
   155|#
   156|[public-config]
   157|  <public-config>
   158| monitor uplink-port traffic port 0/3/0
   159| monitor uplink-port traffic port 0/3/1
   160| monitor uplink-port traffic port 0/3/2
   161| monitor uplink-port traffic port 0/3/3
   162| monitor uplink-port traffic port 0/4/0
   163| monitor uplink-port traffic port 0/4/1
   164| monitor uplink-port traffic port 0/4/2
   165| monitor uplink-port traffic port 0/4/3
   166| sysman service telnet disable
   167| sysman service dhcp-relay disable
   168| sysman service dhcpv6-relay disable
   169|#
   170|[dnet-config]
   171|  <dnet-config>
   172| dedicated-net dedicated-net-id 0 dedicated-net-name "DNet-0"
   173|#
   174|[vlan-config]
   175|  <vlan-config>
   176| vlan 200 to 201 smart
   177| vlan 203 smart
   178| vlan 3105 to 3107 smart
   179| vlan 3256 smart
   180| vlan 3261 smart
   181| vlan 3341 smart
   182| vlan 3964 smart
   183| vlan desc 200 description "VLAN200_POP20_OLT1_GERENCIA"
   184| vlan desc 201 description "VLAN201_POP20_OLT1_PPPOE_SHOSSLE"
   185| vlan desc 203 description "VLAN203_POP20_OLT1_PPPOE_CYBER"
   186| vlan desc 3107 description "VLAN3107_CAMERAS_POA_MAIS_SEG"
   187| vlan desc 3256 description "VLAN_3256_TRANSP_TELIUM_DIVERSOS"
   188| vlan desc 3261 description "VLAN_3261_PROV_VALESAT"
   189| vlan desc 3341 description "VLAN_3341_TRANSP_L2_EQT"
   190| vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
   191| port vlan 200 to 201 0/3 0
   192| port vlan 200 to 201 0/3 1
   193| port vlan 200 to 201 0/3 2
   194| port vlan 200 to 201 0/3 3
   195| port vlan 203 0/3 0
   196| port vlan 203 0/3 1
   197| port vlan 203 0/3 2
   198| port vlan 203 0/3 3
   199| port vlan 3105 to 3107 0/3 0
   200| port vlan 3105 to 3107 0/3 1
   201| port vlan 3105 to 3107 0/3 2
   202| port vlan 3105 to 3107 0/3 3
   203| port vlan 3256 0/3 0
   204| port vlan 3256 0/3 1
   205| port vlan 3256 0/3 2
   206| port vlan 3256 0/3 3
   207| port vlan 3261 0/3 0
   208| port vlan 3261 0/3 1
   209| port vlan 3261 0/3 2
   210| port vlan 3261 0/3 3
   211| port vlan 3341 0/3 0
   212| port vlan 3341 0/3 1
   213| port vlan 3341 0/3 2
   214| port vlan 3964 0/3 0
   215| port vlan 3964 0/3 1
   216| port vlan 3964 0/3 2
   217| port vlan 3964 0/3 3
   218|#
   219|[mpu]
   220|  <mpu-0/3>
   221|interface mpu 0/3
   222| auto-neg 0 disable
   223| speed 0 10000
   224| auto-neg 1 disable
   225| speed 1 10000
   226| auto-neg 2 enable
   227| speed 2 1000
   228| auto-neg 3 enable
   229| speed 3 1000
   230|#
   231|  <mpu-0/4>
   232|interface mpu 0/4
   233| auto-neg 0 disable
   234| speed 0 10000
   235| auto-neg 1 disable
   236| speed 1 10000
   237| auto-neg 2 enable
   238| speed 2 1000
   239| auto-neg 3 enable
   240| speed 3 1000
   241|#
   242|[gpon]
   243|  <gpon-0/1>
   244| interface gpon 0/1
   245| port 0 ont-auto-find enable
   246| port 0 ont-password-renew extra 1440
   247| port 1 ont-auto-find enable
   248| port 1 ont-password-renew extra 1440
   249| port 2 ont-auto-find enable
   250| port 2 ont-password-renew extra 1440
   251| port 3 ont-auto-find enable
   252| port 3 ont-password-renew extra 1440
   253| port 4 ont-auto-find enable
   254| port 4 ont-password-renew extra 1440
   255| port 5 ont-auto-find enable
   256| port 5 ont-password-renew extra 1440
   257| port 6 ont-auto-find enable
   258| port 6 ont-password-renew extra 1440
   259| port 7 ont-auto-find enable
   260| port 7 ont-password-renew extra 1440
   261| port 8 ont-auto-find enable
   262| port 8 ont-password-renew extra 1440
   263| port 9 ont-auto-find enable
   264| port 9 ont-password-renew extra 1440
   265| port 10 ont-auto-find enable
   266| port 10 ont-password-renew extra 1440
   267| port 11 ont-auto-find enable
   268| port 11 ont-password-renew extra 1440
   269| port 12 ont-auto-find enable
   270| port 12 ont-password-renew extra 1440
   271| port 13 ont-auto-find enable
   272| port 13 ont-password-renew extra 1440
   273| port 14 ont-auto-find enable
   274| port 14 ont-password-renew extra 1440
   275| port 15 ont-auto-find enable
   276| port 15 ont-password-renew extra 1440
   277| ont add 0 0 sn-auth "52434D471998C77A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "RAISECOM_V"
   278| ont add 4 0 sn-auth "48575443D4A8A09E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   279| ont add 4 1 sn-auth "485754431D06DD9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   280| ont add 4 2 sn-auth "4857544337768D9A" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   281| ont add 4 3 sn-auth "485754431D4AC69B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   282| ont add 4 4 sn-auth "48575443F28B059E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   283| ont add 4 5 sn-auth "48575443A636CE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   284| ont add 4 6 sn-auth "465354540000DAD5" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "139"
   285| ont add 4 7 sn-auth "465354540000E7F7" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   286| ont add 4 8 sn-auth "46535454B81CE436" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   287| ont add 4 9 sn-auth "48575443A475DF9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   288| ont add 4 10 sn-auth "46535454000072AE" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   289| ont add 4 11 sn-auth "46535454B81CE444" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   290| ont add 4 12 sn-auth "48575443168CCBA6" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   291| ont add 4 13 sn-auth "46535454B81CEED2" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   292| ont add 4 14 sn-auth "48575443F239B79E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   293| ont add 4 15 sn-auth "48575443F2FB91AB" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "17933_lucielemelo_7ef4"
   294| ont add 13 0 sn-auth "52434D47199899DD" omci ont-lineprofile-id 3341 ont-srvprofile-id 3341 desc "ONT_HUAWEI"
   295| ont add 13 1 sn-auth "52434D471998E8A0" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "ONT_HUAWEI"
   296| ont add 13 2 sn-auth "52434D4719988608" omci ont-lineprofile-id 3256 ont-srvprofile-id 3256 desc "ONT_HUAWEI"
   297| ont add 13 3 sn-auth "485754431D2A4D9B" omci ont-lineprofile-id 203 ont-srvprofile-id 203 desc "ONT_HUAWEI"
   298| ont add 15 0 sn-auth "4653545400006E08" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   299| ont add 15 1 sn-auth "485754431D940F9B" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "4597_pop20_franca_162b"
   300| ont add 15 2 sn-auth "46535454B81D05BB" omci ont-lineprofile-id 201 ont-srvprofile-id 201 desc "4603_navegantes_p2_ea1d"
   301| ont port native-vlan 0 0 eth 1 vlan 3107 priority 0
   302| ont port native-vlan 4 0 eth 1 vlan 3107 priority 0
   303| ont port native-vlan 4 0 eth 2 vlan 3107 priority 0
   304| ont port native-vlan 4 1 eth 1 vlan 3107 priority 0
   305| ont port native-vlan 4 1 eth 2 vlan 3107 priority 0
   306| ont port native-vlan 4 2 eth 1 vlan 3107 priority 0
   307| ont port native-vlan 4 2 eth 2 vlan 3107 priority 0
   308| ont port native-vlan 4 3 eth 1 vlan 3107 priority 0
   309| ont port native-vlan 4 3 eth 2 vlan 3107 priority 0
   310| ont port native-vlan 4 4 eth 1 vlan 3107 priority 0
   311| ont port native-vlan 4 4 eth 2 vlan 3107 priority 0
   312| ont port native-vlan 4 5 eth 1 vlan 3107 priority 0
   313| ont port native-vlan 4 5 eth 2 vlan 3107 priority 0
   314| ont port native-vlan 4 6 eth 1 vlan 3105 priority 0
   315| ont port native-vlan 4 7 eth 1 vlan 3107 priority 0
   316| ont port native-vlan 4 7 eth 2 vlan 3107 priority 0
   317| ont port native-vlan 4 8 eth 1 vlan 3107 priority 0
   318| ont port native-vlan 4 8 eth 2 vlan 3107 priority 0
   319| ont port native-vlan 4 9 eth 1 vlan 3107 priority 0
   320| ont port native-vlan 4 9 eth 2 vlan 3107 priority 0
   321| ont port native-vlan 4 10 eth 1 vlan 3107 priority 0
   322| ont port native-vlan 4 10 eth 2 vlan 3107 priority 0
   323| ont port native-vlan 4 11 eth 1 vlan 3107 priority 0
   324| ont port native-vlan 4 11 eth 2 vlan 3107 priority 0
   325| ont port native-vlan 4 12 eth 1 vlan 3107 priority 0
   326| ont port native-vlan 4 12 eth 2 vlan 3107 priority 0
   327| ont port native-vlan 4 13 eth 1 vlan 3107 priority 0
   328| ont port native-vlan 4 13 eth 2 vlan 3107 priority 0
   329| ont port native-vlan 4 14 eth 1 vlan 3107 priority 0
   330| ont port native-vlan 4 14 eth 2 vlan 3107 priority 0
   331| ont port native-vlan 13 0 eth 1 vlan 3341 priority 0
   332| ont port native-vlan 13 0 eth 2 vlan 3341 priority 0
   333| ont port native-vlan 13 1 eth 1 vlan 201 priority 0
   334| ont port native-vlan 13 2 eth 1 vlan 3256 priority 0
   335| ont port native-vlan 13 3 eth 1 vlan 203 priority 0
   336| ont port native-vlan 15 0 eth 1 vlan 3107 priority 0
   337| ont port native-vlan 15 1 eth 1 vlan 201 priority 0
   338| ont port native-vlan 15 2 eth 1 vlan 201 priority 0
   339|#
   340|[platform-config]
   341|  <platform-config>
   342| autosave type data
   343| autosave interval on
   344| autosave interval 1442
   345| autosave time on
   346| autosave time 01:30:00
   347| autosave type configuration
   348| autosave interval on
   349| autosave interval 1442
   350| autosave time on
   351| autosave time 01:00:00
   352| autosave interval configuration 480
   353|#
   354|[emu-config]
   355|  <emu-config>
   356| emu add 0 fan 0 1  "H902FMSA"
   357|#
   358|[bbs-config]
   359|  <bbs-config>
   360| service-port 0 vlan 3107 gpon 0/1/15 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
   361| service-port 1 vlan 201 gpon 0/1/15 ont 1 gemport 201 multi-service user-vlan 201 tag-transform translate
   362| service-port 2 vlan 3341 gpon 0/1/13 ont 0 gemport 341 multi-service user-vlan 3341 tag-transform translate
   363| service-port 3 vlan 203 gpon 0/1/13 ont 3 gemport 203 multi-service user-vlan 203 tag-transform translate
   364| service-port 4 vlan 3256 gpon 0/1/13 ont 2 gemport 256 multi-service user-vlan 3256 tag-transform translate
   365| service-port 5 vlan 3107 gpon 0/1/0 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
   366| service-port 6 vlan 3107 gpon 0/1/4 ont 13 gemport 107 multi-service user-vlan 3107 tag-transform translate
   367| service-port 8 vlan 3107 gpon 0/1/4 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
   368| service-port 9 vlan 201 gpon 0/1/4 ont 15 gemport 201 multi-service user-vlan 201 tag-transform translate
   369| service-port 10 vlan 201 gpon 0/1/15 ont 2 gemport 201 multi-service user-vlan 201 tag-transform translate
   370| service-port 13 vlan 3107 gpon 0/1/4 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
   371| service-port 14 vlan 3107 gpon 0/1/4 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
   372| service-port 15 vlan 3107 gpon 0/1/4 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   373| service-port 16 vlan 3107 gpon 0/1/4 ont 3 gemport 107 multi-service user-vlan 3107 tag-transform translate
   374| service-port 17 vlan 3107 gpon 0/1/4 ont 4 gemport 107 multi-service user-vlan 3107 tag-transform translate
   375| service-port 18 vlan 3107 gpon 0/1/4 ont 5 gemport 107 multi-service user-vlan 3107 tag-transform translate
   376| service-port 19 vlan 3105 gpon 0/1/4 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
   377| service-port 20 vlan 3107 gpon 0/1/4 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
   378| service-port 22 vlan 3107 gpon 0/1/4 ont 8 gemport 107 multi-service user-vlan 3107 tag-transform translate
   379| service-port 23 vlan 3107 gpon 0/1/4 ont 9 gemport 107 multi-service user-vlan 3107 tag-transform translate
   380| service-port 24 vlan 3107 gpon 0/1/4 ont 10 gemport 107 multi-service user-vlan 3107 tag-transform translate
   381| service-port 25 vlan 3107 gpon 0/1/4 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
   382| service-port 26 vlan 3107 gpon 0/1/4 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
   383| monitor uplink-port non-unicast port 0/3/0
   384| monitor uplink-port non-unicast port 0/3/1
   385| monitor uplink-port non-unicast port 0/3/2
   386| monitor uplink-port non-unicast port 0/3/3
   387| monitor uplink-port non-unicast port 0/4/0
   388| monitor uplink-port non-unicast port 0/4/1
   389| monitor uplink-port non-unicast port 0/4/2
   390| monitor uplink-port non-unicast port 0/4/3
   391|#
   392|[abs-config]
   393|  <abs-config>
   394| monitor uplink-port pppoe port 0/3/0
   395| monitor uplink-port pppoe port 0/3/1
   396| monitor uplink-port pppoe port 0/3/2
   397| monitor uplink-port pppoe port 0/3/3
   398| monitor uplink-port pppoe port 0/4/0
   399| monitor uplink-port pppoe port 0/4/1
   400| monitor uplink-port pppoe port 0/4/2
   401| monitor uplink-port pppoe port 0/4/3
   402| nac bind pki-domain default
   403|#
   404|[pki-config]
   405|  <pki-config>
   406|pki domain default
   407| pki import-certificate local filename huawei_equipment.crt
   408| pki import-certificate trusted-ca filename huawei_access_product_ca.crt
   409| pki import-certificate trusted-ca filename huawei_equipment_root_ca.crt
   410|pki switch preset-certificate chain link
   411|#
   412|[dimmng-config]
   413|  <dimmng-config>
   414|dim measure disable
   415|#
   416|[snmp]
   417|  <snmp>
   418| snmp-agent local-engineid 800007DB0398F08353126A
   419| snmp-agent community read cipher "%$%#cV(!!!!!!!!!!!!IE\6$(vApX+|d{/6a#;D5%$)OcB>1&7=XX@-~JgYZK)xM[Y%f+*4lu2-sM&B@_iiTj\2}8%$%#"
   420|#
   421|[ip-tunnel-profile]
   422|  <ip-tunnel-profile>
   423| ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
   424|#
   425| ip tunnel priority-profile vxlan index 0 name "default-profile-0" inbound dscp-outer cos-inner
   426|#
   427|#
   428|set neid 0x95B796
   429|#
   430|[aaa]
   431|  <aaa>
   432|aaa
   433| #
   434| authentication-scheme "default"
   435| #
   436| authorization-scheme "default"
   437| #
   438| accounting-scheme "default"
   439| #
   440| domain "default"
   441|#
   442|[Interface]
   443|  <Vlanif200>
   444|interface Vlanif200
   445| ip address 10.244.20.250 255.255.255.252
   446|#
   447|  <MEth0>
   448|interface MEth0
   449| ip address 10.11.104.2 255.255.255.0
   450|#
   451|  <NULL0>
   452|interface NULL0
   453|#
   454|undo dcn
   455|#
   456|[route-static]
   457|  <route-static>
   458|ip route-static 0.0.0.0 0.0.0.0 10.244.20.249
   459|#
   460|[post-system]
   461|  <post-system>
   462| ssh user "radiusnet" authentication-type password
   463| ssh user "rafael" authentication-type password
   464| ssh user "root" authentication-type password
   465| ssh user "suporte" authentication-type password
   466| ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
   467| ssh server hmac sha2_512 sha2_256 sha1
   468| ssh server key-exchange dh_group_exchange_sha256 curve25519_sha256
   469| ssh server dh-exchange min-len 2048
   470| ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
   471| ntp-service server disable
   472| ntp-service ipv6 server disable
   473| ntp-service server source-interface all disable
   474| ntp-service ipv6 server source-interface all disable
   475| ntp-service unicast-server 200.160.0.8
   476| ntp-service unicast-server 200.189.40.8
   477| ssh client publickey rsa rsa_sha2_256 rsa_sha2_512 ed25519
   478| ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
   479| ssh client hmac sha2_512 sha2_256 sha1
   480| ssh client key-exchange dh_group_exchange_sha256 curve25519_sha256
   481|#
   482|[source-interface]
   483|  <source-interface>
   484| sysman server source ssh meth 0
   485| sysman server source ssh any-interface
   486| sysman server source snmp any-interface
   487|#
   488|return
   489|
   490|```
   491|