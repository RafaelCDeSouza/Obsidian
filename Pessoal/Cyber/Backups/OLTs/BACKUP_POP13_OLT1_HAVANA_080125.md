---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de POP13_OLT1

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | POP13_OLT1 |
| **Tipo** | OLT |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[POP13_OLT1]]
     2|
     3|     1|```yaml
     4|     2|[Active: H901MPSG; Standby: H901MPSG]
     5|     3|[Patch Info: SPC200]
     6|     4|[MA5800V100R022: 5011]
     7|     5|#
     8|     6|timezone GMT- 03:00
     9|     7|#
    10|     8|[pre-config]
    11|     9|  <pre-config>
    12|    10| board add 0/0 H901PISA
    13|    11| board add 0/1 H903GPSF
    14|    12|#
    15|    13|[sysmode]
    16|    14|  <sysmode>
    17|    15| switch vdsl mode to tr129
    18|    16| xpon mode switch-to profile-mode
    19|    17| sysmode end
    20|    18|#
    21|    19|[global-config]
    22|    20|  <global-config>
    23|    21| sysname POP13_OLT1_HAVANA
    24|    22| terminal user-profile name suporte 0 0 00:00:00 00:00:00
    25|    23| terminal user name buildrun_new_password root *j$3b$'|xh%#oao0xa$1(v3b7.$+k:\Y;S_M)j]fhN32ilONqgZN^,[zQ@SA*;IFbG7$* 7 0000:00:00:00:00:00 2023:07:09:10:34:44 root 1 first-login-info 0 self-changed-password 1 "-----"
    26|    24| terminal user name buildrun_new_password radiusnet *~uc$3b$\Q_wUL$Uv@5f73XgY/HX$TM<cMMzCN1VXy&(x>D.DB`,g'|o1QEt&_TJ(X5E3$* 0 2023:07:01:04:49:35 2023:07:01:04:59:48 root 2 first-login-info 0 self-changed-password 1 "-----"
    27|    25| terminal user name buildrun_new_password suporte *~ub$3b$!g]SB`[/$G%eagGgRk.A$x9iQ,(I7A&kM2IKKD!a@pQX/Zn|E_&:)M>PVYNt>$* 0 2025:07:28:09:24:10 2025:07:28:09:24:47 suporte 3 first-login-info 0 self-changed-password 1 "Suporte Operador"
    28|    26| system modify logon password enable all
    29|    27| system user password security mode enhance
    30|    28| system user password security-length 12
    31|    29| terminal user name history_password root *j$3b$q|rIE*eMKIVFPXI9%VG5$'zA6B5)7#0/t|:Vh@Aw<+fEK5[t.o;%+'P)&^$D5$* *j$3b$w{C62YDl,&$[3iCFU'a4$bRBk.w,A!UTH9,,ZN'R0G^k%1_'PKF9%]\U$:^!*$* *j$3b$3|X`>Rv]tJ@'.}G~}tJH$9%rLG;^HlWl@hg1,Qo,CM2TbL8)M0E$fz$LB:]WA$* *j$3b$QZ)ENC'Zi;lvR~>F&H|M$aCVw7;jLL~Fsv'~sNh;@GHw}M{qJD~31r+M0gXo)$*
    32|    30| terminal user name history_password radiusnet *~uc$3b$-qex9:,/",oYL*3yOJ~V$/`rK-B.k-Na^m*7n>/lNKO]iJu4d$:vL%<1Znm(;$*
    33|    31| terminal user name history_password suporte *~ub$3b$\["@~sYK5:x^|2I=A*xY$B$,rCB^k0)yA=xJzGUK@XyE;2J$sGGar;^U,7^jG$*
    34|    32| ssh client key-exchange sftp dh_group_exchange_sha256 curve25519_sha256
    35|    33| ssh client dh-exchange sftp min-len 2048
    36|    34| xpon ont optical-ddm quick-query disable
    37|    35| dba-profile add profile-id 10 profile-name "dba-profile_10" type4 max 1024000
    38|    36| dba-profile add profile-id 11 profile-name "dba-profile_11" type4 max 102400
    39|    37| dba-profile add profile-id 12 profile-name "dba-profile_12" type4 max 204800
    40|    38| ont wan-profile profile-id 0 profile-name "wan-profile_0"
    41|    39|  nat enable
    42|    40|  quit
    43|    41| ont-srvprofile gpon profile-id 1 profile-name "SRVPROFILE_ROUTER"
    44|    42|  ont-port pots 1 eth 2
    45|    43|  port vlan eth 1 transparent
    46|    44|  port vlan eth 2 transparent
    47|    45|  port vlan iphost translation 131 user-vlan 131
    48|    46|  commit
    49|    47| ont-srvprofile gpon profile-id 3 profile-name "SRVPROFILE_ROUTER_CYBER"
    50|    48|  ont-port pots 1 eth 2
    51|    49|  port vlan eth 1 transparent
    52|    50|  port vlan eth 2 transparent
    53|    51|  port vlan iphost translation 133 user-vlan 133
    54|    52|  commit
    55|    53| ont-srvprofile gpon profile-id 10 profile-name "ONT-1GE"
    56|    54|  ont-port eth 1 catv adaptive 8
    57|    55|  ring check enable
    58|    56|  commit
    59|    57| ont-srvprofile gpon profile-id 21 profile-name "SRVPROFILE_BRIDGE_21"
    60|    58|  ont-port eth 1
    61|    59|  port vlan eth 1 translation 21 user-vlan 21
    62|    60|  commit
    63|    61| ont-srvprofile gpon profile-id 30 profile-name "SRVPROFILE_BRIDGE_30_DUASP"
    64|    62|  ont-port eth 2
    65|    63|  port vlan eth 1 translation 3104 user-vlan 3104
    66|    64|  port vlan eth 2 translation 3108 user-vlan 3108
    67|    65|  commit
    68|    66| ont-srvprofile gpon profile-id 131 profile-name "SRVPROFILE_BRIDGE_131"
    69|    67|  ont-port eth 1
    70|    68|  port vlan eth 1 translation 131 user-vlan 131
    71|    69|  commit
    72|    70| ont-srvprofile gpon profile-id 133 profile-name "SRVPROFILE_BRIDGE_133"
    73|    71|  ont-port eth 1
    74|    72|  port vlan eth 1 translation 133 user-vlan 133
    75|    73|  commit
    76|    74| ont-srvprofile gpon profile-id 134 profile-name "SRVPROFILE_BRIDGE_133_DUASP"
    77|    75|  ont-port eth 2
    78|    76|  port vlan eth 1 translation 133 user-vlan 133
    79|    77|  port vlan eth 2 translation 133 user-vlan 133
    80|    78|  commit
    81|    79| ont-srvprofile gpon profile-id 964 profile-name "SRVPROFILE_BRIDGE_3964"
    82|    80|  ont-port eth 1
    83|    81|  port q-in-q eth 1 enable
    84|    82|  commit
    85|    83| ont-srvprofile gpon profile-id 2107 profile-name "SRVPROFILE2_BRIDGE_3107"
    86|    84|  ont-port eth 1
    87|    85|  port vlan eth 1 translation 3107 user-vlan 3107
    88|    86|  commit
    89|    87| ont-srvprofile gpon profile-id 3005 profile-name "SRVPROFILE_BRIDGE_V3005"
    90|    88|  ont-port eth 2
    91|    89|  port q-in-q eth 1 enable
    92|    90|  commit
    93|    91| ont-srvprofile gpon profile-id 3103 profile-name "SRVPROFILE_BRIDGE_3103"
    94|    92|  ont-port eth 1
    95|    93|  port vlan eth 1 translation 3103 user-vlan 3103
    96|    94|  commit
    97|    95| ont-srvprofile gpon profile-id 3104 profile-name "SRVPROFILE_BRIDGE_3104"
    98|    96|  ont-port eth 1
    99|    97|  port vlan eth 1 translation 3104 user-vlan 3104
   100|    98|  commit
   101|    99| ont-srvprofile gpon profile-id 3105 profile-name "SRVPROFILE_BRIDGE_3105"
   102|   100|  ont-port eth 1
   103|   101|  port vlan eth 1 translation 3105 user-vlan 3105
   104|   102|  commit
   105|   103| ont-srvprofile gpon profile-id 3106 profile-name "SRVPROFILE_BRIDGE_3106"
   106|   104|  ont-port eth 4
   107|   105|  port vlan eth 1 translation 133 user-vlan 133
   108|   106|  port vlan eth 2 translation 3106 user-vlan 3106
   109|   107|  port vlan eth 3 translation 3106 user-vlan 3106
   110|   108|  port vlan eth 4 translation 3106 user-vlan 3106
   111|   109|  commit
   112|   110| ont-srvprofile gpon profile-id 3107 profile-name "SRVPROFILE_BRIDGE_3107"
   113|   111|  ont-port eth 2
   114|   112|  port vlan eth 1 translation 3107 user-vlan 3107
   115|   113|  port vlan eth 2 translation 3108 user-vlan 3108
   116|   114|  commit
   117|   115| ont-srvprofile gpon profile-id 3108 profile-name "SRVPROFILE_BRIDGE_3108"
   118|   116|  ont-port eth 1
   119|   117|  port vlan eth 1 translation 3108 user-vlan 3108
   120|   118|  commit
   121|   119| ont-srvprofile gpon profile-id 3540 profile-name "SRVPROFILE_BRIDGE_3540"
   122|   120|  ont-port eth 1
   123|   121|  port vlan eth 1 translation 3540 user-vlan 3540
   124|   122|  commit
   125|   123| ont-srvprofile gpon profile-id 3907 profile-name "SRVPROFILE_BRIDGE_3907"
   126|   124|  ont-port eth 2
   127|   125|  port q-in-q eth 1 enable
   128|   126|  port vlan eth 1 translation 3907 user-vlan 3907
   129|   127|  port vlan eth 2 translation 133 user-vlan 133
   130|   128|  commit
   131|   129| ont-srvprofile gpon profile-id 3964 profile-name "SRVPROFILE_BRIDGE_V3964"
   132|   130|  ont-port eth 2
   133|   131|  port q-in-q eth 1 enable
   134|   132|  commit
   135|   133| ont-lineprofile gpon profile-id 0 profile-name "line-profile_default_0"
   136|   134|  omcc encrypt off
   137|   135|  tcont 0 dba-profile-id 2
   138|   136|  tcont 1 dba-profile-id 0
   139|   137|  commit
   140|   138|  quit
   141|   139| ont-lineprofile gpon profile-id 1 profile-name "SMARTOLT_FLEXIBLE_GPON"
   142|   140|  fec-upstream enable
   143|   141|  omcc encrypt on
   144|   142|  tr069-management enable
   145|   143|  mapping-mode priority
   146|   144|  tcont 0 dba-profile-id 2
   147|   145|  tcont 1 dba-profile-id 11
   148|   146|  tcont 2 dba-profile-id 11
   149|   147|  tcont 3 dba-profile-id 11
   150|   148|  gem add 1 eth tcont 1 encrypt on
   151|   149|  gem add 2 eth tcont 2 encrypt on
   152|   150|  gem add 3 eth tcont 3 encrypt on
   153|   151|  gem mapping 1 1 priority 0
   154|   152|  gem mapping 2 1 priority 2
   155|   153|  gem mapping 3 1 priority 5
   156|   154|  commit
   157|   155|  quit
   158|   156| ont-lineprofile gpon profile-id 2 profile-name "line-profile_2"
   159|   157|  omcc encrypt on
   160|   158|  commit
   161|   159|  quit
   162|   160| ont-lineprofile gpon profile-id 21 profile-name "LINE_PROFILE_21"
   163|   161|  omcc encrypt on
   164|   162|  tcont 1 dba-profile-id 10
   165|   163|  gem add 21 eth tcont 1 encrypt on
   166|   164|  gem mapping 21 0 vlan 21
   167|   165|  commit
   168|   166|  quit
   169|   167| ont-lineprofile gpon profile-id 30 profile-name "LINE_PROFILE_30"
   170|   168|  omcc encrypt on
   171|   169|  tcont 1 dba-profile-id 10
   172|   170|  tcont 2 dba-profile-id 10
   173|   171|  gem add 104 eth tcont 1 encrypt on
   174|   172|  gem add 108 eth tcont 2 encrypt on
   175|   173|  gem mapping 104 0 vlan 3104
   176|   174|  gem mapping 108 0 vlan 3108
   177|   175|  commit
   178|   176|  quit
   179|   177| ont-lineprofile gpon profile-id 131 profile-name "LINE_PROFILE_131"
   180|   178|  omcc encrypt on
   181|   179|  tcont 1 dba-profile-id 10
   182|   180|  gem add 131 eth tcont 1 encrypt on
   183|   181|  gem mapping 131 0 vlan 131
   184|   182|  commit
   185|   183|  quit
   186|   184| ont-lineprofile gpon profile-id 133 profile-name "LINE_PROFILE_133"
   187|   185|  omcc encrypt on
   188|   186|  tcont 1 dba-profile-id 10
   189|   187|  gem add 133 eth tcont 1 encrypt on
   190|   188|  gem mapping 133 0 vlan 133
   191|   189|  commit
   192|   190|  quit
   193|   191| ont-lineprofile gpon profile-id 134 profile-name "LINE_PROFILE_V133_DUASP"
   194|   192|  omcc encrypt on
   195|   193|  tcont 1 dba-profile-id 10
   196|   194|  tcont 2 dba-profile-id 10
   197|   195|  gem add 131 eth tcont 1 encrypt on
   198|   196|  gem add 133 eth tcont 2 encrypt on
   199|   197|  gem mapping 131 0 vlan 131
   200|   198|  gem mapping 133 0 vlan 133
   201|   199|  commit
   202|   200|  quit
   203|   201| ont-lineprofile gpon profile-id 964 profile-name "LINE_PROFILE_3964"
   204|   202|  omcc encrypt on
   205|   203|  tcont 1 dba-profile-id 10
   206|   204|  gem add 964 eth tcont 1 encrypt on
   207|   205|  gem mapping 964 0 vlan 3964
   208|   206|  commit
   209|   207|  quit
   210|   208| ont-lineprofile gpon profile-id 2107 profile-name "LINE_PROFILE2_3107"
   211|   209|  omcc encrypt on
   212|   210|  tcont 1 dba-profile-id 11
   213|   211|  gem add 107 eth tcont 1 encrypt on
   214|   212|  gem mapping 107 0 vlan 3107
   215|   213|  commit
   216|   214|  quit
   217|   215| ont-lineprofile gpon profile-id 3005 profile-name "LINE_PROFILE_V3005"
   218|   216|  omcc encrypt on
   219|   217|  tcont 1 dba-profile-id 10
   220|   218|  gem add 5 eth tcont 0 encrypt on
   221|   219|  gem mapping 5 0 vlan 3005
   222|   220|  commit
   223|   221|  quit
   224|   222| ont-lineprofile gpon profile-id 3103 profile-name "LINE_PROFILE_3103"
   225|   223|  omcc encrypt on
   226|   224|  tcont 1 dba-profile-id 11
   227|   225|  gem add 103 eth tcont 1 encrypt on
   228|   226|  gem mapping 103 0 vlan 3103
   229|   227|  commit
   230|   228|  quit
   231|   229| ont-lineprofile gpon profile-id 3104 profile-name "LINE_PROFILE_3104"
   232|   230|  omcc encrypt on
   233|   231|  tcont 1 dba-profile-id 11
   234|   232|  gem add 104 eth tcont 1 encrypt on
   235|   233|  gem mapping 104 0 vlan 3104
   236|   234|  commit
   237|   235|  quit
   238|   236| ont-lineprofile gpon profile-id 3105 profile-name "LINE_PROFILE_3105"
   239|   237|  omcc encrypt on
   240|   238|  tcont 1 dba-profile-id 11
   241|   239|  gem add 105 eth tcont 1 encrypt on
   242|   240|  gem mapping 105 0 vlan 3105
   243|   241|  commit
   244|   242|  quit
   245|   243| ont-lineprofile gpon profile-id 3106 profile-name "LINE_PROFILE_3106"
   246|   244|  omcc encrypt on
   247|   245|  tcont 1 dba-profile-id 10
   248|   246|  tcont 2 dba-profile-id 11
   249|   247|  gem add 106 eth tcont 2 encrypt on
   250|   248|  gem add 133 eth tcont 1 encrypt on
   251|   249|  gem mapping 106 0 vlan 3106
   252|   250|  gem mapping 133 0 vlan 133
   253|   251|  commit
   254|   252|  quit
   255|   253| ont-lineprofile gpon profile-id 3107 profile-name "LINE_PROFILE_3107"
   256|   254|  omcc encrypt on
   257|   255|  tcont 1 dba-profile-id 11
   258|   256|  tcont 2 dba-profile-id 11
   259|   257|  gem add 107 eth tcont 1 encrypt on
   260|   258|  gem add 108 eth tcont 2 encrypt on
   261|   259|  gem mapping 107 0 vlan 3107
   262|   260|  gem mapping 108 0 vlan 310
   263|   261|  commit
   264|   262|  quit
   265|   263| ont-lineprofile gpon profile-id 3108 profile-name "LINE_PROFILE_3108"
   266|   264|  omcc encrypt on
   267|   265|  tcont 1 dba-profile-id 11
   268|   266|  gem add 108 eth tcont 1 encrypt on
   269|   267|  gem mapping 108 0 vlan 3108
   270|   268|  commit
   271|   269|  quit
   272|   270| ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
   273|   271|  omcc encrypt on
   274|   272|  tcont 1 dba-profile-id 10
   275|   273|  gem add 540 eth tcont 1 encrypt on
   276|   274|  gem mapping 540 0 vlan 3540
   277|   275|  commit
   278|   276|  quit
   279|   277| ont-lineprofile gpon profile-id 3907 profile-name "LINE_PROFILE_3907"
   280|   278|  omcc encrypt on
   281|   279|  tcont 1 dba-profile-id 12
   282|   280|  tcont 2 dba-profile-id 12
   283|   281|  gem add 133 eth tcont 2 encrypt on
   284|   282|  gem add 907 eth tcont 1 encrypt on
   285|   283|  gem mapping 133 0 vlan 133
   286|   284|  gem mapping 907 0 vlan 3907
   287|   285|  commit
   288|   286|  quit
   289|   287| ont-lineprofile gpon profile-id 3964 profile-name "LINE_PROFILE_V3964"
   290|   288|  omcc encrypt on
   291|   289|  tcont 1 dba-profile-id 10
   292|   290|  gem add 964 eth tcont 0 encrypt on
   293|   291|  gem mapping 964 0 vlan 3964
   294|   292|  commit
   295|   293|  quit
   296|   294|#
   297|   295|[device-config]
   298|   296|  <device-config>
   299|   297| board add standby sub0 CPCG
   300|   298| system hardware-recovery disable serial-link
   301|   299|#
   302|   300|[public-config]
   303|   301|  <public-config>
   304|   302| monitor uplink-port traffic port 0/3/0
   305|   303| monitor uplink-port traffic port 0/3/1
   306|   304| monitor uplink-port traffic port 0/3/2
   307|   305| monitor uplink-port traffic port 0/4/0
   308|   306| monitor uplink-port traffic port 0/4/1
   309|   307| monitor uplink-port traffic port 0/4/2
   310|   308| monitor uplink-port traffic port 0/4/3
   311|   309| sysman service telnet disable
   312|   310| sysman service dhcp-relay disable
   313|   311| sysman service dhcpv6-relay disable
   314|   312|#
   315|   313|[dnet-config]
   316|   314|  <dnet-config>
   317|   315| dedicated-net dedicated-net-id 0 dedicated-net-name "DNet-0"
   318|   316|#
   319|   317|[vlan-config]
   320|   318|  <vlan-config>
   321|   319| vlan 21 smart
   322|   320| vlan 130 to 131 smart
   323|   321| vlan 133 smart
   324|   322| vlan 3005 smart
   325|   323| vlan 3103 to 3108 smart
   326|   324| vlan 3540 smart
   327|   325| vlan 3907 smart
   328|   326| vlan 3964 smart
   329|   327| vlan desc 21 description "VLAN21_POP17_OLT1_PPPOE_SCHOSSL"
   330|   328| vlan desc 130 description "VLAN130_POP13_OLT1_GERENCIA"
   331|   329| vlan desc 131 description "VLAN131_POP13_OLT1_PPPOE"
   332|   330| vlan desc 133 description "VLAN133_POP13_OLT1_PPPOE"
   333|   331| vlan desc 3005 description "VLAN_3005_TRANSP_L2_TELIUM"
   334|   332| vlan desc 3107 description "VLAN_3107_POA_+_SEG"
   335|   333| vlan desc 3108 description "VLAN_3108_POA_+_SEG"
   336|   334| vlan desc 3540 description "VLAN_3540_MEDIANET"
   337|   335| vlan desc 3907 description "VLAN_3907_TRANSP_ALIANCA"
   338|   336| vlan desc 3964 description "VLAN_3964_TRANSP_L2_ALT"
   339|   337| port vlan 21 0/3 0
   340|   338| port vlan 21 0/3 1
   341|   339| port vlan 21 0/3 2
   342|   340| port vlan 130 to 131 0/3 0
   343|   341| port vlan 130 to 131 0/3 1
   344|   342| port vlan 130 to 131 0/3 2
   345|   343| port vlan 133 0/3 0
   346|   344| port vlan 133 0/3 1
   347|   345| port vlan 133 0/3 2
   348|   346| port vlan 3005 0/3 0
   349|   347| port vlan 3005 0/3 1
   350|   348| port vlan 3005 0/3 2
   351|   349| port vlan 3103 to 3108 0/3 0
   352|   350| port vlan 3103 to 3108 0/3 1
   353|   351| port vlan 3103 to 3108 0/3 2
   354|   352| port vlan 3540 0/3 0
   355|   353| port vlan 3540 0/3 1
   356|   354| port vlan 3540 0/3 2
   357|   355| port vlan 3907 0/3 0
   358|   356| port vlan 3907 0/3 1
   359|   357| port vlan 3907 0/3 2
   360|   358| port vlan 3964 0/3 0
   361|   359| port vlan 3964 0/3 1
   362|   360| port vlan 3964 0/3 2
   363|   361|#
   364|   362|[mpu]
   365|   363|  <mpu-0/3>
   366|   364|interface mpu 0/3
   367|   365| auto-neg 0 disable
   368|   366| speed 0 10000
   369|   367| auto-neg 1 disable
   370|   368| speed 1 10000
   371|   369| auto-neg 2 enable
   372|   370| speed 2 1000
   373|   371| auto-neg 3 enable
   374|   372| speed 3 1000
   375|   373| jumbo-frame 0 enable
   376|   374| jumbo-frame 1 enable
   377|   375| jumbo-frame 2 enable
   378|   376| jumbo-frame 3 enable
   379|   377|#
   380|   378|  <mpu-0/4>
   381|   379|interface mpu 0/4
   382|   380| auto-neg 0 disable
   383|   381| speed 0 10000
   384|   382| auto-neg 1 disable
   385|   383| speed 1 10000
   386|   384| auto-neg 2 enable
   387|   385| speed 2 1000
   388|   386| auto-neg 3 enable
   389|   387| speed 3 1000
   390|   388|#
   391|   389|[gpon]
   392|   390|  <gpon-0/1>
   393|   391| interface gpon 0/1
   394|   392| port 0 ont-auto-find enable
   395|   393| port 0 ont-password-renew extra 1440
   396|   394| port 1 ont-auto-find enable
   397|   395| port 1 ont-password-renew extra 1440
   398|   396| port 2 ont-auto-find enable
   399|   397| port 2 ont-password-renew extra 1440
   400|   398| port 3 ont-auto-find enable
   401|   399| port 3 ont-password-renew extra 1440
   402|   400| port 4 ont-auto-find enable
   403|   401| port 4 ont-password-renew extra 1440
   404|   402| port 5 ont-auto-find enable
   405|   403| port 5 ont-password-renew extra 1440
   406|   404| port 6 ont-auto-find enable
   407|   405| port 6 ont-password-renew extra 1440
   408|   406| port 7 ont-auto-find enable
   409|   407| port 7 ont-password-renew extra 1440
   410|   408| port 8 ont-auto-find enable
   411|   409| port 8 ont-password-renew extra 1440
   412|   410| port 9 ont-auto-find enable
   413|   411| port 9 ont-password-renew extra 1440
   414|   412| port 10 ont-auto-find enable
   415|   413| port 10 ont-password-renew extra 1440
   416|   414| port 11 ont-auto-find enable
   417|   415| port 11 ont-password-renew extra 1440
   418|   416| port 12 ont-auto-find enable
   419|   417| port 12 ont-password-renew extra 1440
   420|   418| port 13 ont-auto-find enable
   421|   419| port 13 ont-password-renew extra 1440
   422|   420| port 14 ont-auto-find enable
   423|   421| port 14 ont-password-renew extra 1440
   424|   422| port 15 ont-auto-find enable
   425|   423| port 15 ont-password-renew extra 1440
   426|   424| ont add 0 0 sn-auth "48575443F5E5A8AB" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15063_andreafatorri_dfde"
   427|   425| ont add 2 0 sn-auth "48575443C6A45AB1" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "113"
   428|   426| ont add 2 1 sn-auth "485754431D0CEE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "SAUDE_PUC"
   429|   427| ont add 2 2 sn-auth "485754431D76B79B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   430|   428| ont add 2 3 sn-auth "485754431DB8849B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "551"
   431|   429| ont add 2 4 sn-auth "48575443F2F962AB" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15885_paulosilveira_2927"
   432|   430| ont add 2 5 sn-auth "485754431D53899B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "569"
   433|   431| ont add 2 6 sn-auth "485754430F72EEB1" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "16515_dellasltda_29d8"
   434|   432| ont add 2 7 sn-auth "485754431D70DD9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "703"
   435|   433| ont add 2 8 sn-auth "485754430F6670B1" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "16891_antoniodasilva_2f98"
   436|   434| ont add 6 0 sn-auth "485754431D2F209B" omci ont-lineprofile-id 964 ont-srvprofile-id 964 desc "ONT_HUAWEI"
   437|   435| ont add 6 1 sn-auth "485754431D917D9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   438|   436| ont add 6 2 sn-auth "485754431D7F809B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   439|   437| ont add 6 3 sn-auth "49544253E8F6E69B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "499"
   440|   438| ont add 6 4 sn-auth "485754431D00EB9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   441|   439| ont add 6 5 sn-auth "485754431DD4269B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "341"
   442|   440| ont add 6 6 sn-auth "485754431D90F69B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   443|   441| ont add 6 7 sn-auth "485754431D1BCD9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "175"
   444|   442| ont add 6 8 sn-auth "49544253E8F6E466" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "503"
   445|   443| ont add 6 9 sn-auth "48575443A6A4929B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "507"
   446|   444| ont add 6 10 sn-auth "49544253E8F6E46B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "509"
   447|   445| ont add 6 11 sn-auth "495442530A6E7038" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "521"
   448|   446| ont add 6 12 sn-auth "485754431DFE479B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   449|   447| ont add 6 13 sn-auth "485754431D99689B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "527"
   450|   448| ont add 6 14 sn-auth "485754431D5F089B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "511"
   451|   449| ont add 6 15 sn-auth "49544253E8F6E697" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "513"
   452|   450| ont add 6 16 sn-auth "49544253E8F6E69D" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "517"
   453|   451| ont add 6 17 sn-auth "49544253E8F6E6A4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "519"
   454|   452| ont add 6 18 sn-auth "495442538B6899B9" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "535"
   455|   453| ont add 6 19 sn-auth "485754431D38009B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   456|   454| ont add 6 20 sn-auth "52434D471998831F" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "529"
   457|   455| ont add 6 21 sn-auth "485754431DDF599B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   458|   456| ont add 6 22 sn-auth "49544253E8F6E69C" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "515"
   459|   457| ont add 6 23 sn-auth "52434D473A98232B" omci ont-lineprofile-id 21 ont-srvprofile-id 21 desc "11047_br_sulnet_1e0e"
   460|   458| ont add 6 24 sn-auth "485754431DAB359B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "9933_gevanildosantos_b860"
   461|   459| ont add 6 25 sn-auth "485754431D5C2F9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   462|   460| ont add 6 26 sn-auth "495442533271C76F" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "533"
   463|   461| ont add 6 27 sn-auth "52434D47199881D4" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "525"
   464|   462| ont add 6 28 sn-auth "52434D4719988743" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "537"
   465|   463| ont add 6 29 sn-auth "52434D47199880D2" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "539"
   466|   464| ont add 6 30 sn-auth "495442533271C78D" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "541"
   467|   465| ont add 6 31 sn-auth "52434D4719988CDA" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "543"
   468|   466| ont add 6 32 sn-auth "485754431D4F509B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   469|   467| ont add 6 33 sn-auth "52434D4719988311" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "547"
   470|   468| ont add 6 34 sn-auth "485754431D74FF9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "561"
   471|   469| ont add 6 35 sn-auth "485754431D7C619B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "555"
   472|   470| ont add 6 36 sn-auth "485754431D6F829B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "325"
   473|   471| ont add 6 37 sn-auth "485754431DA7649B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "559"
   474|   472| ont add 6 38 sn-auth "485754431D95CE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "557"
   475|   473| ont add 6 39 sn-auth "485754431D6AEE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   476|   474| ont add 6 40 sn-auth "48575443F2F34EAB" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
   477|   475| ont add 6 41 sn-auth "485754431DB5979B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   478|   476| ont add 6 42 sn-auth "485754431D386D9B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "523"
   479|   477| ont add 6 43 sn-auth "485754431D8A8D9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
   480|   478| ont add 6 44 sn-auth "485754431D41749B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   481|   479| ont add 6 45 sn-auth "485754434B23899C" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   482|   480| ont add 6 46 sn-auth "465354540000E3FB" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   483|   481| ont add 6 47 sn-auth "46535454B81CDDD7" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   484|   482| ont add 6 48 sn-auth "48575443F262089E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   485|   483| ont add 6 49 sn-auth "485754431D0AB89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   486|   484| ont add 6 50 sn-auth "48575443B463809E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   487|   485| ont add 6 51 sn-auth "48575443A63A459B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   488|   486| ont add 6 52 sn-auth "46535454B81CF304" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   489|   487| ont add 6 53 sn-auth "46535454B81D0B15" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   490|   488| ont add 6 54 sn-auth "46535454B81CF12B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   491|   489| ont add 6 55 sn-auth "46535454B81CE041" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   492|   490| ont add 6 56 sn-auth "48575443A23AFD9D" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   493|   491| ont add 12 0 sn-auth "52434D4719988363" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "109"
   494|   492| ont add 12 1 sn-auth "52434D4719988276" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "107"
   495|   493| ont add 12 2 sn-auth "52434D47199882A7" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "111"
   496|   494| ont add 12 3 sn-auth "485754431D3AE69B" omci ont-lineprofile-id 3106 ont-srvprofile-id 3106 desc "SSP_3106"
   497|   495| ont add 12 4 sn-auth "49544253E8F6DF7E" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "123"
   498|   496| ont add 12 5 sn-auth "485754431DF4E69B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "125"
   499|   497| ont add 12 6 sn-auth "495442533221BE08" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "1197"
   500|   498| ont add 12 7 sn-auth "52434D4719987EC8" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "137"
   501|   499| ont add 12 8 sn-auth "52434D471998D22B" omci ont-lineprofile-id 3106 ont-srvprofile-id 3106 desc "CLIENTE_DEDICADO"
   502|   500| ont add 12 9 sn-auth "52434D4719987FC9" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "135"
   503|   501| ont add 12 10 sn-auth "485754431DA6499B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "141"
   504|   502| ont add 12 11 sn-auth "485754431DD9A39B" omci ont-lineprofile-id 3907 ont-srvprofile-id 3907 desc "CLIENTE_DEDICADO_ADVICEIT"
   505|   503| ont add 12 12 sn-auth "485754431DE2AF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   506|   504| ont add 12 13 sn-auth "485754431D29539B" omci ont-lineprofile-id 3005 ont-srvprofile-id 3005 desc "TRANSP_L2_TELIUM_S_CAS"
   507|   505| ont add 12 14 sn-auth "485754431D9B7F9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   508|   506| ont add 12 15 sn-auth "485754431D2EF29B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   509|   507| ont add 12 16 sn-auth "485754431D0F779B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   510|   508| ont add 12 17 sn-auth "485754431D175B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   511|   509| ont add 12 18 sn-auth "485754431DC47E9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   512|   510| ont add 12 19 sn-auth "485754431D82C89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   513|   511| ont add 12 20 sn-auth "485754431DAE569B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   514|   512| ont add 12 21 sn-auth "485754431DE04D9B" omci ont-lineprofile-id 30 ont-srvprofile-id 30 desc "ONU_CEIC"
   515|   513| ont add 12 22 sn-auth "485754431D03569B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   516|   514| ont add 12 23 sn-auth "485754431D3ABA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   517|   515| ont add 12 24 sn-auth "485754431D39A29B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   518|   516| ont add 12 25 sn-auth "485754431D22759B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   519|   517| ont add 12 26 sn-auth "485754431D04499B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   520|   518| ont add 12 27 sn-auth "485754431DE8ED9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "343"
   521|   519| ont add 12 28 sn-auth "485754431D04339B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   522|   520| ont add 12 29 sn-auth "485754431D53079B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   523|   521| ont add 12 30 sn-auth "485754431DC9FF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   524|   522| ont add 12 31 sn-auth "485754431D07D39B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   525|   523| ont add 12 32 sn-auth "485754431D23EF9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   526|   524| ont add 12 33 sn-auth "485754431D6C069B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   527|   525| ont add 12 34 sn-auth "49544253325312A2" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "369"
   528|   526| ont add 12 35 sn-auth "44443732E606FE80" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "373"
   529|   527| ont add 12 36 sn-auth "49544253E8F8D375" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "371"
   530|   528| ont add 12 37 sn-auth "485754431D69929B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   531|   529| ont add 12 38 sn-auth "485754431DD70D9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   532|   530| ont add 12 39 sn-auth "485754431DAE039B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   533|   531| ont add 12 40 sn-auth "485754431D87919B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   534|   532| ont add 12 41 sn-auth "485754431D01D59B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   535|   533| ont add 12 42 sn-auth "485754431DEDB19B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   536|   534| ont add 12 43 sn-auth "485754431DD0EA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   537|   535| ont add 12 44 sn-auth "485754431D261B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   538|   536| ont add 12 45 sn-auth "485754431DAAB59B" omci ont-lineprofile-id 3105 ont-srvprofile-id 3105 desc "567"
   539|   537| ont add 12 46 sn-auth "485754431D61E39B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   540|   538| ont add 12 47 sn-auth "485754431D01D49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "CAMERA"
   541|   539| ont add 12 48 sn-auth "485754431DCBDE9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   542|   540| ont add 12 49 sn-auth "485754431D637B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   543|   541| ont add 12 50 sn-auth "485754431D8DA19B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   544|   542| ont add 12 51 sn-auth "485754431DCEEA9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   545|   543| ont add 12 52 sn-auth "485754431D34DE9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "663"
   546|   544| ont add 12 53 sn-auth "485754431DC18D9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   547|   545| ont add 12 54 sn-auth "485754431DFAC69B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   548|   546| ont add 12 55 sn-auth "485754431D6FFF9B" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "169"
   549|   547| ont add 12 56 sn-auth "485754431D52589B" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
   550|   548| ont add 12 57 sn-auth "48575443E7165C9E" omci ont-lineprofile-id 3540 ont-srvprofile-id 3540 desc "CLIENTE_MIDIANET"
   551|   549| ont add 12 58 sn-auth "485754433217A59D" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ONT_HUAWEI"
   552|   550| ont add 12 59 sn-auth "4857544380B1A79A" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "TELEALARME_PONTO4"
   553|   551| ont add 14 0 sn-auth "485754431D5E219B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   554|   552| ont add 14 1 sn-auth "485754431D1BB49B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   555|   553| ont add 14 2 sn-auth "485754431D10639B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   556|   554| ont add 14 3 sn-auth "485754431D63CE9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   557|   555| ont add 14 4 sn-auth "485754431DAB889B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "15245_lojaquero_quero_8cc9"
   558|   556| ont add 14 5 sn-auth "485754431DEE7C9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   559|   557| ont add 14 6 sn-auth "485754431DF11A9B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   560|   558| ont add 14 7 sn-auth "485754431DB2F89B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   561|   559| ont add 14 8 sn-auth "485754431DBE379B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   562|   560| ont add 14 9 sn-auth "485754431DCD239B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   563|   561| ont add 14 10 sn-auth "485754431D29499B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   564|   562| ont add 14 11 sn-auth "485754431D2E7B9B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   565|   563| ont add 14 12 sn-auth "485754431DBB729B" omci ont-lineprofile-id 3964 ont-srvprofile-id 3964 desc "ONT_HUAWEI"
   566|   564| ont add 14 13 sn-auth "48575443326D819D" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   567|   565| ont add 14 14 sn-auth "48575443E751E79E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   568|   566| ont add 14 15 sn-auth "4653545400006E11" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   569|   567| ont add 14 16 sn-auth "4653545400007369" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   570|   568| ont add 14 17 sn-auth "4653545400006439" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   571|   569| ont add 14 18 sn-auth "485754431DCA839B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   572|   570| ont add 14 19 sn-auth "48575443261CDA9F" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   573|   571| ont add 14 20 sn-auth "48575443D415BD9E" omci ont-lineprofile-id 2107 ont-srvprofile-id 2107 desc "SMSEG212"
   574|   572| ont add 14 21 sn-auth "485754434B881B9C" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   575|   573| ont add 14 22 sn-auth "46535454000072C2" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   576|   574| ont add 14 23 sn-auth "48575443E79A8F9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   577|   575| ont add 14 24 sn-auth "485754431D63839B" omci ont-lineprofile-id 131 ont-srvprofile-id 131 desc "8371_dgt_panvel2_0ee5"
   578|   576| ont add 14 25 sn-auth "48575443F2307C9E" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   579|   577| ont add 14 26 sn-auth "46535454B81CEEA6" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   580|   578| ont add 14 27 sn-auth "46535454B81D0904" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   581|   579| ont add 14 28 sn-auth "46535454B81CFA68" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "ONT_HUAWEI"
   582|   580| ont port native-vlan 2 0 eth 1 vlan 133 priority 0
   583|   581| ont port native-vlan 2 1 eth 1 vlan 133 priority 0
   584|   582| ont port native-vlan 2 2 eth 1 vlan 3107 priority 0
   585|   583| ont port native-vlan 2 3 eth 1 vlan 3105 priority 0
   586|   584| ont port native-vlan 2 5 eth 1 vlan 3105 priority 0
   587|   585| ont port native-vlan 2 7 eth 1 vlan 133 priority 0
   588|   586| ont port native-vlan 6 0 eth 1 vlan 3964 priority 0
   589|   587| ont port native-vlan 6 1 eth 1 vlan 3107 priority 0
   590|   588| ont port native-vlan 6 1 eth 2 vlan 3107 priority 0
   591|   589| ont port native-vlan 6 2 eth 1 vlan 3107 priority 0
   592|   590| ont port native-vlan 6 2 eth 2 vlan 3107 priority 0
   593|   591| ont port native-vlan 6 3 eth 1 vlan 3105 priority 0
   594|   592| ont port native-vlan 6 4 eth 1 vlan 3964 priority 0
   595|   593| ont port native-vlan 6 4 eth 2 vlan 3964 priority 0
   596|   594| ont port native-vlan 6 5 eth 1 vlan 133 priority 0
   597|   595| ont port native-vlan 6 6 eth 1 vlan 3964 priority 0
   598|   596| ont port native-vlan 6 6 eth 2 vlan 3964 priority 0
   599|   597| ont port native-vlan 6 7 eth 1 vlan 133 priority 0
   600|   598| ont port native-vlan 6 8 eth 1 vlan 3105 priority 0
   601|   599| ont port native-vlan 6 9 eth 1 vlan 3105 priority 0
   602|   600| ont port native-vlan 6 10 eth 1 vlan 3105 priority 0
   603|   601| ont port native-vlan 6 11 eth 1 vlan 3105 priority 0
   604|   602| ont port native-vlan 6 12 eth 1 vlan 3964 priority 0
   605|   603| ont port native-vlan 6 12 eth 2 vlan 3964 priority 0
   606|   604| ont port native-vlan 6 13 eth 1 vlan 3105 priority 0
   607|   605| ont port native-vlan 6 14 eth 1 vlan 3105 priority 0
   608|   606| ont port native-vlan 6 15 eth 1 vlan 3105 priority 0
   609|   607| ont port native-vlan 6 16 eth 1 vlan 3105 priority 0
   610|   608| ont port native-vlan 6 17 eth 1 vlan 3105 priority 0
   611|   609| ont port native-vlan 6 18 eth 1 vlan 3105 priority 0
   612|   610| ont port native-vlan 6 19 eth 1 vlan 3964 priority 0
   613|   611| ont port native-vlan 6 19 eth 2 vlan 3964 priority 0
   614|   612| ont port native-vlan 6 20 eth 1 vlan 3105 priority 0
   615|   613| ont port native-vlan 6 21 eth 1 vlan 3964 priority 0
   616|   614| ont port native-vlan 6 21 eth 2 vlan 3964 priority 0
   617|   615| ont port native-vlan 6 22 eth 1 vlan 3105 priority 0
   618|   616| ont port native-vlan 6 23 eth 1 vlan 21 priority 0
   619|   617| ont port native-vlan 6 24 eth 1 vlan 131 priority 0
   620|   618| ont port native-vlan 6 25 eth 1 vlan 3964 priority 0
   621|   619| ont port native-vlan 6 25 eth 2 vlan 3964 priority 0
   622|   620| ont port native-vlan 6 26 eth 1 vlan 3105 priority 0
   623|   621| ont port native-vlan 6 27 eth 1 vlan 3105 priority 0
   624|   622| ont port native-vlan 6 28 eth 1 vlan 3105 priority 0
   625|   623| ont port native-vlan 6 29 eth 1 vlan 3105 priority 0
   626|   624| ont port native-vlan 6 30 eth 1 vlan 3105 priority 0
   627|   625| ont port native-vlan 6 31 eth 1 vlan 3105 priority 0
   628|   626| ont port native-vlan 6 32 eth 1 vlan 3964 priority 0
   629|   627| ont port native-vlan 6 32 eth 2 vlan 3964 priority 0
   630|   628| ont port native-vlan 6 33 eth 1 vlan 3105 priority 0
   631|   629| ont port native-vlan 6 34 eth 1 vlan 133 priority 0
   632|   630| ont port native-vlan 6 35 eth 1 vlan 133 priority 0
   633|   631| ont port native-vlan 6 36 eth 1 vlan 133 priority 0
   634|   632| ont port native-vlan 6 37 eth 1 vlan 133 priority 0
   635|   633| ont port native-vlan 6 38 eth 1 vlan 133 priority 0
   636|   634| ont port native-vlan 6 39 eth 1 vlan 3107 priority 0
   637|   635| ont port native-vlan 6 39 eth 2 vlan 3107 priority 0
   638|   636| ont port native-vlan 6 41 eth 1 vlan 3107 priority 0
   639|   637| ont port native-vlan 6 41 eth 2 vlan 3107 priority 0
   640|   638| ont port native-vlan 6 42 eth 1 vlan 3105 priority 0
   641|   639| ont port native-vlan 6 43 eth 1 vlan 133 priority 0
   642|   640| ont port native-vlan 6 44 eth 1 vlan 3107 priority 0
   643|   641| ont port native-vlan 6 44 eth 2 vlan 3107 priority 0
   644|   642| ont port native-vlan 6 45 eth 1 vlan 3107 priority 0
   645|   643| ont port native-vlan 6 45 eth 2 vlan 3107 priority 0
   646|   644| ont port native-vlan 6 46 eth 1 vlan 3107 priority 0
   647|   645| ont port native-vlan 6 46 eth 2 vlan 3107 priority 0
   648|   646| ont port native-vlan 6 47 eth 1 vlan 3107 priority 0
   649|   647| ont port native-vlan 6 47 eth 2 vlan 3107 priority 0
   650|   648| ont port native-vlan 6 48 eth 1 vlan 3107 priority 0
   651|   649| ont port native-vlan 6 48 eth 2 vlan 3107 priority 0
   652|   650| ont port native-vlan 6 49 eth 1 vlan 3107 priority 0
   653|   651| ont port native-vlan 6 49 eth 2 vlan 3107 priority 0
   654|   652| ont port native-vlan 6 50 eth 1 vlan 3107 priority 0
   655|   653| ont port native-vlan 6 50 eth 2 vlan 3107 priority 0
   656|   654| ont port native-vlan 6 51 eth 1 vlan 3107 priority 0
   657|   655| ont port native-vlan 6 51 eth 2 vlan 3107 priority 0
   658|   656| ont port native-vlan 6 52 eth 1 vlan 3107 priority 0
   659|   657| ont port native-vlan 6 52 eth 2 vlan 3107 priority 0
   660|   658| ont port native-vlan 6 53 eth 1 vlan 3107 priority 0
   661|   659| ont port native-vlan 6 53 eth 2 vlan 3107 priority 0
   662|   660| ont port native-vlan 6 54 eth 1 vlan 3107 priority 0
   663|   661| ont port native-vlan 6 54 eth 2 vlan 3107 priority 0
   664|   662| ont port native-vlan 6 55 eth 1 vlan 3107 priority 0
   665|   663| ont port native-vlan 6 55 eth 2 vlan 3107 priority 0
   666|   664| ont port native-vlan 6 56 eth 1 vlan 3107 priority 0
   667|   665| ont port native-vlan 6 56 eth 2 vlan 3107 priority 0
   668|   666| ont port native-vlan 12 0 eth 1 vlan 3105 priority 0
   669|   667| ont port native-vlan 12 1 eth 1 vlan 3105 priority 0
   670|   668| ont port native-vlan 12 2 eth 1 vlan 3105 priority 0
   671|   669| ont port native-vlan 12 3 eth 1 vlan 133 priority 0
   672|   670| ont port native-vlan 12 3 eth 2 vlan 3106 priority 0
   673|   671| ont port native-vlan 12 4 eth 1 vlan 3105 priority 0
   674|   672| ont port native-vlan 12 5 eth 1 vlan 3105 priority 0
   675|   673| ont port native-vlan 12 6 eth 1 vlan 3105 priority 0
   676|   674| ont port native-vlan 12 7 eth 1 vlan 3105 priority 0
   677|   675| ont port native-vlan 12 8 eth 1 vlan 133 priority 0
   678|   676| ont port native-vlan 12 8 eth 2 vlan 3106 priority 0
   679|   677| ont port native-vlan 12 9 eth 1 vlan 3105 priority 0
   680|   678| ont port native-vlan 12 10 eth 1 vlan 3105 priority 0
   681|   679| ont port native-vlan 12 11 eth 1 vlan 3907 priority 0
   682|   680| ont port native-vlan 12 11 eth 2 vlan 133 priority 0
   683|   681| ont port native-vlan 12 12 eth 1 vlan 3107 priority 0
   684|   682| ont port native-vlan 12 13 eth 1 vlan 3005 priority 0
   685|   683| ont port native-vlan 12 14 eth 1 vlan 3107 priority 0
   686|   684| ont port native-vlan 12 15 eth 1 vlan 3107 priority 0
   687|   685| ont port native-vlan 12 16 eth 1 vlan 3107 priority 0
   688|   686| ont port native-vlan 12 17 eth 1 vlan 3107 priority 0
   689|   687| ont port native-vlan 12 18 eth 1 vlan 3107 priority 0
   690|   688| ont port native-vlan 12 19 eth 1 vlan 3107 priority 0
   691|   689| ont port native-vlan 12 19 eth 2 vlan 3107 priority 0
   692|   690| ont port native-vlan 12 20 eth 1 vlan 3107 priority 0
   693|   691| ont port native-vlan 12 21 eth 1 vlan 3104 priority 0
   694|   692| ont port native-vlan 12 21 eth 2 vlan 3108 priority 0
   695|   693| ont port native-vlan 12 22 eth 1 vlan 3964 priority 0
   696|   694| ont port native-vlan 12 22 eth 2 vlan 3964 priority 0
   697|   695| ont port native-vlan 12 23 eth 1 vlan 3107 priority 0
   698|   696| ont port native-vlan 12 24 eth 1 vlan 3107 priority 0
   699|   697| ont port native-vlan 12 24 eth 2 vlan 3107 priority 0
   700|   698| ont port native-vlan 12 25 eth 1 vlan 3107 priority 0
   701|   699| ont port native-vlan 12 25 eth 2 vlan 3107 priority 0
   702|   700| ont port native-vlan 12 26 eth 1 vlan 3107 priority 0
   703|   701| ont port native-vlan 12 26 eth 2 vlan 3107 priority 0
   704|   702| ont port native-vlan 12 27 eth 1 vlan 133 priority 0
   705|   703| ont port native-vlan 12 28 eth 1 vlan 3107 priority 0
   706|   704| ont port native-vlan 12 29 eth 1 vlan 3107 priority 0
   707|   705| ont port native-vlan 12 30 eth 1 vlan 3107 priority 0
   708|   706| ont port native-vlan 12 30 eth 2 vlan 3107 priority 0
   709|   707| ont port native-vlan 12 31 eth 1 vlan 3107 priority 0
   710|   708| ont port native-vlan 12 32 eth 1 vlan 3107 priority 0
   711|   709| ont port native-vlan 12 33 eth 1 vlan 3107 priority 0
   712|   710| ont port native-vlan 12 34 eth 1 vlan 3105 priority 0
   713|   711| ont port native-vlan 12 35 eth 1 vlan 3105 priority 0
   714|   712| ont port native-vlan 12 36 eth 1 vlan 3105 priority 0
   715|   713| ont port native-vlan 12 37 eth 1 vlan 3107 priority 0
   716|   714| ont port native-vlan 12 38 eth 1 vlan 3107 priority 0
   717|   715| ont port native-vlan 12 38 eth 2 vlan 3107 priority 0
   718|   716| ont port native-vlan 12 39 eth 1 vlan 3964 priority 0
   719|   717| ont port native-vlan 12 39 eth 2 vlan 3964 priority 0
   720|   718| ont port native-vlan 12 40 eth 1 vlan 3964 priority 0
   721|   719| ont port native-vlan 12 40 eth 2 vlan 3964 priority 0
   722|   720| ont port native-vlan 12 41 eth 1 vlan 3964 priority 0
   723|   721| ont port native-vlan 12 41 eth 2 vlan 3964 priority 0
   724|   722| ont port native-vlan 12 42 eth 1 vlan 3107 priority 0
   725|   723| ont port native-vlan 12 43 eth 1 vlan 3107 priority 0
   726|   724| ont port native-vlan 12 44 eth 1 vlan 3107 priority 0
   727|   725| ont port native-vlan 12 44 eth 2 vlan 3107 priority 0
   728|   726| ont port native-vlan 12 45 eth 1 vlan 3105 priority 0
   729|   727| ont port native-vlan 12 46 eth 1 vlan 3107 priority 0
   730|   728| ont port native-vlan 12 47 eth 1 vlan 3107 priority 0
   731|   729| ont port native-vlan 12 48 eth 1 vlan 3964 priority 0
   732|   730| ont port native-vlan 12 48 eth 2 vlan 3964 priority 0
   733|   731| ont port native-vlan 12 49 eth 1 vlan 3107 priority 0
   734|   732| ont port native-vlan 12 49 eth 2 vlan 3107 priority 0
   735|   733| ont port native-vlan 12 50 eth 1 vlan 3107 priority 0
   736|   734| ont port native-vlan 12 51 eth 1 vlan 3107 priority 0
   737|   735| ont port native-vlan 12 52 eth 1 vlan 133 priority 0
   738|   736| ont port native-vlan 12 53 eth 1 vlan 3964 priority 0
   739|   737| ont port native-vlan 12 53 eth 2 vlan 3964 priority 0
   740|   738| ont port native-vlan 12 54 eth 1 vlan 3964 priority 0
   741|   739| ont port native-vlan 12 54 eth 2 vlan 3964 priority 0
   742|   740| ont port native-vlan 12 55 eth 1 vlan 133 priority 0
   743|   741| ont port native-vlan 12 56 eth 1 vlan 3540 priority 0
   744|   742| ont port native-vlan 12 57 eth 1 vlan 3540 priority 0
   745|   743| ont port native-vlan 12 58 eth 1 vlan 133 priority 0
   746|   744| ont port native-vlan 12 59 eth 1 vlan 133 priority 0
   747|   745| ont port native-vlan 14 0 eth 1 vlan 3107 priority 0
   748|   746| ont port native-vlan 14 0 eth 2 vlan 3107 priority 0
   749|   747| ont port native-vlan 14 1 eth 1 vlan 3107 priority 0
   750|   748| ont port native-vlan 14 1 eth 2 vlan 3107 priority 0
   751|   749| ont port native-vlan 14 2 eth 1 vlan 3107 priority 0
   752|   750| ont port native-vlan 14 2 eth 2 vlan 3107 priority 0
   753|   751| ont port native-vlan 14 3 eth 1 vlan 3107 priority 0
   754|   752| ont port native-vlan 14 3 eth 2 vlan 3107 priority 0
   755|   753| ont port native-vlan 14 4 eth 1 vlan 131 priority 0
   756|   754| ont port native-vlan 14 5 eth 1 vlan 3964 priority 0
   757|   755| ont port native-vlan 14 5 eth 2 vlan 3964 priority 0
   758|   756| ont port native-vlan 14 6 eth 1 vlan 3964 priority 0
   759|   757| ont port native-vlan 14 6 eth 2 vlan 3964 priority 0
   760|   758| ont port native-vlan 14 7 eth 1 vlan 3107 priority 0
   761|   759| ont port native-vlan 14 7 eth 2 vlan 3107 priority 0
   762|   760| ont port native-vlan 14 8 eth 1 vlan 3107 priority 0
   763|   761| ont port native-vlan 14 8 eth 2 vlan 3107 priority 0
   764|   762| ont port native-vlan 14 9 eth 1 vlan 3107 priority 0
   765|   763| ont port native-vlan 14 9 eth 2 vlan 3107 priority 0
   766|   764| ont port native-vlan 14 10 eth 1 vlan 3964 priority 0
   767|   765| ont port native-vlan 14 10 eth 2 vlan 3964 priority 0
   768|   766| ont port native-vlan 14 11 eth 1 vlan 3107 priority 0
   769|   767| ont port native-vlan 14 11 eth 2 vlan 3107 priority 0
   770|   768| ont port native-vlan 14 12 eth 1 vlan 3964 priority 0
   771|   769| ont port native-vlan 14 12 eth 2 vlan 3964 priority 0
   772|   770| ont port native-vlan 14 13 eth 1 vlan 3107 priority 0
   773|   771| ont port native-vlan 14 13 eth 2 vlan 3107 priority 0
   774|   772| ont port native-vlan 14 14 eth 1 vlan 3107 priority 0
   775|   773| ont port native-vlan 14 14 eth 2 vlan 3107 priority 0
   776|   774| ont port native-vlan 14 15 eth 1 vlan 3107 priority 0
   777|   775| ont port native-vlan 14 15 eth 2 vlan 3107 priority 0
   778|   776| ont port native-vlan 14 16 eth 1 vlan 3107 priority 0
   779|   777| ont port native-vlan 14 16 eth 2 vlan 3107 priority 0
   780|   778| ont port native-vlan 14 17 eth 1 vlan 3107 priority 0
   781|   779| ont port native-vlan 14 17 eth 2 vlan 3107 priority 0
   782|   780| ont port native-vlan 14 18 eth 1 vlan 3107 priority 0
   783|   781| ont port native-vlan 14 18 eth 2 vlan 3107 priority 0
   784|   782| ont port native-vlan 14 19 eth 1 vlan 3107 priority 0
   785|   783| ont port native-vlan 14 19 eth 2 vlan 3107 priority 0
   786|   784| ont port native-vlan 14 20 eth 1 vlan 3107 priority 0
   787|   785| ont port native-vlan 14 21 eth 1 vlan 3107 priority 0
   788|   786| ont port native-vlan 14 21 eth 2 vlan 3107 priority 0
   789|   787| ont port native-vlan 14 22 eth 1 vlan 3107 priority 0
   790|   788| ont port native-vlan 14 22 eth 2 vlan 3107 priority 0
   791|   789| ont port native-vlan 14 23 eth 1 vlan 3107 priority 0
   792|   790| ont port native-vlan 14 23 eth 2 vlan 3107 priority 0
   793|   791| ont port native-vlan 14 24 eth 1 vlan 131 priority 0
   794|   792| ont port native-vlan 14 25 eth 1 vlan 3107 priority 0
   795|   793| ont port native-vlan 14 25 eth 2 vlan 3107 priority 0
   796|   794| ont port native-vlan 14 26 eth 1 vlan 3107 priority 0
   797|   795| ont port native-vlan 14 26 eth 2 vlan 3107 priority 0
   798|   796| ont port native-vlan 14 27 eth 1 vlan 3107 priority 0
   799|   797| ont port native-vlan 14 27 eth 2 vlan 3107 priority 0
   800|   798| ont port native-vlan 14 28 eth 1 vlan 3107 priority 0
   801|   799| ont port native-vlan 14 28 eth 2 vlan 3107 priority 0
   802|   800|#
   803|   801|[platform-config]
   804|   802|  <platform-config>
   805|   803| autosave type data
   806|   804| autosave interval on
   807|   805| autosave interval 1442
   808|   806| autosave time on
   809|   807| autosave time 00:00:00
   810|   808| autosave type configuration
   811|   809| autosave interval on
   812|   810| autosave interval 1442
   813|   811| autosave time on
   814|   812| autosave time 00:00:00
   815|   813| autosave interval configuration 480
   816|   814|#
   817|   815|[emu-config]
   818|   816|  <emu-config>
   819|   817| emu add 0 fan 0 1  "H902FMSA"
   820|   818|#
   821|   819|[bbs-config]
   822|   820|  <bbs-config>
   823|   821| link-aggregation 0/3 2 ingress workmode lacp-static
   824|   822| link-aggregation add-member 0/3/2 0/3 3
   825|   823| service-port 0 vlan 3105 gpon 0/1/12 ont 0 gemport 105 multi-service user-vlan 3105 tag-transform translate
   826|   824| service-port 1 vlan 3105 gpon 0/1/12 ont 1 gemport 105 multi-service user-vlan 3105 tag-transform translate
   827|   825| service-port 2 vlan 3105 gpon 0/1/12 ont 2 gemport 105 multi-service user-vlan 3105 tag-transform translate
   828|   826| service-port 3 vlan 133 gpon 0/1/12 ont 3 gemport 133 multi-service user-vlan 133 tag-transform translate
   829|   827| service-port 4 vlan 3106 gpon 0/1/12 ont 3 gemport 106 multi-service user-vlan 3106 tag-transform translate
   830|   828| service-port 5 vlan 133 gpon 0/1/2 ont 0 gemport 133 multi-service user-vlan 133 tag-transform translate
   831|   829| service-port 6 vlan 133 gpon 0/1/2 ont 1 gemport 133 multi-service user-vlan 133 tag-transform translate
   832|   830| service-port 7 vlan 3105 gpon 0/1/12 ont 4 gemport 105 multi-service user-vlan 3105 tag-transform translate
   833|   831| service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate
   834|   832| service-port 10 vlan 3105 gpon 0/1/12 ont 7 gemport 105 multi-service user-vlan 3105 tag-transform translate
   835|   833| service-port 11 vlan 3907 gpon 0/1/12 ont 11 gemport 907 multi-service user-vlan 3907 tag-transform translate
   836|   834| service-port 12 vlan 3105 gpon 0/1/12 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   837|   835| service-port 14 vlan 3105 gpon 0/1/12 ont 10 gemport 105 multi-service user-vlan 3105 tag-transform translate
   838|   836| service-port 15 vlan 133 gpon 0/1/12 ont 8 gemport 133 multi-service user-vlan 133 tag-transform translate
   839|   837| service-port 16 vlan 3106 gpon 0/1/12 ont 8 gemport 106 multi-service user-vlan 3106 tag-transform translate
   840|   838| service-port 17 vlan 3105 gpon 0/1/2 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   841|   839| service-port 18 vlan 3108 gpon 0/1/12 ont 21 gemport 108 multi-service user-vlan 3108 tag-transform translate
   842|   840| service-port 19 vlan 3005 gpon 0/1/12 ont 13 gemport 5 multi-service user-vlan 3005 tag-transform transparent
   843|   841| service-port 20 vlan 3105 gpon 0/1/6 ont 42 gemport 105 multi-service user-vlan 3105 tag-transform translate
   844|   842| service-port 21 vlan 3964 gpon 0/1/6 ont 0 gemport 964 multi-service user-vlan 3964 tag-transform translate
   845|   843| service-port 22 vlan 3107 gpon 0/1/12 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
   846|   844| service-port 23 vlan 3107 gpon 0/1/12 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
   847|   845| service-port 24 vlan 3107 gpon 0/1/12 ont 17 gemport 107 multi-service user-vlan 3107 tag-transform translate
   848|   846| service-port 25 vlan 3107 gpon 0/1/12 ont 18 gemport 107 multi-service user-vlan 3107 tag-transform translate
   849|   847| service-port 26 vlan 3540 gpon 0/1/12 ont 56 gemport 540 multi-service user-vlan 3540 tag-transform translate
   850|   848| service-port 27 vlan 3107 gpon 0/1/12 ont 20 gemport 107 multi-service user-vlan 3107 tag-transform translate
   851|   849| service-port 28 vlan 133 gpon 0/1/6 ont 43 gemport 133 multi-service user-vlan 133 tag-transform translate
   852|   850| service-port 29 vlan 3104 gpon 0/1/12 ont 21 gemport 104 multi-service user-vlan 3104 tag-transform translate
   853|   851| service-port 30 vlan 3540 gpon 0/1/12 ont 57 gemport 540 multi-service user-vlan 3540 tag-transform translate
   854|   852| service-port 31 vlan 3107 gpon 0/1/12 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
   855|   853| service-port 32 vlan 3107 gpon 0/1/12 ont 12 gemport 107 multi-service user-vlan 3107 tag-transform translate
   856|   854| service-port 33 vlan 3107 gpon 0/1/12 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
   857|   855| service-port 34 vlan 3107 gpon 0/1/14 ont 20 gemport 107 multi-service user-vlan 3107 tag-transform translate
   858|   856| service-port 37 vlan 133 gpon 0/1/12 ont 27 gemport 133 multi-service user-vlan 133 tag-transform translate
   859|   857| service-port 38 vlan 3107 gpon 0/1/12 ont 28 gemport 107 multi-service user-vlan 3107 tag-transform translate
   860|   858| service-port 39 vlan 3107 gpon 0/1/12 ont 29 gemport 107 multi-service user-vlan 3107 tag-transform translate
   861|   859| service-port 41 vlan 3107 gpon 0/1/12 ont 31 gemport 107 multi-service user-vlan 3107 tag-transform translate
   862|   860| service-port 42 vlan 3107 gpon 0/1/12 ont 32 gemport 107 multi-service user-vlan 3107 tag-transform translate
   863|   861| service-port 43 vlan 3107 gpon 0/1/12 ont 33 gemport 107 multi-service user-vlan 3107 tag-transform translate
   864|   862| service-port 44 vlan 3105 gpon 0/1/12 ont 34 gemport 105 multi-service user-vlan 3105 tag-transform translate
   865|   863| service-port 45 vlan 3105 gpon 0/1/12 ont 35 gemport 105 multi-service user-vlan 3105 tag-transform translate
   866|   864| service-port 46 vlan 3105 gpon 0/1/12 ont 36 gemport 105 multi-service user-vlan 3105 tag-transform translate
   867|   865| service-port 47 vlan 3107 gpon 0/1/12 ont 37 gemport 107 multi-service user-vlan 3107 tag-transform translate
   868|   866| service-port 49 vlan 3964 gpon 0/1/12 ont 39 gemport 964 multi-service user-vlan 3964 tag-transform translate
   869|   867| service-port 50 vlan 3964 gpon 0/1/12 ont 40 gemport 964 multi-service user-vlan 3964 tag-transform translate
   870|   868| service-port 51 vlan 3964 gpon 0/1/12 ont 41 gemport 964 multi-service user-vlan 3964 tag-transform translate
   871|   869| service-port 52 vlan 3107 gpon 0/1/12 ont 42 gemport 107 multi-service user-vlan 3107 tag-transform translate
   872|   870| service-port 53 vlan 3107 gpon 0/1/12 ont 43 gemport 107 multi-service user-vlan 3107 tag-transform translate
   873|   871| service-port 56 vlan 3107 gpon 0/1/12 ont 46 gemport 107 multi-service user-vlan 3107 tag-transform translate
   874|   872| service-port 57 vlan 3107 gpon 0/1/12 ont 47 gemport 107 multi-service user-vlan 3107 tag-transform translate
   875|   873| service-port 58 vlan 3964 gpon 0/1/12 ont 48 gemport 964 multi-service user-vlan 3964 tag-transform translate
   876|   874| service-port 59 vlan 3964 gpon 0/1/12 ont 22 gemport 964 multi-service user-vlan 3964 tag-transform translate
   877|   875| service-port 60 vlan 3107 gpon 0/1/12 ont 50 gemport 107 multi-service user-vlan 3107 tag-transform translate
   878|   876| service-port 61 vlan 131 gpon 0/1/0 ont 0 gemport 131 multi-service user-vlan 131 tag-transform translate
   879|   877| service-port 62 vlan 3107 gpon 0/1/12 ont 51 gemport 107 multi-service user-vlan 3107 tag-transform translate
   880|   878| service-port 63 vlan 133 gpon 0/1/12 ont 52 gemport 133 multi-service user-vlan 133 tag-transform translate
   881|   879| service-port 65 vlan 3964 gpon 0/1/12 ont 53 gemport 964 multi-service user-vlan 3964 tag-transform translate
   882|   880| service-port 66 vlan 3107 gpon 0/1/2 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   883|   881| service-port 67 vlan 3964 gpon 0/1/12 ont 54 gemport 964 multi-service user-vlan 3964 tag-transform translate
   884|   882| service-port 72 vlan 131 gpon 0/1/2 ont 6 gemport 131 multi-service user-vlan 131 tag-transform translate
   885|   883| service-port 73 vlan 133 gpon 0/1/2 ont 7 gemport 133 multi-service user-vlan 133 tag-transform translate
   886|   884| service-port 74 vlan 131 gpon 0/1/2 ont 8 gemport 131 multi-service user-vlan 131 tag-transform translate
   887|   885| service-port 75 vlan 3107 gpon 0/1/12 ont 24 gemport 107 multi-service user-vlan 3107 tag-transform translate
   888|   886| service-port 76 vlan 3105 gpon 0/1/6 ont 11 gemport 105 multi-service user-vlan 3105 tag-transform translate
   889|   887| service-port 79 vlan 3107 gpon 0/1/14 ont 0 gemport 107 multi-service user-vlan 3107 tag-transform translate
   890|   888| service-port 80 vlan 3107 gpon 0/1/14 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
   891|   889| service-port 81 vlan 3107 gpon 0/1/12 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   892|   890| service-port 82 vlan 3107 gpon 0/1/14 ont 3 gemport 107 multi-service user-vlan 3107 tag-transform translate
   893|   891| service-port 83 vlan 131 gpon 0/1/14 ont 4 gemport 131 multi-service user-vlan 131 tag-transform translate
   894|   892| service-port 84 vlan 3964 gpon 0/1/14 ont 5 gemport 964 multi-service user-vlan 3964 tag-transform translate
   895|   893| service-port 85 vlan 3964 gpon 0/1/14 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
   896|   894| service-port 86 vlan 3107 gpon 0/1/14 ont 7 gemport 107 multi-service user-vlan 3107 tag-transform translate
   897|   895| service-port 87 vlan 3107 gpon 0/1/14 ont 8 gemport 107 multi-service user-vlan 3107 tag-transform translate
   898|   896| service-port 88 vlan 3107 gpon 0/1/14 ont 9 gemport 107 multi-service user-vlan 3107 tag-transform translate
   899|   897| service-port 89 vlan 3964 gpon 0/1/14 ont 10 gemport 964 multi-service user-vlan 3964 tag-transform translate
   900|   898| service-port 90 vlan 3107 gpon 0/1/14 ont 11 gemport 107 multi-service user-vlan 3107 tag-transform translate
   901|   899| service-port 91 vlan 3964 gpon 0/1/14 ont 12 gemport 964 multi-service user-vlan 3964 tag-transform translate
   902|   900| service-port 92 vlan 133 gpon 0/1/12 ont 55 gemport 133 multi-service user-vlan 133 tag-transform translate
   903|   901| service-port 94 vlan 3107 gpon 0/1/14 ont 14 gemport 107 multi-service user-vlan 3107 tag-transform translate
   904|   902| service-port 95 vlan 3107 gpon 0/1/6 ont 1 gemport 107 multi-service user-vlan 3107 tag-transform translate
   905|   903| service-port 96 vlan 3107 gpon 0/1/6 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   906|   904| service-port 97 vlan 3107 gpon 0/1/14 ont 15 gemport 107 multi-service user-vlan 3107 tag-transform translate
   907|   905| service-port 98 vlan 3105 gpon 0/1/6 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
   908|   906| service-port 99 vlan 3964 gpon 0/1/6 ont 4 gemport 964 multi-service user-vlan 3964 tag-transform translate
   909|   907| service-port 100 vlan 133 gpon 0/1/6 ont 5 gemport 133 multi-service user-vlan 133 tag-transform translate
   910|   908| service-port 101 vlan 3964 gpon 0/1/6 ont 6 gemport 964 multi-service user-vlan 3964 tag-transform translate
   911|   909| service-port 102 vlan 133 gpon 0/1/6 ont 7 gemport 133 multi-service user-vlan 133 tag-transform translate
   912|   910| service-port 103 vlan 3105 gpon 0/1/6 ont 8 gemport 105 multi-service user-vlan 3105 tag-transform translate
   913|   911| service-port 105 vlan 3105 gpon 0/1/6 ont 10 gemport 105 multi-service user-vlan 3105 tag-transform translate
   914|   912| service-port 107 vlan 3107 gpon 0/1/14 ont 16 gemport 107 multi-service user-vlan 3107 tag-transform translate
   915|   913| service-port 108 vlan 3107 gpon 0/1/14 ont 17 gemport 107 multi-service user-vlan 3107 tag-transform translate
   916|   914| service-port 110 vlan 3105 gpon 0/1/6 ont 15 gemport 105 multi-service user-vlan 3105 tag-transform translate
   917|   915| service-port 111 vlan 3105 gpon 0/1/6 ont 16 gemport 105 multi-service user-vlan 3105 tag-transform translate
   918|   916| service-port 112 vlan 3105 gpon 0/1/6 ont 17 gemport 105 multi-service user-vlan 3105 tag-transform translate
   919|   917| service-port 113 vlan 3964 gpon 0/1/6 ont 12 gemport 964 multi-service user-vlan 3964 tag-transform translate
   920|   918| service-port 115 vlan 3964 gpon 0/1/6 ont 19 gemport 964 multi-service user-vlan 3964 tag-transform translate
   921|   919| service-port 116 vlan 3105 gpon 0/1/6 ont 20 gemport 105 multi-service user-vlan 3105 tag-transform translate
   922|   920| service-port 118 vlan 3105 gpon 0/1/6 ont 22 gemport 105 multi-service user-vlan 3105 tag-transform translate
   923|   921| service-port 119 vlan 21 gpon 0/1/6 ont 23 gemport 21 multi-service user-vlan 21 tag-transform translate
   924|   922| service-port 121 vlan 3964 gpon 0/1/6 ont 21 gemport 964 multi-service user-vlan 3964 tag-transform translate
   925|   923| service-port 122 vlan 3964 gpon 0/1/6 ont 25 gemport 964 multi-service user-vlan 3964 tag-transform translate
   926|   924| service-port 123 vlan 3105 gpon 0/1/6 ont 13 gemport 105 multi-service user-vlan 3105 tag-transform translate
   927|   925| service-port 124 vlan 3107 gpon 0/1/12 ont 19 gemport 107 multi-service user-vlan 3107 tag-transform translate
   928|   926| service-port 125 vlan 3105 gpon 0/1/6 ont 26 gemport 105 multi-service user-vlan 3105 tag-transform translate
   929|   927| service-port 126 vlan 3105 gpon 0/1/6 ont 18 gemport 105 multi-service user-vlan 3105 tag-transform translate
   930|   928| service-port 127 vlan 3105 gpon 0/1/6 ont 27 gemport 105 multi-service user-vlan 3105 tag-transform translate
   931|   929| service-port 128 vlan 3105 gpon 0/1/6 ont 28 gemport 105 multi-service user-vlan 3105 tag-transform translate
   932|   930| service-port 129 vlan 3105 gpon 0/1/6 ont 29 gemport 105 multi-service user-vlan 3105 tag-transform translate
   933|   931| service-port 130 vlan 3105 gpon 0/1/6 ont 30 gemport 105 multi-service user-vlan 3105 tag-transform translate
   934|   932| service-port 131 vlan 3105 gpon 0/1/6 ont 31 gemport 105 multi-service user-vlan 3105 tag-transform translate
   935|   933| service-port 132 vlan 3964 gpon 0/1/6 ont 32 gemport 964 multi-service user-vlan 3964 tag-transform translate
   936|   934| service-port 133 vlan 3107 gpon 0/1/12 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   937|   935| service-port 134 vlan 3105 gpon 0/1/6 ont 33 gemport 105 multi-service user-vlan 3105 tag-transform translate
   938|   936| service-port 135 vlan 3107 gpon 0/1/12 ont 30 gemport 107 multi-service user-vlan 3107 tag-transform translate
   939|   937| service-port 137 vlan 3105 gpon 0/1/12 ont 5 gemport 105 multi-service user-vlan 3105 tag-transform translate
   940|   938| service-port 138 vlan 3105 gpon 0/1/2 ont 3 gemport 105 multi-service user-vlan 3105 tag-transform translate
   941|   939| service-port 139 vlan 3107 gpon 0/1/12 ont 44 gemport 107 multi-service user-vlan 3107 tag-transform translate
   942|   940| service-port 141 vlan 3105 gpon 0/1/6 ont 14 gemport 105 multi-service user-vlan 3105 tag-transform translate
   943|   941| service-port 142 vlan 133 gpon 0/1/6 ont 35 gemport 133 multi-service user-vlan 133 tag-transform translate
   944|   942| service-port 143 vlan 3105 gpon 0/1/6 ont 9 gemport 105 multi-service user-vlan 3105 tag-transform translate
   945|   943| service-port 144 vlan 133 gpon 0/1/6 ont 34 gemport 133 multi-service user-vlan 133 tag-transform translate
   946|   944| service-port 145 vlan 133 gpon 0/1/6 ont 36 gemport 133 multi-service user-vlan 133 tag-transform translate
   947|   945| service-port 146 vlan 133 gpon 0/1/6 ont 37 gemport 133 multi-service user-vlan 133 tag-transform translate
   948|   946| service-port 147 vlan 133 gpon 0/1/6 ont 38 gemport 133 multi-service user-vlan 133 tag-transform translate
   949|   947| service-port 148 vlan 3105 gpon 0/1/12 ont 45 gemport 105 multi-service user-vlan 3105 tag-transform translate
   950|   948| service-port 150 vlan 3107 gpon 0/1/14 ont 13 gemport 107 multi-service user-vlan 3107 tag-transform translate
   951|   949| service-port 151 vlan 3107 gpon 0/1/6 ont 39 gemport 107 multi-service user-vlan 3107 tag-transform translate
   952|   950| service-port 152 vlan 133 gpon 0/1/6 ont 40 gemport 133 multi-service user-vlan 133 tag-transform translate
   953|   951| service-port 153 vlan 3107 gpon 0/1/6 ont 41 gemport 107 multi-service user-vlan 3107 tag-transform translate
   954|   952| service-port 154 vlan 3107 gpon 0/1/12 ont 49 gemport 107 multi-service user-vlan 3107 tag-transform translate
   955|   953| service-port 155 vlan 131 gpon 0/1/6 ont 24 gemport 131 multi-service user-vlan 131 tag-transform translate
   956|   954| service-port 156 vlan 131 gpon 0/1/2 ont 4 gemport 131 multi-service user-vlan 131 tag-transform translate
   957|   955| service-port 157 vlan 3107 gpon 0/1/12 ont 38 gemport 107 multi-service user-vlan 3107 tag-transform translate
   958|   956| service-port 158 vlan 3107 gpon 0/1/14 ont 2 gemport 107 multi-service user-vlan 3107 tag-transform translate
   959|   957| service-port 160 vlan 3107 gpon 0/1/14 ont 18 gemport 107 multi-service user-vlan 3107 tag-transform translate
   960|   958| service-port 161 vlan 133 gpon 0/1/12 ont 58 gemport 133 multi-service user-vlan 133 tag-transform translate
   961|   959| service-port 162 vlan 3107 gpon 0/1/6 ont 44 gemport 107 multi-service user-vlan 3107 tag-transform translate
   962|   960| service-port 163 vlan 3107 gpon 0/1/6 ont 45 gemport 107 multi-service user-vlan 3107 tag-transform translate
   963|   961| service-port 164 vlan 3107 gpon 0/1/6 ont 46 gemport 107 multi-service user-vlan 3107 tag-transform translate
   964|   962| service-port 165 vlan 3107 gpon 0/1/6 ont 47 gemport 107 multi-service user-vlan 3107 tag-transform translate
   965|   963| service-port 166 vlan 3107 gpon 0/1/6 ont 48 gemport 107 multi-service user-vlan 3107 tag-transform translate
   966|   964| service-port 167 vlan 3107 gpon 0/1/14 ont 19 gemport 107 multi-service user-vlan 3107 tag-transform translate
   967|   965| service-port 169 vlan 3107 gpon 0/1/14 ont 21 gemport 107 multi-service user-vlan 3107 tag-transform translate
   968|   966| service-port 170 vlan 3107 gpon 0/1/14 ont 22 gemport 107 multi-service user-vlan 3107 tag-transform translate
   969|   967| service-port 171 vlan 3105 gpon 0/1/12 ont 6 gemport 105 multi-service user-vlan 3105 tag-transform translate
   970|   968| service-port 172 vlan 3107 gpon 0/1/14 ont 23 gemport 107 multi-service user-vlan 3107 tag-transform translate
   971|   969| service-port 173 vlan 131 gpon 0/1/14 ont 24 gemport 131 multi-service user-vlan 131 tag-transform translate
   972|   970| service-port 174 vlan 3107 gpon 0/1/14 ont 25 gemport 107 multi-service user-vlan 3107 tag-transform translate
   973|   971| service-port 176 vlan 3107 gpon 0/1/6 ont 50 gemport 107 multi-service user-vlan 3107 tag-transform translate
   974|   972| service-port 177 vlan 3107 gpon 0/1/14 ont 26 gemport 107 multi-service user-vlan 3107 tag-transform translate
   975|   973| service-port 178 vlan 3107 gpon 0/1/6 ont 51 gemport 107 multi-service user-vlan 3107 tag-transform translate
   976|   974| service-port 179 vlan 3107 gpon 0/1/14 ont 27 gemport 107 multi-service user-vlan 3107 tag-transform translate
   977|   975| service-port 180 vlan 3107 gpon 0/1/14 ont 28 gemport 107 multi-service user-vlan 3107 tag-transform translate
   978|   976| service-port 181 vlan 3107 gpon 0/1/6 ont 52 gemport 107 multi-service user-vlan 3107 tag-transform translate
   979|   977| service-port 182 vlan 3107 gpon 0/1/6 ont 53 gemport 107 multi-service user-vlan 3107 tag-transform translate
   980|   978| service-port 183 vlan 3107 gpon 0/1/6 ont 54 gemport 107 multi-service user-vlan 3107 tag-transform translate
   981|   979| service-port 184 vlan 3107 gpon 0/1/6 ont 55 gemport 107 multi-service user-vlan 3107 tag-transform translate
   982|   980| service-port 185 vlan 3107 gpon 0/1/6 ont 56 gemport 107 multi-service user-vlan 3107 tag-transform translate
   983|   981| service-port 251 vlan 133 gpon 0/1/12 ont 59 gemport 133 multi-service user-vlan 133 tag-transform translate
   984|   982| service-port 252 vlan 3107 gpon 0/1/6 ont 49 gemport 107 multi-service user-vlan 3107 tag-transform translate
   985|   983| monitor uplink-port non-unicast port 0/3/0
   986|   984| monitor uplink-port non-unicast port 0/3/1
   987|   985| monitor uplink-port non-unicast port 0/3/2
   988|   986| monitor uplink-port non-unicast port 0/4/0
   989|   987| monitor uplink-port non-unicast port 0/4/1
   990|   988| monitor uplink-port non-unicast port 0/4/2
   991|   989| monitor uplink-port non-unicast port 0/4/3
   992|   990|#
   993|   991|[abs-config]
   994|   992|  <abs-config>
   995|   993| monitor uplink-port pppoe port 0/3/0
   996|   994| monitor uplink-port pppoe port 0/3/1
   997|   995| monitor uplink-port pppoe port 0/3/2
   998|   996| monitor uplink-port pppoe port 0/4/0
   999|   997| monitor uplink-port pppoe port 0/4/1
  1000|   998| monitor uplink-port pppoe port 0/4/2
  1001|   999| monitor uplink-port pppoe port 0/4/3
  1002|  1000| nac bind pki-domain default
  1003|  1001|#
  1004|  1002|[lacp-config]
  1005|  1003|  <lacp-config>
  1006|  1004| link-aggregation lacp-key 0/3/2 1
  1007|  1005|#
  1008|  1006|[pki-config]
  1009|  1007|  <pki-config>
  1010|  1008|pki domain default
  1011|  1009| pki import-certificate local filename huawei_equipment.crt
  1012|  1010| pki import-certificate trusted-ca filename huawei_access_product_ca.crt
  1013|  1011| pki import-certificate trusted-ca filename huawei_equipment_root_ca.crt
  1014|  1012|pki switch preset-certificate chain link
  1015|  1013|#
  1016|  1014|[dimmng-config]
  1017|  1015|  <dimmng-config>
  1018|  1016|dim measure disable
  1019|  1017|#
  1020|  1018|[snmp]
  1021|  1019|  <snmp>
  1022|  1020| snmp-agent local-engineid 800007DB036C3491244627
  1023|  1021| snmp-agent community read cipher "%$%#cV(!!!!!!!!!!!!r-S*Wi7}:<GN$14DSU]DbQT.8&mvJ'eNAK;-,q3~H!"LGCAA|:|*JH(WGSG5g}y#;4Ygv+%$%#"
  1024|  1022|#
  1025|  1023|[ip-tunnel-profile]
  1026|  1024|  <ip-tunnel-profile>
  1027|  1025| ip tunnel priority-profile gre index 0 name "default-profile-0" inbound dscp-outer dscp-inner
  1028|  1026|#
  1029|  1027| ip tunnel priority-profile vxlan index 0 name "default-profile-0" inbound dscp-outer cos-inner
  1030|  1028|#
  1031|  1029|#
  1032|  1030|set neid 0xD5B4A6
  1033|  1031|#
  1034|  1032|[aaa]
  1035|  1033|  <aaa>
  1036|  1034|aaa
  1037|  1035| #
  1038|  1036| authentication-scheme "default"
  1039|  1037| #
  1040|  1038| authorization-scheme "default"
  1041|  1039| #
  1042|  1040| accounting-scheme "default"
  1043|  1041| #
  1044|  1042| domain "default"
  1045|  1043|#
  1046|  1044|[Interface]
  1047|  1045|  <Vlanif130>
  1048|  1046|interface Vlanif130
  1049|  1047| ip address 10.244.13.254 255.255.255.252
  1050|  1048|#
  1051|  1049|  <MEth0>
  1052|  1050|interface MEth0
  1053|  1051| ip address 10.244.13.250 255.255.255.252
  1054|  1052|#
  1055|  1053|  <NULL0>
  1056|  1054|interface NULL0
  1057|  1055|#
  1058|  1056|undo dcn
  1059|  1057|#
  1060|  1058|[route-static]
  1061|  1059|  <route-static>
  1062|  1060|ip route-static 0.0.0.0 0.0.0.0 10.244.13.253
  1063|  1061|#
  1064|  1062|[post-system]
  1065|  1063|  <post-system>
  1066|  1064| ssh user "radiusnet" authentication-type password
  1067|  1065| ssh user "root" authentication-type password
  1068|  1066| ssh user "suporte" authentication-type password
  1069|  1067| ssh server cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
  1070|  1068| ssh server hmac sha2_512 sha2_256 sha1
  1071|  1069| ssh server key-exchange dh_group_exchange_sha256 curve25519_sha256
  1072|  1070| ssh server dh-exchange min-len 2048
  1073|  1071| ssh server publickey rsa x509v3-ssh-rsa rsa_sha2_256 rsa_sha2_512 x509v3-rsa2048-sha256 ed25519
  1074|  1072| ntp-service server disable
  1075|  1073| ntp-service ipv6 server disable
  1076|  1074| ntp-service server source-interface all disable
  1077|  1075| ntp-service ipv6 server source-interface all disable
  1078|  1076| ntp-service unicast-server 200.160.0.8
  1079|  1077| ntp-service unicast-server 200.189.40.8
  1080|  1078| ssh client publickey rsa rsa_sha2_256 rsa_sha2_512 ed25519
  1081|  1079| ssh client cipher aes256_gcm aes128_gcm aes256_ctr aes192_ctr aes128_ctr chacha20_poly1305
  1082|  1080| ssh client hmac sha2_512 sha2_256 sha1
  1083|  1081| ssh client key-exchange dh_group_exchange_sha256 curve25519_sha256
  1084|  1082|#
  1085|  1083|[source-interface]
  1086|  1084|  <source-interface>
  1087|  1085| sysman server source ssh meth 0
  1088|  1086| sysman server source ssh any-interface
  1089|  1087| sysman server source snmp any-interface
  1090|  1088|#
  1091|  1089|return
  1092|  1090|
  1093|  1091|```
  1094|  1092|
```

## 🗒️ Observações
- {{notes}}
