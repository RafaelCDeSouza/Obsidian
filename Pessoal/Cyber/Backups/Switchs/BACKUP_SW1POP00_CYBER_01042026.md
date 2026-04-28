---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP00

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP00 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP00]]
     2|
     3|     1|```yaml
     4|     2|User Authentication
     5|     3|(admin@10.244.189.0) Password:
     6|     4|
     7|     5|Info: The max number of VTY users is 10, and the number
     8|     6|      of current VTY users on line is 1.
     9|     7|      The current login time is 2026-04-01 19:05:25-03:00.
    10|     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-03-27 04:07:17-03:00  Password will expire in: -
    11|     9|
    12|    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    13|    11|<SW1POP00_CYBER>sys
    14|    12|Enter system view, return user view with Ctrl+Z.
    15|    13|[SW1POP00_CYBER]sho
    16|    14|[SW1POP00_CYBER]displ
    17|    15|[SW1POP00_CYBER]display run
    18|    16|[SW1POP00_CYBER]display run
    19|    17|                        ^
    20|    18|Error: Unrecognized command found at '^' position.
    21|    19|[SW1POP00_CYBER]display cu
    22|    20|!Software Version V200R023C00SPC500
    23|    21|#
    24|    22|sysname SW1POP00_CYBER
    25|    23|#
    26|    24|vlan batch 2 4 10 to 13 16 to 19 21 23 30 to 31 39 to 41 50 to 51 53
    27|    25|vlan batch 60 to 61 70 to 71 73 80 to 81 83 90 to 91 100 to 101 110 to 111 113 120 to 121
    28|    26|vlan batch 130 to 131 133 140 to 141 150 to 151 160 to 161 169 171 173 181 190 to 191
    29|    27|vlan batch 193 to 194 200 to 201 203 211 213 220 250 to 251 253 258 271
    30|    28|vlan batch 273 281 283 905 to 907 912 to 917 919 to 920 922 to 924 926 931 934
    31|    29|vlan batch 936 938 to 942 945 to 949 952 to 953 956 to 960 963 965 to 966 968 970 to 974 977
    32|    30|vlan batch 982 985 to 986 990 1001 1003 1100 1108 1111 to 1112 1121 1125
    33|    31|vlan batch 1138 1144 1152 1164 1166 1195 1264 1295 1395 1914
    34|    32|vlan batch 2311 2340 to 2341 2733 3000 3005 3101 to 3102 3105 to 3108 3111 3114 3119 to 3121
    35|    33|vlan batch 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3167 3203 3207 to 3208 3252 3256
    36|    34|vlan batch 3261 3266 3341 3511 3532 to 3533 3540 to 3541 3550 3560 3571 3580 to 3581
    37|    35|vlan batch 3592 3602 3790 to 3791 3902 3904 to 3906 3964 4000 to 4001 4012 4094
    38|    36|#
    39|    37|authentication-profile name default_authen_profile
    40|    38| authentication ipv6-control enable
    41|    39|authentication-profile name dot1x_authen_profile
    42|    40| authentication ipv6-control enable
    43|    41|authentication-profile name dot1xmac_authen_profile
    44|    42| authentication ipv6-control enable
    45|    43|authentication-profile name mac_authen_profile
    46|    44| authentication ipv6-control enable
    47|    45|authentication-profile name multi_authen_profile
    48|    46| authentication ipv6-control enable
    49|    47|authentication-profile name portal_authen_profile
    50|    48| authentication ipv6-control enable
    51|    49|#
    52|    50|set save-configuration delay 1
    53|    51|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    54|    52|#
    55|    53|http server-source all-interface
    56|    54|#
    57|    55|clock timezone Brasilia minus 03:00:00
    58|    56|#
    59|    57|ddr isolation disable
    60|    58|#
    61|    59|undo mac-address learning self-healing enable
    62|    60|#
    63|    61|capwap unknown-unicast cir 0
    64|    62|#
    65|    63|diffserv domain default
    66|    64|#
    67|    65|radius-server template default
    68|    66|#
    69|    67|bfd
    70|    68|#
    71|    69|mpls lsr-id 10.244.189.0
    72|    70|mpls
    73|    71| mpls te
    74|    72| mpls rsvp-te
    75|    73| mpls te cspf
    76|    74|#
    77|    75|mpls l2vpn
    78|    76|#
    79|    77|vsi VSI_21_CY_POP00_POP02_POA_OLT1 static
    80|    78| pwsignal ldp
    81|    79|  vsi-id 21
    82|    80|  peer 10.244.188.2
    83|    81|  traffic-statistics enable
    84|    82| mtu 9000
    85|    83| encapsulation ethernet
    86|    84|#
    87|    85|vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1 static
    88|    86| pwsignal ldp
    89|    87|  vsi-id 41
    90|    88|  peer 10.244.188.19
    91|    89|  traffic-statistics enable
    92|    90| mtu 9000
    93|    91| encapsulation ethernet
    94|    92|#
    95|    93|vsi VSI_3120_POP00_POP20_BGP1_CE20 static
    96|    94| pwsignal ldp
    97|    95|  vsi-id 3120
    98|    96|  peer 10.244.188.20
    99|    97| mtu 9000
   100|    98| encapsulation ethernet
   101|    99|#
   102|   100|vsi VSI_161_CY_POP0-2_POP16_CA_OLT1 static
   103|   101| pwsignal ldp
   104|   102|  vsi-id 161
   105|   103|  peer 10.244.189.3
   106|   104|  traffic-statistics enable
   107|   105| mtu 9000
   108|   106| encapsulation ethernet
   109|   107|#
   110|   108|vsi VSI_169_CY_POP0-2_POP16_CA_RADI static
   111|   109| pwsignal ldp
   112|   110|  vsi-id 169
   113|   111|  peer 10.244.189.3
   114|   112|  traffic-statistics enable
   115|   113| mtu 9000
   116|   114| encapsulation ethernet
   117|   115|#
   118|   116|vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1 static
   119|   117| pwsignal ldp
   120|   118|  vsi-id 31
   121|   119|  peer 10.244.189.3
   122|   120|  traffic-statistics enable
   123|   121| mtu 9000
   124|   122| encapsulation ethernet
   125|   123|#
   126|   124|vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
   127|   125| pwsignal ldp
   128|   126|  vsi-id 61
   129|   127|  peer 10.244.188.7
   130|   128|  traffic-statistics enable
   131|   129| mtu 9000
   132|   130| encapsulation ethernet
   133|   131|#
   134|   132|vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1 static
   135|   133| pwsignal ldp
   136|   134|  vsi-id 91
   137|   135|  peer 10.244.189.3
   138|   136|  traffic-statistics enable
   139|   137| mtu 9000
   140|   138| encapsulation ethernet
   141|   139|#
   142|   140|vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1 static
   143|   141| pwsignal ldp
   144|   142|  vsi-id 101
   145|   143|  peer 10.244.189.10
   146|   144|  traffic-statistics enable
   147|   145| mtu 9000
   148|   146| encapsulation ethernet
   149|   147|#
   150|   148|vsi VSI_160_CY_POP0-2_POP16_CA_MGNT static
   151|   149| pwsignal ldp
   152|   150|  vsi-id 160
   153|   151|  peer 10.244.189.3
   154|   152|  traffic-statistics enable
   155|   153| mtu 9000
   156|   154| encapsulation ethernet
   157|   155|#
   158|   156|vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT static
   159|   157| pwsignal ldp
   160|   158|  vsi-id 90
   161|   159|  peer 10.244.189.3
   162|   160|  traffic-statistics enable
   163|   161| mtu 9000
   164|   162| encapsulation ethernet
   165|   163|#
   166|   164|vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
   167|   165| pwsignal ldp
   168|   166|  vsi-id 60
   169|   167|  peer 10.244.188.7
   170|   168|  traffic-statistics enable
   171|   169| mtu 9000
   172|   170| encapsulation ethernet
   173|   171|#
   174|   172|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   175|   173| pwsignal ldp
   176|   174|  vsi-id 30
   177|   175|  peer 10.244.189.3
   178|   176|  traffic-statistics enable
   179|   177| mtu 9000
   180|   178| encapsulation ethernet
   181|   179|#
   182|   180|vsi VSI_71_CY_POP0-2_POP07_STE_OLT1 static
   183|   181| pwsignal ldp
   184|   182|  vsi-id 71
   185|   183|  peer 10.244.188.7
   186|   184|  traffic-statistics enable
   187|   185| mtu 9000
   188|   186| encapsulation ethernet
   189|   187|#
   190|   188|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
   191|   189| pwsignal ldp
   192|   190|  vsi-id 121
   193|   191|  peer 10.244.189.12
   194|   192|  traffic-statistics enable
   195|   193| mtu 9000
   196|   194| encapsulation ethernet
   197|   195|#
   198|   196|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
   199|   197| pwsignal ldp
   200|   198|  vsi-id 120
   201|   199|  peer 10.244.189.12
   202|   200|  traffic-statistics enable
   203|   201| mtu 9000
   204|   202| encapsulation ethernet
   205|   203|#
   206|   204|vsi VSI_70_CY_POP0-2_POP07_STE_MGNT static
   207|   205| pwsignal ldp
   208|   206|  vsi-id 70
   209|   207|  peer 10.244.188.7
   210|   208|  traffic-statistics enable
   211|   209| mtu 9000
   212|   210| encapsulation ethernet
   213|   211|#
   214|   212|vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT static
   215|   213| pwsignal ldp
   216|   214|  vsi-id 100
   217|   215|  peer 10.244.189.10
   218|   216|  traffic-statistics enable
   219|   217| mtu 9000
   220|   218| encapsulation ethernet
   221|   219|#
   222|   220|vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
   223|   221| pwsignal ldp
   224|   222|  vsi-id 130
   225|   223|  peer 10.244.188.2
   226|   224|  peer 10.244.189.65
   227|   225|  traffic-statistics enable
   228|   226| mtu 9000
   229|   227| encapsulation ethernet
   230|   228|#
   231|   229|vsi VSI_81_POP0-2_POP08_FREITA_OLT1 static
   232|   230| pwsignal ldp
   233|   231|  vsi-id 81
   234|   232|  peer 10.244.188.8
   235|   233|  traffic-statistics enable
   236|   234| mtu 9000
   237|   235| encapsulation ethernet
   238|   236|#
   239|   237|vsi VSI_3153_CY_POP00_PROV_LM_CIVIL static
   240|   238| pwsignal ldp
   241|   239|  vsi-id 3153
   242|   240|  peer 10.244.188.27
   243|   241|  peer 10.244.188.28
   244|   242|  traffic-statistics enable
   245|   243| mtu 9000
   246|   244| encapsulation ethernet
   247|   245|#
   248|   246|vsi VSI_3560_TRANS_PPPOE_POWERNET static
   249|   247| pwsignal ldp
   250|   248|  vsi-id 3560
   251|   249|  peer 10.244.188.125
   252|   250|  peer 10.244.188.27
   253|   251| mtu 9000
   254|   252| encapsulation ethernet
   255|   253|#
   256|   254|vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
   257|   255| pwsignal ldp
   258|   256|  vsi-id 23
   259|   257|  peer 10.244.188.2
   260|   258|  traffic-statistics enable
   261|   259| mtu 9000
   262|   260| encapsulation ethernet
   263|   261|#
   264|   262|vsi VSI_253_CY_POP0-2_POP25_PO_OLT1 static
   265|   263| pwsignal ldp
   266|   264|  vsi-id 253
   267|   265|  peer 10.244.188.125
   268|   266|  traffic-statistics enable
   269|   267| mtu 9000
   270|   268| encapsulation ethernet
   271|   269|#
   272|   270|vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
   273|   271| pwsignal ldp
   274|   272|  vsi-id 258
   275|   273|  peer 10.244.188.125
   276|   274|  traffic-statistics enable
   277|   275| mtu 9000
   278|   276| encapsulation ethernet
   279|   277|#
   280|   278|vsi VSI_110_POP00_02_POP11_VI_MGNT static
   281|   279| pwsignal ldp
   282|   280|  vsi-id 110
   283|   281|  peer 10.244.189.11
   284|   282|  traffic-statistics enable
   285|   283| mtu 9000
   286|   284| encapsulation ethernet
   287|   285|#
   288|   286|vsi VSI_111_POP00_02_POP11_VI_OLT1 static
   289|   287| pwsignal ldp
   290|   288|  vsi-id 111
   291|   289|  peer 10.244.188.11
   292|   290|  peer 10.244.188.11 pw POP00_POP11_ANT
   293|   291|  peer 10.244.189.11
   294|   292|  traffic-statistics enable
   295|   293| mtu 9000
   296|   294| encapsulation ethernet
   297|   295|#
   298|   296|vsi VSI_971_POP21_POP00_TR_PREF_SAP static
   299|   297| pwsignal ldp
   300|   298|  vsi-id 971
   301|   299|  peer 10.244.188.21
   302|   300| mtu 9000
   303|   301| encapsulation ethernet
   304|   302|#
   305|   303|vsi VSI_3155_CY_POP00_PROV_LM_V_MAR static
   306|   304| pwsignal ldp
   307|   305|  vsi-id 3155
   308|   306|  peer 10.244.188.28
   309|   307|  peer 10.244.189.28
   310|   308| mtu 9000
   311|   309| encapsulation ethernet
   312|   310|#
   313|   311|vsi VSI_3154_CY_POP00_PROV_LM_V_RIC static
   314|   312| pwsignal ldp
   315|   313|  vsi-id 3154
   316|   314|  peer 10.244.188.28
   317|   315|  peer 10.244.189.28
   318|   316| mtu 9000
   319|   317| encapsulation ethernet
   320|   318|#
   321|   319|vsi VSI3906_PNI_META_POP00_CYBER static
   322|   320| pwsignal ldp
   323|   321|  vsi-id 3906
   324|   322|  peer 10.244.188.1
   325|   323| mtu 8000
   326|   324| encapsulation ethernet
   327|   325|#
   328|   326|vsi VSI_3160_CY_POP00_PROV_NIC_TELE static
   329|   327| pwsignal ldp
   330|   328|  vsi-id 3160
   331|   329|  peer 10.244.188.15
   332|   330|  peer 10.244.189.15
   333|   331| mtu 9000
   334|   332| encapsulation ethernet
   335|   333|#
   336|   334|vsi VSI_113_POP00_02_POP11_VI_OLT1 static
   337|   335| pwsignal ldp
   338|   336|  vsi-id 113
   339|   337|  peer 10.244.188.11
   340|   338|  peer 10.244.189.11
   341|   339|  traffic-statistics enable
   342|   340| mtu 9000
   343|   341| encapsulation ethernet
   344|   342|#
   345|   343|vsi VSI_150_CY_POP00_POP15_EXP_MGNT static
   346|   344| pwsignal ldp
   347|   345|  vsi-id 150
   348|   346|  peer 10.244.189.15
   349|   347|  traffic-statistics enable
   350|   348| mtu 9000
   351|   349| encapsulation ethernet
   352|   350|#
   353|   351|vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
   354|   352| pwsignal ldp
   355|   353|  vsi-id 3571
   356|   354|  peer 10.244.188.20
   357|   355|  traffic-statistics enable
   358|   356| mtu 9000
   359|   357| encapsulation ethernet
   360|   358|#
   361|   359|vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
   362|   360| pwsignal ldp
   363|   361|  vsi-id 151
   364|   362|  peer 10.244.188.15
   365|   363|  peer 10.244.189.15
   366|   364|  traffic-statistics enable
   367|   365| mtu 9000
   368|   366| encapsulation ethernet
   369|   367|#
   370|   368|vsi VSI_3143_CY_POP00_PROV_AS52917 static
   371|   369| pwsignal ldp
   372|   370|  vsi-id 3143
   373|   371|  peer 10.244.188.43
   374|   372| mtu 9000
   375|   373| encapsulation ethernet
   376|   374|#
   377|   375|vsi VSI_50_POP0-2_POP05_M_RIN_MGNT static
   378|   376| pwsignal ldp
   379|   377|  vsi-id 50
   380|   378|  peer 10.244.188.5
   381|   379|  traffic-statistics enable
   382|   380| mtu 9000
   383|   381| encapsulation ethernet
   384|   382|#
   385|   383|vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
   386|   384| pwsignal ldp
   387|   385|  vsi-id 51
   388|   386|  peer 10.244.188.5
   389|   387|  traffic-statistics enable
   390|   388| mtu 9000
   391|   389| encapsulation ethernet
   392|   390|#
   393|   391|vsi VSI_3150_POP00_PROV_VPM_MAIOLI static
   394|   392| pwsignal ldp
   395|   393|  vsi-id 3150
   396|   394|  peer 10.244.188.50
   397|   395|  traffic-statistics enable
   398|   396| mtu 9000
   399|   397| encapsulation ethernet
   400|   398|#
   401|   399|vsi VSI_3162_POP00_PROV_EQUATORIAL static
   402|   400| pwsignal ldp
   403|   401|  vsi-id 3162
   404|   402|  peer 10.244.188.62
   405|   403|  traffic-statistics enable
   406|   404| mtu 9000
   407|   405| encapsulation ethernet
   408|   406|#
   409|   407|vsi VSI_16_SERVIDORES_IP_PUBLICOS static
   410|   408| pwsignal ldp
   411|   409|  vsi-id 16
   412|   410|  peer 10.244.188.20
   413|   411| mtu 9000
   414|   412| encapsulation ethernet
   415|   413|#
   416|   414|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
   417|   415| pwsignal ldp
   418|   416|  vsi-id 3581
   419|   417|  peer 10.244.188.59
   420|   418| mtu 9000
   421|   419| encapsulation ethernet
   422|   420|#
   423|   421|vsi VSI_3261_POP00-02_PROV_VALESAT static
   424|   422| pwsignal ldp
   425|   423|  vsi-id 3261
   426|   424|  peer 10.244.188.17
   427|   425|  traffic-statistics enable
   428|   426| mtu 9000
   429|   427| encapsulation ethernet
   430|   428|#
   431|   429|vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
   432|   430| pwsignal ldp
   433|   431|  vsi-id 4000
   434|   432|  peer 10.244.188.2
   435|   433|  traffic-statistics enable
   436|   434| mtu 9000
   437|   435| encapsulation ethernet
   438|   436|#
   439|   437|vsi VSI_3252_POP00-02_PROV_BLUSTELE static
   440|   438| pwsignal ldp
   441|   439|  vsi-id 3252
   442|   440|  peer 10.244.188.2
   443|   441|  traffic-statistics enable
   444|   442| mtu 9000
   445|   443| encapsulation ethernet
   446|   444|#
   447|   445|vsi VSI_3266_POP00-02_PROV_WIANETSU static
   448|   446| pwsignal ldp
   449|   447|  vsi-id 3266
   450|   448|  peer 10.244.188.2
   451|   449|  traffic-statistics enable
   452|   450| mtu 9000
   453|   451| encapsulation ethernet
   454|   452|#
   455|   453|vsi VSI_3203_POP04_POP00_IXRS_BLUS static
   456|   454| pwsignal ldp
   457|   455|  vsi-id 3203
   458|   456|  peer 10.244.188.4
   459|   457|  traffic-statistics enable
   460|   458| mtu 8000
   461|   459| encapsulation ethernet
   462|   460|#
   463|   461|vsi VSI_3207_POP00_POP04_IXRS_CYBER static
   464|   462| pwsignal ldp
   465|   463|  vsi-id 3207
   466|   464|  peer 10.244.188.4
   467|   465|  traffic-statistics enable
   468|   466| mtu 8000
   469|   467| encapsulation ethernet
   470|   468|#
   471|   469|vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT static
   472|   470| pwsignal ldp
   473|   471|  vsi-id 80
   474|   472|  peer 10.244.188.8
   475|   473|  traffic-statistics enable
   476|   474| mtu 9000
   477|   475| encapsulation ethernet
   478|   476|#
   479|   477|vsi VSI_1003_BGP1_CYBER_CE03_CYBER static
   480|   478| pwsignal ldp
   481|   479|  vsi-id 1003
   482|   480|  peer 10.244.188.17
   483|   481|  traffic-statistics enable
   484|   482| mtu 9000
   485|   483| encapsulation ethernet
   486|   484|#
   487|   485|vsi VSI190_CY_POP0-2_POP19_HIP_MGNT static
   488|   486| pwsignal ldp
   489|   487|  vsi-id 190
   490|   488|  peer 10.244.188.19
   491|   489|  traffic-statistics enable
   492|   490| mtu 9000
   493|   491| encapsulation ethernet
   494|   492|#
   495|   493|vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4 static
   496|   494| pwsignal ldp
   497|   495|  vsi-id 3790
   498|   496|  peer 10.244.188.1
   499|   497|  traffic-statistics enable
   500|   498| mtu 8000
   501|   499| encapsulation ethernet
   502|   500|#
   503|   501|vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6 static
   504|   502| pwsignal ldp
   505|   503|  vsi-id 3791
   506|   504|  peer 10.244.188.1
   507|   505|  traffic-statistics enable
   508|   506| mtu 8000
   509|   507| encapsulation ethernet
   510|   508|#
   511|   509|vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
   512|   510| pwsignal ldp
   513|   511|  vsi-id 131
   514|   512|  peer 10.244.188.13
   515|   513|  traffic-statistics enable
   516|   514| mtu 9000
   517|   515| encapsulation ethernet
   518|   516|#
   519|   517|vsi VSI_3005_TRANSP_TELIU_STA_CASA static
   520|   518| pwsignal ldp
   521|   519|  vsi-id 3005
   522|   520|  peer 10.244.188.2
   523|   521|  traffic-statistics enable
   524|   522| mtu 9000
   525|   523| encapsulation ethernet
   526|   524|#
   527|   525|vsi VSI3904_PNI_META_POP00_CYBER static
   528|   526| pwsignal ldp
   529|   527|  vsi-id 3904
   530|   528|  peer 10.244.188.1
   531|   529| mtu 8000
   532|   530| encapsulation ethernet
   533|   531|#
   534|   532|vsi VSI_3000_CYB_POP00-17_BGP1_BGP1 static
   535|   533| pwsignal ldp
   536|   534|  vsi-id 3000
   537|   535|  peer 10.244.188.17
   538|   536| mtu 9000
   539|   537| encapsulation ethernet
   540|   538|#
   541|   539|vsi VSI_959_POP00_POP08_TRANSP_VERO static
   542|   540| pwsignal ldp
   543|   541|  vsi-id 959
   544|   542|  peer 10.244.188.8
   545|   543|  traffic-statistics enable
   546|   544| mtu 9000
   547|   545| encapsulation ethernet
   548|   546|#
   549|   547|vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA static
   550|   548| pwsignal ldp
   551|   549|  vsi-id 3532
   552|   550|  peer 10.244.188.21
   553|   551| mtu 9000
   554|   552| encapsulation ethernet
   555|   553|#
   556|   554|vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA static
   557|   555| pwsignal ldp
   558|   556|  vsi-id 3533
   559|   557|  peer 10.244.188.21
   560|   558| mtu 9000
   561|   559| encapsulation ethernet
   562|   560|#
   563|   561|vsi VSI_39_POP0-02_POP03_M_FLO_RADI static
   564|   562| pwsignal ldp
   565|   563|  vsi-id 39
   566|   564|  peer 10.244.189.3
   567|   565| mtu 9000
   568|   566| encapsulation ethernet
   569|   567|#
   570|   568|vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
   571|   569| pwsignal ldp
   572|   570|  vsi-id 193
   573|   571|  peer 10.244.188.19
   574|   572|  traffic-statistics enable
   575|   573| mtu 9000
   576|   574| encapsulation ethernet
   577|   575|#
   578|   576|vsi VSI_3167_POP00_PROV_LUCFIBRA_L1 static
   579|   577| pwsignal ldp
   580|   578|  vsi-id 3167
   581|   579|  peer 10.244.188.67
   582|   580| mtu 9000
   583|   581| encapsulation ethernet
   584|   582|#
   585|   583|vsi VSI_271_SC_POP0-2_POP27_CI_OLT1 static
   586|   584| pwsignal ldp
   587|   585|  vsi-id 271
   588|   586|  peer 10.244.188.27
   589|   587| mtu 9000
   590|   588| encapsulation ethernet
   591|   589|#
   592|   590|vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
   593|   591| pwsignal ldp
   594|   592|  vsi-id 273
   595|   593|  peer 10.244.188.27
   596|   594| mtu 9000
   597|   595| encapsulation ethernet
   598|   596|#
   599|   597|vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
   600|   598| pwsignal ldp
   601|   599|  vsi-id 11
   602|   600|  peer 10.244.188.2
   603|   601|  traffic-statistics enable
   604|   602| mtu 9000
   605|   603| encapsulation ethernet
   606|   604|#
   607|   605|vsi VSI_3902_EQUIN_POP00_CYBER_BGP1 static
   608|   606| pwsignal ldp
   609|   607|  vsi-id 3902
   610|   608|  peer 10.244.188.1
   611|   609|  traffic-statistics enable
   612|   610| mtu 8000
   613|   611| encapsulation ethernet
   614|   612|#
   615|   613|vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
   616|   614| pwsignal ldp
   617|   615|  vsi-id 12
   618|   616|  peer 10.244.188.2
   619|   617|  traffic-statistics enable
   620|   618| mtu 9000
   621|   619| encapsulation ethernet
   622|   620|#
   623|   621|vsi VSI_3107_POP00_POP02_TR_POA_SEG static
   624|   622| pwsignal ldp
   625|   623|  vsi-id 3107
   626|   624|  peer 10.244.188.2
   627|   625|  peer 10.244.188.125
   628|   626|  peer 10.244.188.19
   629|   627|  peer 10.244.188.17
   630|   628|  peer 10.244.189.65
   631|   629|  peer 10.244.188.20
   632|   630|  peer 10.244.188.21
   633|   631|  peer 10.244.189.11
   634|   632|  peer 10.244.188.13
   635|   633|  traffic-statistics enable
   636|   634| mtu 9000
   637|   635| encapsulation ethernet
   638|   636|#
   639|   637|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
   640|   638| pwsignal ldp
   641|   639|  vsi-id 3114
   642|   640|  peer 10.244.189.14
   643|   641|  traffic-statistics enable
   644|   642| mtu 9000
   645|   643| encapsulation ethernet
   646|   644|#
   647|   645|vsi VSI_3101_POP00_TRANS_CAM_SAPUCA static
   648|   646| pwsignal ldp
   649|   647|  vsi-id 3101
   650|   648|  peer 10.244.188.8
   651|   649|  peer 10.244.188.125
   652|   650|  peer 10.244.188.15
   653|   651|  peer 10.244.188.5
   654|   652|  peer 10.244.188.22
   655|   653|  traffic-statistics enable
   656|   654| mtu 9000
   657|   655| encapsulation ethernet
   658|   656|#
   659|   657|vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
   660|   658| pwsignal ldp
   661|   659|  vsi-id 3105
   662|   660|  peer 10.244.188.2
   663|   661|  peer 10.244.188.19
   664|   662|  peer 10.244.188.4
   665|   663|  peer 10.244.188.17
   666|   664|  peer 10.244.188.125
   667|   665|  peer 10.244.189.65
   668|   666|  peer 10.244.188.20
   669|   667|  peer 10.244.188.21
   670|   668|  peer 10.244.189.11
   671|   669|  traffic-statistics enable
   672|   670| mtu 9000
   673|   671| encapsulation ethernet
   674|   672|#
   675|   673|vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
   676|   674| pwsignal ldp
   677|   675|  vsi-id 3106
   678|   676|  peer 10.244.188.2
   679|   677|  peer 10.244.188.20
   680|   678|  peer 10.244.189.11
   681|   679|  traffic-statistics enable
   682|   680| mtu 9000
   683|   681| encapsulation ethernet
   684|   682|#
   685|   683|vsi VSI_3102_POP00_TRANS_CAM_SAPUCA static
   686|   684| pwsignal ldp
   687|   685|  vsi-id 3102
   688|   686|  peer 10.244.188.125
   689|   687|  peer 10.244.188.21
   690|   688|  peer 10.244.188.22
   691|   689|  traffic-statistics enable
   692|   690| mtu 9000
   693|   691| encapsulation ethernet
   694|   692|#
   695|   693|vsi VSI3511_POP12_TR_FENIX_CYBER_RN static
   696|   694| pwsignal ldp
   697|   695|  vsi-id 3511
   698|   696|  peer 10.244.189.12
   699|   697|  traffic-statistics enable
   700|   698| mtu 9000
   701|   699| encapsulation ethernet
   702|   700|#
   703|   701|vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
   704|   702| pwsignal ldp
   705|   703|  vsi-id 3341
   706|   704|  peer 10.244.188.17
   707|   705|  peer 10.244.188.62
   708|   706|  peer 10.244.188.67
   709|   707|  peer 10.244.188.19
   710|   708|  peer 10.244.188.2
   711|   709|  peer 10.244.189.11
   712|   710|  peer 10.244.188.21
   713|   711|  peer 10.244.188.44
   714|   712|  traffic-statistics enable
   715|   713| mtu 9000
   716|   714| encapsulation ethernet
   717|   715|#
   718|   716|vsi VSI_3256_TRANSP_TELIU_DEDICADOS static
   719|   717| pwsignal ldp
   720|   718|  vsi-id 3256
   721|   719|  peer 10.244.188.2
   722|   720|  traffic-statistics enable
   723|   721| mtu 9000
   724|   722| encapsulation ethernet
   725|   723|#
   726|   724|vsi VSI_3163_POP00-02_POP63_VILLELA static
   727|   725| pwsignal ldp
   728|   726|  vsi-id 3163
   729|   727|  peer 10.244.188.19
   730|   728|  traffic-statistics enable
   731|   729| mtu 9000
   732|   730| encapsulation ethernet
   733|   731|#
   734|   732|vsi VSI_3149_CY_POP00_PROV_AS270998 static
   735|   733| pwsignal ldp
   736|   734|  vsi-id 3149
   737|   735|  peer 10.244.188.49
   738|   736|  traffic-statistics enable
   739|   737| mtu 9000
   740|   738| encapsulation ethernet
   741|   739|#
   742|   740|vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
   743|   741| pwsignal ldp
   744|   742|  vsi-id 17
   745|   743|  peer 10.244.188.2
   746|   744|  traffic-statistics enable
   747|   745| mtu 9000
   748|   746| encapsulation ethernet
   749|   747|#
   750|   748|vsi VSI_3108_POP00_POP02_TR_POA_SEG static
   751|   749| pwsignal ldp
   752|   750|  vsi-id 3108
   753|   751|  peer 10.244.188.2
   754|   752|  peer 10.244.188.18
   755|   753|  traffic-statistics enable
   756|   754| mtu 9000
   757|   755| encapsulation ethernet
   758|   756|#
   759|   757|vsi VSI_181_POP0-2_POP18_CEIC_OLT1 static
   760|   758| pwsignal ldp
   761|   759|  vsi-id 181
   762|   760|  peer 10.244.188.18
   763|   761|  traffic-statistics enable
   764|   762| mtu 9000
   765|   763| encapsulation ethernet
   766|   764|#
   767|   765|vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT static
   768|   766| pwsignal ldp
   769|   767|  vsi-id 40
   770|   768|  peer 10.244.188.19
   771|   769|  traffic-statistics enable
   772|   770| mtu 9000
   773|   771| encapsulation ethernet
   774|   772|#
   775|   773|vsi VSI191_CY_POP0-2_POP19_HIP_OLT1 static
   776|   774| pwsignal ldp
   777|   775|  vsi-id 191
   778|   776|  peer 10.244.188.19
   779|   777|  traffic-statistics enable
   780|   778| mtu 9000
   781|   779| encapsulation ethernet
   782|   780|#
   783|   781|vsi VSI_140_POP0-2_POP14_LGRAN_OLT1 static
   784|   782| description VLAN_140_POP14_OLT1
   785|   783| pwsignal ldp
   786|   784|  vsi-id 140
   787|   785|  peer 10.244.189.14
   788|   786|  traffic-statistics enable
   789|   787| mtu 9000
   790|   788| encapsulation ethernet
   791|   789|#
   792|   790|vsi VSI194_POP0-2_POP19_HIPIC_RSSUL static
   793|   791| pwsignal ldp
   794|   792|  vsi-id 194
   795|   793|  peer 10.244.188.19
   796|   794|  traffic-statistics enable
   797|   795| mtu 9000
   798|   796| encapsulation ethernet
   799|   797|#
   800|   798|vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
   801|   799| pwsignal ldp
   802|   800|  vsi-id 171
   803|   801|  peer 10.244.188.17
   804|   802|  traffic-statistics enable
   805|   803| mtu 9000
   806|   804| encapsulation ethernet
   807|   805|#
   808|   806|vsi VSI173_CY_POP0-2_POP17_ELE_OLT1 static
   809|   807| pwsignal ldp
   810|   808|  vsi-id 173
   811|   809|  peer 10.244.188.17
   812|   810|  traffic-statistics enable
   813|   811| mtu 9000
   814|   812| encapsulation ethernet
   815|   813|#
   816|   814|vsi VSI_13_CY_POP00_POP02_SAP_OLT1 static
   817|   815| pwsignal ldp
   818|   816|  vsi-id 13
   819|   817|  peer 10.244.188.2
   820|   818|  peer 10.244.188.49
   821|   819|  traffic-statistics enable
   822|   820| mtu 9000
   823|   821| encapsulation ethernet
   824|   822|#
   825|   823|vsi VSI_281_SC_POP0-2_POP28_VR_OLT1 static
   826|   824| pwsignal ldp
   827|   825|  vsi-id 281
   828|   826|  peer 10.244.189.28
   829|   827| mtu 9000
   830|   828| encapsulation ethernet
   831|   829|#
   832|   830|vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
   833|   831| pwsignal ldp
   834|   832|  vsi-id 141
   835|   833|  peer 10.244.189.14
   836|   834|  traffic-statistics enable
   837|   835| mtu 9000
   838|   836| encapsulation ethernet
   839|   837|#
   840|   838|vsi VSI_18_CY_POP00_POP02_SAP_RADI static
   841|   839| pwsignal ldp
   842|   840|  vsi-id 18
   843|   841|  peer 10.244.188.2
   844|   842|  traffic-statistics enable
   845|   843| mtu 9000
   846|   844| encapsulation ethernet
   847|   845|#
   848|   846|vsi VSI3119_POP00_TRAN_PROV_NEGETTI static
   849|   847| pwsignal ldp
   850|   848|  vsi-id 3119
   851|   849|  peer 10.244.188.27
   852|   850|  traffic-statistics enable
   853|   851| mtu 9000
   854|   852| encapsulation ethernet
   855|   853|#
   856|   854|vsi VSI_3208_PNI_GGC_ASN273461 static
   857|   855| pwsignal ldp
   858|   856|  vsi-id 3208
   859|   857|  peer 10.244.188.1
   860|   858|  traffic-statistics enable
   861|   859| mtu 8000
   862|   860| encapsulation ethernet
   863|   861|#
   864|   862|vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
   865|   863| pwsignal ldp
   866|   864|  vsi-id 4012
   867|   865|  peer 10.244.188.2
   868|   866|  traffic-statistics enable
   869|   867| mtu 9000
   870|   868| encapsulation ethernet
   871|   869|#
   872|   870|vsi VSI_3540_POP00-02_TRAN_MEDIANET static
   873|   871| pwsignal ldp
   874|   872|  vsi-id 3540
   875|   873|  peer 10.244.188.5
   876|   874|  traffic-statistics enable
   877|   875| mtu 9000
   878|   876| encapsulation ethernet
   879|   877|#
   880|   878|vsi VSI_73_CY_POP0-2_POP07_STE_OLT1 static
   881|   879| pwsignal ldp
   882|   880|  vsi-id 73
   883|   881|  peer 10.244.188.7
   884|   882|  traffic-statistics enable
   885|   883| mtu 9000
   886|   884| encapsulation ethernet
   887|   885|#
   888|   886|vsi VSI_3541_POP00-02_TRAN_MEDIANET static
   889|   887| pwsignal ldp
   890|   888|  vsi-id 3541
   891|   889|  peer 10.244.188.5
   892|   890|  traffic-statistics enable
   893|   891| mtu 9000
   894|   892| encapsulation ethernet
   895|   893|#
   896|   894|vsi VSI_1914_SEABORN_L1_ASN273461 static
   897|   895| pwsignal ldp
   898|   896|  vsi-id 1914
   899|   897|  peer 10.244.188.17
   900|   898|  traffic-statistics enable
   901|   899| mtu 9000
   902|   900| encapsulation ethernet
   903|   901|#
   904|   902|vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1 static
   905|   903| pwsignal ldp
   906|   904|  vsi-id 83
   907|   905|  peer 10.244.188.8
   908|   906|  traffic-statistics enable
   909|   907| mtu 9000
   910|   908| encapsulation ethernet
   911|   909|#
   912|   910|vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1 static
   913|   911| pwsignal ldp
   914|   912|  vsi-id 201
   915|   913|  peer 10.244.188.20
   916|   914|  traffic-statistics enable
   917|   915| mtu 9000
   918|   916| encapsulation ethernet
   919|   917|#
   920|   918|vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1 static
   921|   919| pwsignal ldp
   922|   920|  vsi-id 203
   923|   921|  peer 10.244.188.20
   924|   922|  traffic-statistics enable
   925|   923| mtu 9000
   926|   924| encapsulation ethernet
   927|   925|#
   928|   926|vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT static
   929|   927| pwsignal ldp
   930|   928|  vsi-id 200
   931|   929|  peer 10.244.188.20
   932|   930|  traffic-statistics enable
   933|   931| mtu 9000
   934|   932| encapsulation ethernet
   935|   933|#
   936|   934|vsi VSI_1395_POP00_POP95_DGT_SSP static
   937|   935| pwsignal ldp
   938|   936|  vsi-id 1395
   939|   937|  peer 10.244.188.95
   940|   938|  traffic-statistics enable
   941|   939| mtu 1600
   942|   940| encapsulation ethernet
   943|   941|#
   944|   942|vsi VSI_3147_BGP1CYBE_PROV_IDENTITY static
   945|   943| pwsignal ldp
   946|   944|  vsi-id 3147
   947|   945|  peer 10.244.188.47
   948|   946| mtu 9000
   949|   947| encapsulation ethernet
   950|   948|#
   951|   949|vsi VSI_250_CY_POP0-2_POP25_PO_MGNT static
   952|   950| pwsignal ldp
   953|   951|  vsi-id 250
   954|   952|  peer 10.244.188.125
   955|   953| mtu 9000
   956|   954| encapsulation ethernet
   957|   955|#
   958|   956|vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA static
   959|   957| pwsignal ldp
   960|   958|  vsi-id 3111
   961|   959|  peer 10.244.188.60
   962|   960|  traffic-statistics enable
   963|   961| mtu 9000
   964|   962| encapsulation ethernet
   965|   963|#
   966|   964|vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
   967|   965| pwsignal ldp
   968|   966|  vsi-id 133
   969|   967|  peer 10.244.188.13
   970|   968|  traffic-statistics enable
   971|   969| mtu 9000
   972|   970| encapsulation ethernet
   973|   971|#
   974|   972|vsi VSI_283_CY_POP0-2_POP28_VR_OLT1 static
   975|   973| pwsignal ldp
   976|   974|  vsi-id 283
   977|   975|  peer 10.244.189.28
   978|   976| mtu 9000
   979|   977| encapsulation ethernet
   980|   978|#
   981|   979|vsi VSI_213_POP0-2_POP21_PREF_SAPUC static
   982|   980| pwsignal ldp
   983|   981|  vsi-id 213
   984|   982|  peer 10.244.188.21
   985|   983|  traffic-statistics enable
   986|   984| mtu 9000
   987|   985| encapsulation ethernet
   988|   986|#
   989|   987|vsi VSI3121_POP0-2_POP21_PREF_SAPUC static
   990|   988| pwsignal ldp
   991|   989|  vsi-id 3121
   992|   990|  peer 10.244.188.21
   993|   991|  traffic-statistics enable
   994|   992| mtu 9000
   995|   993| encapsulation ethernet
   996|   994|#
   997|   995|vsi VSI_965_POP21_POP00_TR_PREF_SAP static
   998|   996| pwsignal ldp
   999|   997|  vsi-id 965
  1000|   998|  peer 10.244.188.21
  1001|   999| mtu 9000
  1002|  1000| encapsulation ethernet
  1003|  1001|#
  1004|  1002|vsi VSI_970_POP21_POP00_TR_PREF_SAP static
  1005|  1003| pwsignal ldp
  1006|  1004|  vsi-id 970
  1007|  1005|  peer 10.244.188.21
  1008|  1006| mtu 9000
  1009|  1007| encapsulation ethernet
  1010|  1008|#
  1011|  1009|vsi VSI_905_POP21_POP00_TR_PREF_SAP static
  1012|  1010| pwsignal ldp
  1013|  1011|  vsi-id 905
  1014|  1012|  peer 10.244.188.21
  1015|  1013| mtu 9000
  1016|  1014| encapsulation ethernet
  1017|  1015|#
  1018|  1016|vsi VSI_906_POP21_POP00_TR_PREF_SAP static
  1019|  1017| pwsignal ldp
  1020|  1018|  vsi-id 906
  1021|  1019|  peer 10.244.188.21
  1022|  1020| mtu 9000
  1023|  1021| encapsulation ethernet
  1024|  1022|#
  1025|  1023|vsi VSI_907_POP21_POP00_TR_PREF_SAP static
  1026|  1024| pwsignal ldp
  1027|  1025|  vsi-id 907
  1028|  1026|  peer 10.244.188.21
  1029|  1027|  traffic-statistics enable
  1030|  1028| mtu 9000
  1031|  1029| encapsulation ethernet
  1032|  1030|#
  1033|  1031|vsi VSI_912_POP21_POP00_TR_PREF_SAP static
  1034|  1032| pwsignal ldp
  1035|  1033|  vsi-id 912
  1036|  1034|  peer 10.244.188.21
  1037|  1035|  traffic-statistics enable
  1038|  1036| mtu 9000
  1039|  1037| encapsulation ethernet
  1040|  1038|#
  1041|  1039|vsi VSI_913_POP21_POP00_TR_PREF_SAP static
  1042|  1040| pwsignal ldp
  1043|  1041|  vsi-id 913
  1044|  1042|  peer 10.244.188.21
  1045|  1043|  traffic-statistics enable
  1046|  1044| mtu 9000
  1047|  1045| encapsulation ethernet
  1048|  1046|#
  1049|  1047|vsi VSI_914_POP21_POP00_TR_PREF_SAP static
  1050|  1048| pwsignal ldp
  1051|  1049|  vsi-id 914
  1052|  1050|  peer 10.244.188.21
  1053|  1051|  traffic-statistics enable
  1054|  1052| mtu 9000
  1055|  1053| encapsulation ethernet
  1056|  1054|#
  1057|  1055|vsi VSI_915_POP21_POP00_TR_PREF_SAP static
  1058|  1056| pwsignal ldp
  1059|  1057|  vsi-id 915
  1060|  1058|  peer 10.244.188.21
  1061|  1059|  traffic-statistics enable
  1062|  1060| mtu 9000
  1063|  1061| encapsulation ethernet
  1064|  1062|#
  1065|  1063|vsi VSI_916_POP21_POP00_TR_PREF_SAP static
  1066|  1064| pwsignal ldp
  1067|  1065|  vsi-id 916
  1068|  1066|  peer 10.244.188.21
  1069|  1067|  traffic-statistics enable
  1070|  1068| mtu 9000
  1071|  1069| encapsulation ethernet
  1072|  1070|#
  1073|  1071|vsi VSI_917_POP21_POP00_TR_PREF_SAP static
  1074|  1072| pwsignal ldp
  1075|  1073|  vsi-id 917
  1076|  1074|  peer 10.244.188.21
  1077|  1075|  traffic-statistics enable
  1078|  1076| mtu 9000
  1079|  1077| encapsulation ethernet
  1080|  1078|#
  1081|  1079|vsi VSI_919_POP21_POP00_TR_PREF_SAP static
  1082|  1080| pwsignal ldp
  1083|  1081|  vsi-id 919
  1084|  1082|  peer 10.244.188.21
  1085|  1083|  traffic-statistics enable
  1086|  1084| mtu 9000
  1087|  1085| encapsulation ethernet
  1088|  1086|#
  1089|  1087|vsi VSI_920_POP21_POP00_TR_PREF_SAP static
  1090|  1088| pwsignal ldp
  1091|  1089|  vsi-id 920
  1092|  1090|  peer 10.244.188.21
  1093|  1091|  traffic-statistics enable
  1094|  1092| mtu 9000
  1095|  1093| encapsulation ethernet
  1096|  1094|#
  1097|  1095|vsi VSI_922_POP21_POP00_TR_PREF_SAP static
  1098|  1096| pwsignal ldp
  1099|  1097|  vsi-id 922
  1100|  1098|  peer 10.244.188.21
  1101|  1099|  traffic-statistics enable
  1102|  1100| mtu 9000
  1103|  1101| encapsulation ethernet
  1104|  1102|#
  1105|  1103|vsi VSI_923_POP21_POP00_TR_PREF_SAP static
  1106|  1104| pwsignal ldp
  1107|  1105|  vsi-id 923
  1108|  1106|  peer 10.244.188.21
  1109|  1107|  traffic-statistics enable
  1110|  1108| mtu 9000
  1111|  1109| encapsulation ethernet
  1112|  1110|#
  1113|  1111|vsi VSI_924_POP21_POP00_TR_PREF_SAP static
  1114|  1112| pwsignal ldp
  1115|  1113|  vsi-id 924
  1116|  1114|  peer 10.244.188.21
  1117|  1115|  traffic-statistics enable
  1118|  1116| mtu 9000
  1119|  1117| encapsulation ethernet
  1120|  1118|#
  1121|  1119|vsi VSI_926_POP21_POP00_TR_PREF_SAP static
  1122|  1120| pwsignal ldp
  1123|  1121|  vsi-id 926
  1124|  1122|  peer 10.244.188.21
  1125|  1123|  traffic-statistics enable
  1126|  1124| mtu 9000
  1127|  1125| encapsulation ethernet
  1128|  1126|#
  1129|  1127|vsi VSI_977_POP21_POP00_TR_PREF_SAP static
  1130|  1128| pwsignal ldp
  1131|  1129|  vsi-id 977
  1132|  1130|  peer 10.244.188.21
  1133|  1131| mtu 9000
  1134|  1132| encapsulation ethernet
  1135|  1133|#
  1136|  1134|vsi VSI_972_POP21_POP00_TR_PREF_SAP static
  1137|  1135| pwsignal ldp
  1138|  1136|  vsi-id 972
  1139|  1137|  peer 10.244.188.21
  1140|  1138| mtu 9000
  1141|  1139| encapsulation ethernet
  1142|  1140|#
  1143|  1141|vsi VSI_931_POP21_POP00_TR_PREF_SAP static
  1144|  1142| pwsignal ldp
  1145|  1143|  vsi-id 931
  1146|  1144|  peer 10.244.188.21
  1147|  1145|  traffic-statistics enable
  1148|  1146| mtu 9000
  1149|  1147| encapsulation ethernet
  1150|  1148|#
  1151|  1149|vsi VSI_934_POP21_POP00_TR_PREF_SAP static
  1152|  1150| pwsignal ldp
  1153|  1151|  vsi-id 934
  1154|  1152|  peer 10.244.188.21
  1155|  1153|  traffic-statistics enable
  1156|  1154| mtu 9000
  1157|  1155| encapsulation ethernet
  1158|  1156|#
  1159|  1157|vsi VSI_936_POP21_POP00_TR_PREF_SAP static
  1160|  1158| pwsignal ldp
  1161|  1159|  vsi-id 936
  1162|  1160|  peer 10.244.188.21
  1163|  1161|  traffic-statistics enable
  1164|  1162| mtu 9000
  1165|  1163| encapsulation ethernet
  1166|  1164|#
  1167|  1165|vsi VSI_938_POP21_POP00_TR_PREF_SAP static
  1168|  1166| pwsignal ldp
  1169|  1167|  vsi-id 938
  1170|  1168|  peer 10.244.188.21
  1171|  1169| mtu 9000
  1172|  1170| encapsulation ethernet
  1173|  1171|#
  1174|  1172|vsi VSI_939_POP21_POP00_TR_PREF_SAP static
  1175|  1173| pwsignal ldp
  1176|  1174|  vsi-id 939
  1177|  1175|  peer 10.244.188.21
  1178|  1176| mtu 9000
  1179|  1177| encapsulation ethernet
  1180|  1178|#
  1181|  1179|vsi VSI_940_POP21_POP00_TR_PREF_SAP static
  1182|  1180| pwsignal ldp
  1183|  1181|  vsi-id 940
  1184|  1182|  peer 10.244.188.21
  1185|  1183| mtu 9000
  1186|  1184| encapsulation ethernet
  1187|  1185|#
  1188|  1186|vsi VSI_941_POP21_POP00_TR_PREF_SAP static
  1189|  1187| pwsignal ldp
  1190|  1188|  vsi-id 941
  1191|  1189|  peer 10.244.188.21
  1192|  1190| mtu 9000
  1193|  1191| encapsulation ethernet
  1194|  1192|#
  1195|  1193|vsi VSI_942_POP21_POP00_TR_PREF_SAP static
  1196|  1194| pwsignal ldp
  1197|  1195|  vsi-id 942
  1198|  1196|  peer 10.244.188.21
  1199|  1197| mtu 9000
  1200|  1198| encapsulation ethernet
  1201|  1199|#
  1202|  1200|vsi VSI_945_POP21_POP00_TR_PREF_SAP static
  1203|  1201| pwsignal ldp
  1204|  1202|  vsi-id 945
  1205|  1203|  peer 10.244.188.21
  1206|  1204| mtu 9000
  1207|  1205| encapsulation ethernet
  1208|  1206|#
  1209|  1207|vsi VSI_946_POP21_POP00_TR_PREF_SAP static
  1210|  1208| pwsignal ldp
  1211|  1209|  vsi-id 946
  1212|  1210|  peer 10.244.188.21
  1213|  1211| mtu 9000
  1214|  1212| encapsulation ethernet
  1215|  1213|#
  1216|  1214|vsi VSI_947_POP21_POP00_TR_PREF_SAP static
  1217|  1215| pwsignal ldp
  1218|  1216|  vsi-id 947
  1219|  1217|  peer 10.244.188.21
  1220|  1218| mtu 9000
  1221|  1219| encapsulation ethernet
  1222|  1220|#
  1223|  1221|vsi VSI_948_POP21_POP00_TR_PREF_SAP static
  1224|  1222| pwsignal ldp
  1225|  1223|  vsi-id 948
  1226|  1224|  peer 10.244.188.21
  1227|  1225| mtu 9000
  1228|  1226| encapsulation ethernet
  1229|  1227|#
  1230|  1228|vsi VSI_949_POP21_POP00_TR_PREF_SAP static
  1231|  1229| pwsignal ldp
  1232|  1230|  vsi-id 949
  1233|  1231|  peer 10.244.188.21
  1234|  1232| mtu 9000
  1235|  1233| encapsulation ethernet
  1236|  1234|#
  1237|  1235|vsi VSI_952_POP21_POP00_TR_PREF_SAP static
  1238|  1236| pwsignal ldp
  1239|  1237|  vsi-id 952
  1240|  1238|  peer 10.244.188.21
  1241|  1239| mtu 9000
  1242|  1240| encapsulation ethernet
  1243|  1241|#
  1244|  1242|vsi VSI_953_POP21_POP00_TR_PREF_SAP static
  1245|  1243| pwsignal ldp
  1246|  1244|  vsi-id 953
  1247|  1245|  peer 10.244.188.21
  1248|  1246| mtu 9000
  1249|  1247| encapsulation ethernet
  1250|  1248|#
  1251|  1249|vsi VSI_956_POP21_POP00_TR_PREF_SAP static
  1252|  1250| pwsignal ldp
  1253|  1251|  vsi-id 956
  1254|  1252|  peer 10.244.188.21
  1255|  1253| mtu 9000
  1256|  1254| encapsulation ethernet
  1257|  1255|#
  1258|  1256|vsi VSI_957_POP21_POP00_TR_PREF_SAP static
  1259|  1257| pwsignal ldp
  1260|  1258|  vsi-id 957
  1261|  1259|  peer 10.244.188.21
  1262|  1260| mtu 9000
  1263|  1261| encapsulation ethernet
  1264|  1262|#
  1265|  1263|vsi VSI_958_POP21_POP00_TR_PREF_SAP static
  1266|  1264| pwsignal ldp
  1267|  1265|  vsi-id 958
  1268|  1266|  peer 10.244.188.21
  1269|  1267| mtu 9000
  1270|  1268| encapsulation ethernet
  1271|  1269|#
  1272|  1270|vsi VSI_960_POP21_POP00_TR_PREF_SAP static
  1273|  1271| pwsignal ldp
  1274|  1272|  vsi-id 960
  1275|  1273|  peer 10.244.188.21
  1276|  1274| mtu 9000
  1277|  1275| encapsulation ethernet
  1278|  1276|#
  1279|  1277|vsi VSI_963_POP21_POP00_TR_PREF_SAP static
  1280|  1278| pwsignal ldp
  1281|  1279|  vsi-id 963
  1282|  1280|  peer 10.244.188.21
  1283|  1281| mtu 9000
  1284|  1282| encapsulation ethernet
  1285|  1283|#
  1286|  1284|vsi VSI_966_POP21_POP00_TR_PREF_SAP static
  1287|  1285| pwsignal ldp
  1288|  1286|  vsi-id 966
  1289|  1287|  peer 10.244.188.21
  1290|  1288| mtu 9000
  1291|  1289| encapsulation ethernet
  1292|  1290|#
  1293|  1291|vsi VSI_968_POP21_POP00_TR_PREF_SAP static
  1294|  1292| pwsignal ldp
  1295|  1293|  vsi-id 968
  1296|  1294|  peer 10.244.188.21
  1297|  1295| mtu 9000
  1298|  1296| encapsulation ethernet
  1299|  1297|#
  1300|  1298|vsi VSI_973_POP21_POP00_TR_PREF_SAP static
  1301|  1299| pwsignal ldp
  1302|  1300|  vsi-id 973
  1303|  1301|  peer 10.244.188.21
  1304|  1302| mtu 9000
  1305|  1303| encapsulation ethernet
  1306|  1304|#
  1307|  1305|vsi VSI_982_POP21_POP00_TR_PREF_SAP static
  1308|  1306| pwsignal ldp
  1309|  1307|  vsi-id 982
  1310|  1308|  peer 10.244.188.21
  1311|  1309| mtu 9000
  1312|  1310| encapsulation ethernet
  1313|  1311|#
  1314|  1312|vsi VSI_990_POP21_POP00_TR_PREF_SAP static
  1315|  1313| pwsignal ldp
  1316|  1314|  vsi-id 990
  1317|  1315|  peer 10.244.188.21
  1318|  1316| mtu 9000
  1319|  1317| encapsulation ethernet
  1320|  1318|#
  1321|  1319|vsi VSI_3580_POP59_TR_INFRAWEB_PPOE static
  1322|  1320| pwsignal ldp
  1323|  1321|  vsi-id 3580
  1324|  1322|  peer 10.244.188.59
  1325|  1323|  traffic-statistics enable
  1326|  1324| mtu 9000
  1327|  1325| encapsulation ethernet
  1328|  1326|#
  1329|  1327|vsi VSI_3151_POP00_PROV_ARROBANET static
  1330|  1328| pwsignal ldp
  1331|  1329|  vsi-id 3151
  1332|  1330|  peer 10.244.188.51
  1333|  1331| mtu 9000
  1334|  1332| encapsulation ethernet
  1335|  1333|#
  1336|  1334|vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
  1337|  1335| pwsignal ldp
  1338|  1336|  vsi-id 53
  1339|  1337|  peer 10.244.188.5
  1340|  1338| mtu 9000
  1341|  1339| encapsulation ethernet
  1342|  1340|#
  1343|  1341|vsi VSI_985_POP21_POP00_TR_PREF_SAP static
  1344|  1342| pwsignal ldp
  1345|  1343|  vsi-id 985
  1346|  1344|  peer 10.244.188.21
  1347|  1345| mtu 9000
  1348|  1346| encapsulation ethernet
  1349|  1347|#
  1350|  1348|vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
  1351|  1349| pwsignal ldp
  1352|  1350|  vsi-id 3964
  1353|  1351|  peer 10.244.188.2
  1354|  1352| mtu 9000
  1355|  1353| encapsulation ethernet
  1356|  1354|#
  1357|  1355|vsi VSI_986_POP21_POP00_TR_PREF_SAP static
  1358|  1356| pwsignal ldp
  1359|  1357|  vsi-id 986
  1360|  1358|  peer 10.244.188.21
  1361|  1359| mtu 9000
  1362|  1360| encapsulation ethernet
  1363|  1361|#
  1364|  1362|vsi VSI_3905_POP17-00_TR_CIRION_L1 static
  1365|  1363| pwsignal ldp
  1366|  1364|  vsi-id 3905
  1367|  1365|  peer 10.244.188.17
  1368|  1366|  traffic-statistics enable
  1369|  1367| mtu 9000
  1370|  1368| encapsulation ethernet
  1371|  1369|#
  1372|  1370|vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
  1373|  1371| pwsignal ldp
  1374|  1372|  vsi-id 3602
  1375|  1373|  peer 10.244.188.5
  1376|  1374| mtu 9000
  1377|  1375| encapsulation ethernet
  1378|  1376|#
  1379|  1377|vsi VSI_251_CY_POP0-2_POP25_CO_OLT1 static
  1380|  1378| pwsignal ldp
  1381|  1379|  vsi-id 251
  1382|  1380|  peer 10.244.188.125
  1383|  1381| mtu 9000
  1384|  1382| encapsulation ethernet
  1385|  1383|#
  1386|  1384|explicit-path SW1POP04-00_VIA_POP11_VLAN3203
  1387|  1385| next hop 10.244.112.2
  1388|  1386| next hop 10.244.110.2
  1389|  1387| next hop 10.244.127.2
  1390|  1388| next hop 10.244.127.5
  1391|  1389| next hop 10.244.111.2
  1392|  1390| next hop 10.244.111.5
  1393|  1391|#
  1394|  1392|mpls ldp
  1395|  1393|#
  1396|  1394|#
  1397|  1395|mpls ldp remote-peer 10.244.188.1
  1398|  1396| remote-ip 10.244.188.1
  1399|  1397|#
  1400|  1398|mpls ldp remote-peer 10.244.188.2
  1401|  1399| remote-ip 10.244.188.2
  1402|  1400|#
  1403|  1401|mpls ldp remote-peer 10.244.188.4
  1404|  1402| remote-ip 10.244.188.4
  1405|  1403|#
  1406|  1404|mpls ldp remote-peer 10.244.188.5
  1407|  1405| remote-ip 10.244.188.5
  1408|  1406|#
  1409|  1407|mpls ldp remote-peer 10.244.188.7
  1410|  1408| remote-ip 10.244.188.7
  1411|  1409|#
  1412|  1410|mpls ldp remote-peer 10.244.188.8
  1413|  1411| remote-ip 10.244.188.8
  1414|  1412|#
  1415|  1413|mpls ldp remote-peer 10.244.188.10
  1416|  1414| remote-ip 10.244.188.10
  1417|  1415|#
  1418|  1416|mpls ldp remote-peer 10.244.188.11
  1419|  1417| remote-ip 10.244.188.11
  1420|  1418|#
  1421|  1419|mpls ldp remote-peer 10.244.188.13
  1422|  1420| remote-ip 10.244.188.13
  1423|  1421|#
  1424|  1422|mpls ldp remote-peer 10.244.188.15
  1425|  1423| remote-ip 10.244.188.15
  1426|  1424|#
  1427|  1425|mpls ldp remote-peer 10.244.188.17
  1428|  1426| remote-ip 10.244.188.17
  1429|  1427|#
  1430|  1428|mpls ldp remote-peer 10.244.188.18
  1431|  1429| remote-ip 10.244.188.18
  1432|  1430|#
  1433|  1431|mpls ldp remote-peer 10.244.188.19
  1434|  1432| remote-ip 10.244.188.19
  1435|  1433|#
  1436|  1434|mpls ldp remote-peer 10.244.188.20
  1437|  1435| remote-ip 10.244.188.20
  1438|  1436|#
  1439|  1437|mpls ldp remote-peer 10.244.188.21
  1440|  1438| remote-ip 10.244.188.21
  1441|  1439|#
  1442|  1440|mpls ldp remote-peer 10.244.188.22
  1443|  1441| remote-ip 10.244.188.22
  1444|  1442|#
  1445|  1443|mpls ldp remote-peer 10.244.188.27
  1446|  1444| remote-ip 10.244.188.27
  1447|  1445|#
  1448|  1446|mpls ldp remote-peer 10.244.188.28
  1449|  1447| remote-ip 10.244.188.28
  1450|  1448|#
  1451|  1449|mpls ldp remote-peer 10.244.188.43
  1452|  1450| remote-ip 10.244.188.43
  1453|  1451|#
  1454|  1452|mpls ldp remote-peer 10.244.188.47
  1455|  1453| remote-ip 10.244.188.47
  1456|  1454|#
  1457|  1455|mpls ldp remote-peer 10.244.188.49
  1458|  1456| remote-ip 10.244.188.49
  1459|  1457|#
  1460|  1458|mpls ldp remote-peer 10.244.188.50
  1461|  1459| remote-ip 10.244.188.50
  1462|  1460|#
  1463|  1461|mpls ldp remote-peer 10.244.188.51
  1464|  1462| remote-ip 10.244.188.51
  1465|  1463|#
  1466|  1464|mpls ldp remote-peer 10.244.188.59
  1467|  1465| remote-ip 10.244.188.59
  1468|  1466|#
  1469|  1467|mpls ldp remote-peer 10.244.188.60
  1470|  1468| remote-ip 10.244.188.60
  1471|  1469|#
  1472|  1470|mpls ldp remote-peer 10.244.188.62
  1473|  1471| remote-ip 10.244.188.62
  1474|  1472|#
  1475|  1473|mpls ldp remote-peer 10.244.188.67
  1476|  1474| remote-ip 10.244.188.67
  1477|  1475|#
  1478|  1476|mpls ldp remote-peer 10.244.188.99
  1479|  1477| remote-ip 10.244.188.99
  1480|  1478|#
  1481|  1479|mpls ldp remote-peer 10.244.188.125
  1482|  1480| remote-ip 10.244.188.125
  1483|  1481|#
  1484|  1482|mpls ldp remote-peer 10.244.189.3
  1485|  1483| remote-ip 10.244.189.3
  1486|  1484|#
  1487|  1485|mpls ldp remote-peer 10.244.189.5
  1488|  1486| remote-ip 10.244.189.5
  1489|  1487|#
  1490|  1488|mpls ldp remote-peer 10.244.189.10
  1491|  1489| remote-ip 10.244.189.10
  1492|  1490|#
  1493|  1491|mpls ldp remote-peer 10.244.189.11
  1494|  1492| remote-ip 10.244.189.11
  1495|  1493|#
  1496|  1494|mpls ldp remote-peer 10.244.189.12
  1497|  1495| remote-ip 10.244.189.12
  1498|  1496|#
  1499|  1497|mpls ldp remote-peer 10.244.189.14
  1500|  1498| remote-ip 10.244.189.14
  1501|  1499|#
  1502|  1500|mpls ldp remote-peer 10.244.189.15
  1503|  1501| remote-ip 10.244.189.15
  1504|  1502|#
  1505|  1503|mpls ldp remote-peer 10.244.189.28
  1506|  1504| remote-ip 10.244.189.28
  1507|  1505|#
  1508|  1506|mpls ldp remote-peer 10.244.189.65
  1509|  1507| remote-ip 10.244.189.65
  1510|  1508|#
  1511|  1509|mpls ldp remote-peer 10.244.189.67
  1512|  1510| remote-ip 10.244.189.67
  1513|  1511|#
  1514|  1512|rsa peer-public-key 10.244.110.6
  1515|  1513| public-key-code begin
  1516|  1514|  30820109
  1517|  1515|    02820100
  1518|  1516|      E09A5CC1 F761B429 D35C7D9A E4600853 5C186444 3D8D977F 2152D97E 9D512D50
  1519|  1517|      1059FF35 788CCE1D 45D34E7B 23B2E884 F19E936F 878E2B46 8599B6BE 2A882B1F
  1520|  1518|      BFC5F8B0 0B4454B2 E6B1B6DE ED926E55 B1D6ACAA CA8AF6F8 0CF8AFED 903F1077
  1521|  1519|      0D8E49DA A06E1BE7 621911D6 B96FCC7C EA5DB211 AF76367E CFFD906E 8212C753
  1522|  1520|      02C12382 0FFDB971 6F6D2CBD F57FB52A 9F175874 8A992F72 F5C43101 90209A8E
  1523|  1521|      388BDD8D 6A261AC0 2827EF28 E3BE372F 574EF7B3 3E5D5F7F DAE0B930 9F2DF2AE
  1524|  1522|      6760B695 01A30E1C AB83F389 8F47C30F 4E9CB918 E0134F81 8A245401 C4C7CA80
  1525|  1523|      3464BC48 53330D46 6F5FD1AB E1B69D38 536E9127 D90FF79A 7D4892B6 9D5B2D91
  1526|  1524|    0203
  1527|  1525|      010001
  1528|  1526| public-key-code end
  1529|  1527|peer-public-key end
  1530|  1528|#
  1531|  1529|pki realm default
  1532|  1530| certificate-check none
  1533|  1531|#
  1534|  1532|free-rule-template name default_free_rule
  1535|  1533|#
  1536|  1534|portal-access-profile name portal_access_profile
  1537|  1535|#
  1538|  1536|drop-profile default
  1539|  1537|#
  1540|  1538|vlan 4
  1541|  1539| description VLAN_4_PTP_CGNAT1_BGP1_CYBER
  1542|  1540|vlan 11
  1543|  1541| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1544|  1542|vlan 12
  1545|  1543| description VLAN_12_POP0_ARQU_OLT1_SCHOSSLER
  1546|  1544|vlan 13
  1547|  1545| description VLAN_13_POP00_ARQU_OLT1_SCHOSSLER
  1548|  1546|vlan 16
  1549|  1547| description VLAN16_SERVIDORES_IP_PUBLICO
  1550|  1548|vlan 17
  1551|  1549| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1552|  1550|vlan 18
  1553|  1551| description VALN_18_POP0_SAP_RAD
  1554|  1552|vlan 19
  1555|  1553| description VLAN19_GERENCIA_EQUIPAMENTOS
  1556|  1554|vlan 21
  1557|  1555| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1558|  1556|vlan 23
  1559|  1557| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1560|  1558|vlan 30
  1561|  1559| description VLAN_30_POP03_M_FOLRES_MGNT
  1562|  1560|vlan 31
  1563|  1561| description VLAN_31_POP03_M_FLORES_OLT1
  1564|  1562|vlan 39
  1565|  1563| description VLAN_39_POP03_M_FLORES_RADIOS
  1566|  1564|vlan 40
  1567|  1565| description VLAN_40_POP04_POA_HIPICA
  1568|  1566|vlan 41
  1569|  1567| description VLAN_41_POP04_PPPOE_CLIENTES
  1570|  1568|vlan 50
  1571|  1569| description VLAN_50_M_RINCAO_GERENCIA
  1572|  1570|vlan 51
  1573|  1571| description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
  1574|  1572|vlan 53
  1575|  1573| description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
  1576|  1574|vlan 60
  1577|  1575| description VLAN_60_POP06_B_VISTA_MGNT
  1578|  1576|vlan 61
  1579|  1577| description VLAN_61_POP06_B_VISTA_OLT1
  1580|  1578|vlan 70
  1581|  1579| description VLAN_70_POP07_S_TECLA_GERENCIA
  1582|  1580|vlan 71
  1583|  1581| description VLAN_71_POP07_S_TECLA_OLT1
  1584|  1582|vlan 73
  1585|  1583| description VLAN_73_POP07_S_TECLA_OLT1
  1586|  1584|vlan 80
  1587|  1585| description VLAN_80_POP08_FREITAS_MGNT
  1588|  1586|vlan 81
  1589|  1587| description VLAN_81_POP08_FREITAS_OLT1
  1590|  1588|vlan 83
  1591|  1589| description VLAN_83_CYBER_POP08_FREITAS_OLT1
  1592|  1590|vlan 90
  1593|  1591| description VLAN_90_POP09_ITACOLOMI_MGNT
  1594|  1592|vlan 91
  1595|  1593| description VLAN_91_POP09_ITACOLOMI_OLT1
  1596|  1594|vlan 100
  1597|  1595| description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
  1598|  1596|vlan 101
  1599|  1597| description VLAN_101_POP10_P_EUCALIPTOS_OLT1
  1600|  1598|vlan 110
  1601|  1599| description VLAN_110_POP11_COND_VIVAZ_MGNT
  1602|  1600|vlan 111
  1603|  1601| description VLAN_111_POP11_COND_VIVAZ_OLT1
  1604|  1602|vlan 113
  1605|  1603| description VLAN_113_POP11_COND_VIVAZ_OLT1
  1606|  1604|vlan 120
  1607|  1605| description vlan120_POP12_BETANIA_GERENCIA
  1608|  1606|vlan 121
  1609|  1607| description VLAN_121_POP12_BETANIA_OLT1
  1610|  1608|vlan 130
  1611|  1609| description VLAN_130_POP13_C_HAVANA_MGNT
  1612|  1610|vlan 131
  1613|  1611| description VLAN_131_POP13_C_HAVANA_OLT1
  1614|  1612|vlan 133
  1615|  1613| description VLAN_133_POP13_C_HAVANA_OLT1
  1616|  1614|vlan 140
  1617|  1615| description VLAN_140_POP14_LOMBA_GRANDE
  1618|  1616|vlan 141
  1619|  1617| description VLAN_141_POP14_LOMBA_GRANDE
  1620|  1618|vlan 150
  1621|  1619| description VLAN_150_POP15_EXPOINTER_GERENCIA
  1622|  1620|vlan 151
  1623|  1621| description VLAN_151_POP15_EXPOINTER_OLT1
  1624|  1622|vlan 160
  1625|  1623| description VLAN_160_POP16_CASTELINHO_MGNT
  1626|  1624|vlan 161
  1627|  1625| description VLAN_161_POP16_CASTELINHO_OLT1
  1628|  1626|vlan 169
  1629|  1627| description VLAN_169_POP16_CASTELINHO_RADIO
  1630|  1628|vlan 171
  1631|  1629| description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
  1632|  1630|vlan 173
  1633|  1631| description VLAN_173_POP17_ELEA_PPPOE_CYBER
  1634|  1632|vlan 181
  1635|  1633| description VLAN_181_POP18_CEIC_PROCEMPA
  1636|  1634|vlan 190
  1637|  1635| description VLAN_190_POP19_HIPICA_GERENCIA
  1638|  1636|vlan 191
  1639|  1637| description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
  1640|  1638|vlan 193
  1641|  1639| description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
  1642|  1640|vlan 194
  1643|  1641| description VLAN_194_POP19_TRANSP_RSSUL
  1644|  1642|vlan 200
  1645|  1643| description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
  1646|  1644|vlan 201
  1647|  1645| description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
  1648|  1646|vlan 203
  1649|  1647| description VLAN_203_POP20_S_JOAO_OLT1_CYBER
  1650|  1648|vlan 211
  1651|  1649| description VLAN_211_POP21_PREF_SAPUCAIA
  1652|  1650|vlan 213
  1653|  1651| description VLAN_213_POP21_PREF_SAPUCAIA
  1654|  1652|vlan 220
  1655|  1653| description VLAN_220_POP22_PIRATINI
  1656|  1654|vlan 250
  1657|  1655| description VLAN_250_POP25_GERENCIA
  1658|  1656|vlan 251
  1659|  1657| description VLAN_250_POP25_OLT1
  1660|  1658|vlan 253
  1661|  1659| description VLAN_253_POP25_OLT1_CYBERWEB
  1662|  1660|vlan 258
  1663|  1661| description VLAN_258_POP25_OLT1_SCHOSSLER
  1664|  1662|vlan 271
  1665|  1663| description VLAN_271_POP27_CIVIL_OLT1
  1666|  1664|vlan 273
  1667|  1665| description VLAN_273_POP27_CIVIL_OLT1
  1668|  1666|vlan 281
  1669|  1667| description VLAN_281_POP28_V_RICA_OLT1
  1670|  1668|vlan 283
  1671|  1669| description VLAN_283_POP28_V_RICA_OLT1
  1672|  1670|vlan 905
  1673|  1671| description VLAN_905_TRANS_PREF_SAPUCAIA
  1674|  1672|vlan 906
  1675|  1673| description VLAN_906_TRANS_PREF_SAPUCAIA
  1676|  1674|vlan 907
  1677|  1675| description VLAN_907_TRANS_PREF_SAPUCAIA
  1678|  1676|vlan 912
  1679|  1677| description VLAN_912_TRANS_PREF_SAPUCAIA
  1680|  1678|vlan 913
  1681|  1679| description VLAN_913_TRANS_PREF_SAPUCAIA
  1682|  1680|vlan 914
  1683|  1681| description VLAN_914_TRANS_PREF_SAPUCAIA
  1684|  1682|vlan 915
  1685|  1683| description VLAN_915_TRANS_PREF_SAPUCAIA
  1686|  1684|vlan 916
  1687|  1685| description VLAN_916_TRANS_PREF_SAPUCAIA
  1688|  1686|vlan 917
  1689|  1687| description VLAN_917_TRANS_PREF_SAPUCAIA
  1690|  1688|vlan 919
  1691|  1689| description VLAN_919_TRANS_PREF_SAPUCAIA
  1692|  1690|vlan 920
  1693|  1691| description VLAN_920_TRANS_PREF_SAPUCAIA
  1694|  1692|vlan 922
  1695|  1693| description VLAN_922_TRANS_PREF_SAPUCAIA
  1696|  1694|vlan 923
  1697|  1695| description VLAN_923_TRANS_PREF_SAPUCAIA
  1698|  1696|vlan 924
  1699|  1697| description VLAN_924_TRANS_PREF_SAPUCAIA
  1700|  1698|vlan 926
  1701|  1699| description VLAN_926_TRANS_PREF_SAPUCAIA
  1702|  1700|vlan 931
  1703|  1701| description VLAN_931_TRANS_PREF_SAPUCAIA
  1704|  1702|vlan 934
  1705|  1703| description VLAN_934_TRANS_PREF_SAPUCAIA
  1706|  1704|vlan 936
  1707|  1705| description VLAN_936_TRANS_PREF_SAPUCAIA
  1708|  1706|vlan 938
  1709|  1707| description VLAN_938_TRANS_PREF_SAPUCAIA
  1710|  1708|vlan 939
  1711|  1709| description VLAN_939_TRANS_PREF_SAPUCAIA
  1712|  1710|vlan 940
  1713|  1711| description VLAN_940_TRANS_PREF_SAPUCAIA
  1714|  1712|vlan 941
  1715|  1713| description VLAN_941_TRANS_PREF_SAPUCAIA
  1716|  1714|vlan 942
  1717|  1715| description VLAN_942_TRANS_PREF_SAPUCAIA
  1718|  1716|vlan 945
  1719|  1717| description VLAN_945_TRANS_PREF_SAPUCAIA
  1720|  1718|vlan 946
  1721|  1719| description VLAN_946_TRANS_PREF_SAPUCAIA
  1722|  1720|vlan 947
  1723|  1721| description VLAN_947_TRANS_PREF_SAPUCAIA
  1724|  1722|vlan 948
  1725|  1723| description VLAN_948_TRANS_PREF_SAPUCAIA
  1726|  1724|vlan 949
  1727|  1725| description VLAN_949_TRANS_PREF_SAPUCAIA
  1728|  1726|vlan 952
  1729|  1727| description VLAN_952_TRANS_PREF_SAPUCAIA
  1730|  1728|vlan 953
  1731|  1729| description VLAN_953_TRANS_PREF_SAPUCAIA
  1732|  1730|vlan 956
  1733|  1731| description VLAN_956_TRANS_PREF_SAPUCAIA
  1734|  1732|vlan 957
  1735|  1733| description VLAN_957_TRANS_PREF_SAPUCAIA
  1736|  1734|vlan 958
  1737|  1735| description VLAN_958_TRANS_PREF_SAPUCAIA
  1738|  1736|vlan 959
  1739|  1737| description VLAN_959_TRANSP_VERO
  1740|  1738|vlan 960
  1741|  1739| description VLAN_960_TRANS_PREF_SAPUCAIA
  1742|  1740|vlan 963
  1743|  1741| description VLAN_963_TRANS_PREF_SAPUCAIA
  1744|  1742|vlan 965
  1745|  1743| description VLAN_965_TRANS_PREF_SAPUCAIA
  1746|  1744|vlan 966
  1747|  1745| description VLAN_966_TRANS_PREF_SAPUCAIA
  1748|  1746|vlan 968
  1749|  1747| description VLAN_968_TRANS_PREF_SAPUCAIA
  1750|  1748|vlan 970
  1751|  1749| description VLAN_970_TRANS_PREF_SAPUCAIA
  1752|  1750|vlan 971
  1753|  1751| description VLAN_971_TRANS_PREF_SAPUCAIA
  1754|  1752|vlan 972
  1755|  1753| description VLAN_972_TRANS_PREF_SAPUCAIA
  1756|  1754|vlan 973
  1757|  1755| description VLAN_973_TRANS_PREF_SAPUCAIA
  1758|  1756|vlan 974
  1759|  1757| description VLAN_974_TRANSP_VERO
  1760|  1758|vlan 977
  1761|  1759| description VLAN_977_TRANS_PREF_SAPUCAIA
  1762|  1760|vlan 982
  1763|  1761| description VLAN_982_TRANS_PREF_SAPUCAIA
  1764|  1762|vlan 985
  1765|  1763| description VLAN_985_TRANSP_VERO
  1766|  1764|vlan 986
  1767|  1765| description VLAN_986_TRANS_PREF_SAPUCAIA
  1768|  1766|vlan 990
  1769|  1767| description VLAN_990_TRANS_PREF_SAPUCAIA
  1770|  1768|vlan 1001
  1771|  1769| description VLAN_1001_BGP1_CYBER_CE01
  1772|  1770|vlan 1003
  1773|  1771| description VLAN1003_BGP1_CYBER_CE03_CYBER
  1774|  1772|vlan 1100
  1775|  1773| description VLAN1100_SW1POP0_SW1POP0_MPLS1
  1776|  1774|vlan 1108
  1777|  1775| description VLAN1108_SW1POP00_SW1POP08_MPLS1
  1778|  1776|vlan 1111
  1779|  1777| description VLAN_1111_CGNAT1_CE01_OSPF
  1780|  1778|vlan 1112
  1781|  1779| description VLAN1112_SW1POP00_SW1POP12_MPLS1
  1782|  1780|vlan 1121
  1783|  1781| description VLAN_1121_SW1POP00_SW1POP21_MPLS1
  1784|  1782|vlan 1125
  1785|  1783| description VLAN_1125_SW1POP00_SW1POP25_MPLS1
  1786|  1784|vlan 1138
  1787|  1785| description VLAN_1138_VERO_CDN
  1788|  1786|vlan 1144
  1789|  1787| description VLAN_1144_SW1POP00_SW1POP44_MPLS1
  1790|  1788|vlan 1152
  1791|  1789| description VLAN_1152_SW1POP00_SW1POP52_OSPF1
  1792|  1790|vlan 1164
  1793|  1791| description VLAN_1164_LINK1_IPV4_VERO
  1794|  1792|vlan 1166
  1795|  1793| description VLAN_1166_SW1POP0_SW1POP66_OSPF
  1796|  1794|vlan 1195
  1797|  1795| description VLAN1195_SW1PO11_SW1PO95_DGTSSP
  1798|  1796|vlan 1264
  1799|  1797| description VLAN_1164_LINK1_IPV6_VERO
  1800|  1798|vlan 1295
  1801|  1799| description VLAN1295_SW1PO11_SW1PO95_DGTSSP
  1802|  1800|vlan 1395
  1803|  1801| description VLAN1395_SW1PO11_SW1PO95_DGTSSP
  1804|  1802|vlan 1914
  1805|  1803| description VLAN_1914_SEABORN_L1_BGP1_ASN273461
  1806|  1804|vlan 2311
  1807|  1805| description VLAN2311_TRANSP_VERO_POP14_L_GRANDE
  1808|  1806|vlan 2340
  1809|  1807| description VLAN2340_INFRAWEB_GERENCIA
  1810|  1808|vlan 2341
  1811|  1809| description VLAN2341_INFRAWEB_PPPOE
  1812|  1810|vlan 2733
  1813|  1811| description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
  1814|  1812|vlan 3000
  1815|  1813| description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
  1816|  1814|vlan 3005
  1817|  1815| description VLAN_3005_TRANSP_TELIUM_S_CASA
  1818|  1816|vlan 3101
  1819|  1817| description VLAN_3101_TRANP_CAMERAS_BRIGADA
  1820|  1818|vlan 3102
  1821|  1819| description VLAN_3102_TRANP_CAMERAS_BRIGADA
  1822|  1820|vlan 3105
  1823|  1821| description VLAN_3105_TRANSPORTE_SSP_POA
  1824|  1822|vlan 3106
  1825|  1823| description VLAN_3106_TRANSPORTE_SSP_POA
  1826|  1824|vlan 3107
  1827|  1825| description VLAN_3107_TRANSP_POA_MAIS_SEG
  1828|  1826|vlan 3108
  1829|  1827| description VLAN_3108_TRANSP_POA_MAIS_SEG
  1830|  1828|vlan 3111
  1831|  1829| description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
  1832|  1830|vlan 3114
  1833|  1831| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
  1834|  1832|vlan 3119
  1835|  1833| description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
  1836|  1834|vlan 3120
  1837|  1835| description VLAN_3120_BGP1_NE40_CE20_OSPF
  1838|  1836|vlan 3121
  1839|  1837| description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
  1840|  1838|vlan 3143
  1841|  1839| description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
  1842|  1840|vlan 3147
  1843|  1841| description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
  1844|  1842|vlan 3149
  1845|  1843| description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
  1846|  1844|vlan 3150
  1847|  1845| description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
  1848|  1846|vlan 3151
  1849|  1847| description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
  1850|  1848|vlan 3152
  1851|  1849| description VLAN3152_BGP1_CYBER_BGP1_BLUSTELECOM
  1852|  1850|vlan 3153
  1853|  1851| description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
  1854|  1852|vlan 3154
  1855|  1853| description VLAN_3154_CYBER_BGP1_LM_V_RICA_L1
  1856|  1854|vlan 3155
  1857|  1855| description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
  1858|  1856|vlan 3160
  1859|  1857| description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
  1860|  1858|vlan 3162
  1861|  1859| description VLAN_3162_BGP1_POP62_EQUATORIAL
  1862|  1860|vlan 3163
  1863|  1861| description VLAN3163_BGP1_CE63_VILLELA
  1864|  1862|vlan 3166
  1865|  1863| description VLAN_3166_CYBER_BGP1_WIANETSUL_L1
  1866|  1864|vlan 3167
  1867|  1865| description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
  1868|  1866|vlan 3203
  1869|  1867| description VLAN_3203_TRANSP_IXRS_BLUS
  1870|  1868|vlan 3207
  1871|  1869| description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
  1872|  1870|vlan 3208
  1873|  1871| description VLAN_3208_PNI_GGC_ASN273461
  1874|  1872|vlan 3252
  1875|  1873| description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
  1876|  1874|vlan 3256
  1877|  1875| description VLAN_3256_PPPOE_CLIENTES_TELIUM
  1878|  1876|vlan 3261
  1879|  1877| description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
  1880|  1878|vlan 3266
  1881|  1879| description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
  1882|  1880|vlan 3341
  1883|  1881| description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
  1884|  1882|vlan 3511
  1885|  1883| description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
  1886|  1884|vlan 3532
  1887|  1885| description VLAN_3532_TRANSP_CAM_CAMAQUA
  1888|  1886|vlan 3533
  1889|  1887| description VLAN_3533_TRANSP_CAM_CAMAQUA
  1890|  1888|vlan 3540
  1891|  1889| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
  1892|  1890|vlan 3541
  1893|  1891| description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
  1894|  1892|vlan 3550
  1895|  1893| description VLAN_3550_TRANSP_R_NEUTRA_LM
  1896|  1894|vlan 3560
  1897|  1895| description VLAN_3560_POWERNET_R_NEUTRA
  1898|  1896|vlan 3571
  1899|  1897| description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
  1900|  1898|vlan 3580
  1901|  1899| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
  1902|  1900|vlan 3581
  1903|  1901| description VLAN3581_RN_CYBER_NA_INFRAWEB
  1904|  1902|vlan 3592
  1905|  1903| description VLAN_3592_ALT_ADVANTA
  1906|  1904|vlan 3602
  1907|  1905| description VLAN_3602_TR_ADYL_POP14_ADVANTA
  1908|  1906|vlan 3790
  1909|  1907| description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
  1910|  1908|vlan 3791
  1911|  1909| description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
  1912|  1910|vlan 3902
  1913|  1911| description VLAN_3902_EQUINIX_CYBER_BGP1
  1914|  1912|vlan 3904
  1915|  1913| description VLAN3904_SW1POP01_SW1POP00_PNI_META
  1916|  1914|vlan 3905
  1917|  1915| description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
  1918|  1916|vlan 3906
  1919|  1917| description VLAN3906_SW1POP01_SW1POP00_PNI_META
  1920|  1918|vlan 3964
  1921|  1919| description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
  1922|  1920|vlan 4000
  1923|  1921| description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
  1924|  1922|vlan 4001
  1925|  1923| description VLAN_4001_BGP1CYBER_CGNAT1_SCHOSSLER
  1926|  1924|vlan 4012
  1927|  1925| description VLAN_4012_CGNAT1_BGP2
  1928|  1926|vlan 4094
  1929|  1927| description VLAN_4094_BLACKHOLE
  1930|  1928|#
  1931|  1929|aaa
  1932|  1930| authentication-scheme default
  1933|  1931|  authentication-mode local
  1934|  1932| authentication-scheme radius
  1935|  1933|  authentication-mode radius
  1936|  1934| authorization-scheme default
  1937|  1935|  authorization-mode local
  1938|  1936| accounting-scheme default
  1939|  1937|  accounting-mode none
  1940|  1938| local-aaa-user password policy administrator
  1941|  1939|  password history record number 0
  1942|  1940|  password expire 0
  1943|  1941| domain default
  1944|  1942|  authentication-scheme radius
  1945|  1943|  accounting-scheme default
  1946|  1944|  radius-server default
  1947|  1945| domain default_admin
  1948|  1946|  authentication-scheme default
  1949|  1947|  accounting-scheme default
  1950|  1948| local-user admin password irreversible-cipher $1c$q6&9:g>RA-$|\C)9;1bq4^uT098E$vO)BE[PjFpQ$DZWU=%(;o>$
  1951|  1949| local-user admin privilege level 15
  1952|  1950| local-user admin service-type ssh http
  1953|  1951| local-user future password irreversible-cipher $1c$Y5}lDwN=E:$!DRV>(;)M~pr*6ESw7~@vzIg4OQmiWIP|2TP!*u6$
  1954|  1952| local-user future privilege level 15
  1955|  1953| local-user future service-type ssh
  1956|  1954| local-user zandona password irreversible-cipher $1c$Ln|t*R>'-8$p/SsDlFwfE)KQH>Q$5VR-F7/00i=:(QGD&CU(dhR$
  1957|  1955| local-user zandona privilege level 15
  1958|  1956| local-user zandona service-type telnet ssh http
  1959|  1957|#
  1960|  1958|ntp-service server disable
  1961|  1959|ntp-service ipv6 server disable
  1962|  1960|ntp-service unicast-server 200.189.40.8
  1963|  1961|ntp-service unicast-server 200.160.0.8
  1964|  1962|#
  1965|  1963|interface Vlanif2
  1966|  1964| description VLAN_2_GERENCIA
  1967|  1965| ip address 10.244.0.98 255.255.255.252
  1968|  1966|#
  1969|  1967|interface Vlanif11
  1970|  1968| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1971|  1969| l2 binding vsi VSI_11_CY_POP00_POP02_SAP_OLT1
  1972|  1970|#
  1973|  1971|interface Vlanif12
  1974|  1972| description VLAN_12_POP0_SAP_OLT1
  1975|  1973| l2 binding vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1
  1976|  1974|#
  1977|  1975|interface Vlanif13
  1978|  1976| description VLAN_13_POP00_ARQU_OLT1_CYBER
  1979|  1977| l2 binding vsi VSI_13_CY_POP00_POP02_SAP_OLT1
  1980|  1978|#
  1981|  1979|interface Vlanif16
  1982|  1980| description VLAN16_SERVIDORES_IP_PUBLICO
  1983|  1981| l2 binding vsi VSI_16_SERVIDORES_IP_PUBLICOS
  1984|  1982|#
  1985|  1983|interface Vlanif17
  1986|  1984| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1987|  1985| l2 binding vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV
  1988|  1986|#
  1989|  1987|interface Vlanif18
  1990|  1988| description VALN_18_POP0_SAP_RAD
  1991|  1989| l2 binding vsi VSI_18_CY_POP00_POP02_SAP_RADI
  1992|  1990|#
  1993|  1991|interface Vlanif21
  1994|  1992| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1995|  1993| l2 binding vsi VSI_21_CY_POP00_POP02_POA_OLT1
  1996|  1994|#
  1997|  1995|interface Vlanif23
  1998|  1996| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1999|  1997| l2 binding vsi VSI_23_CY_POP00_POP02_POA_OLT1
  2000|  1998|#
  2001|
```

## 🗒️ Observações
- {{notes}}
