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
     9|     7|      The current login time is 2026-04-11 15:15:46-03:00.
    10|     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-04-06 16:56:04-03:00  Password will expire in: -
    11|     9|
    12|    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    13|    11|<SW1POP00_CYBER>displ
    14|    12|<SW1POP00_CYBER>display cu
    15|    13|<SW1POP00_CYBER>display current-configuration
    16|    14|!Software Version V200R023C00SPC500
    17|    15|#
    18|    16|sysname SW1POP00_CYBER
    19|    17|#
    20|    18|vlan batch 2 4 10 to 13 16 to 19 21 23 30 to 31 39 to 41 50 to 51 53
    21|    19|vlan batch 60 to 61 70 to 71 73 80 to 81 83 90 to 91 100 to 101 110 to 111 113 120 to 121
    22|    20|vlan batch 130 to 131 133 140 to 141 150 to 151 160 to 161 169 171 173 181 190 to 191
    23|    21|vlan batch 193 to 194 200 to 201 203 211 213 220 250 to 251 253 258 271
    24|    22|vlan batch 273 281 283 905 to 907 912 to 917 919 to 920 922 to 924 926 931 934
    25|    23|vlan batch 936 938 to 942 945 to 949 952 to 953 956 to 960 963 965 to 966 968 970 to 974 977
    26|    24|vlan batch 982 985 to 986 990 1001 1003 1100 1108 1111 to 1112 1121 1125
    27|    25|vlan batch 1138 1144 1152 1164 1166 1195 1264 1295 1395 1914
    28|    26|vlan batch 2311 2340 to 2341 2733 3000 3005 3101 to 3102 3105 to 3108 3111 3114 3119 to 3121
    29|    27|vlan batch 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3167 3203 3207 to 3208 3252 3256
    30|    28|vlan batch 3261 3266 3341 3511 3532 to 3533 3540 to 3541 3550 3560 3571 3580 to 3581
    31|    29|vlan batch 3592 3602 3790 to 3791 3902 3904 to 3906 3964 4000 to 4001 4012 4094
    32|    30|#
    33|    31|authentication-profile name default_authen_profile
    34|    32| authentication ipv6-control enable
    35|    33|authentication-profile name dot1x_authen_profile
    36|    34| authentication ipv6-control enable
    37|    35|authentication-profile name dot1xmac_authen_profile
    38|    36| authentication ipv6-control enable
    39|    37|authentication-profile name mac_authen_profile
    40|    38| authentication ipv6-control enable
    41|    39|authentication-profile name multi_authen_profile
    42|    40| authentication ipv6-control enable
    43|    41|authentication-profile name portal_authen_profile
    44|    42| authentication ipv6-control enable
    45|    43|#
    46|    44|set save-configuration delay 1
    47|    45|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    48|    46|#
    49|    47|http server-source all-interface
    50|    48|#
    51|    49|clock timezone Brasilia minus 03:00:00
    52|    50|#
    53|    51|ddr isolation disable
    54|    52|#
    55|    53|undo mac-address learning self-healing enable
    56|    54|#
    57|    55|capwap unknown-unicast cir 0
    58|    56|#
    59|    57|diffserv domain default
    60|    58|#
    61|    59|radius-server template default
    62|    60|#
    63|    61|bfd
    64|    62|#
    65|    63|mpls lsr-id 10.244.189.0
    66|    64|mpls
    67|    65| mpls te
    68|    66| mpls rsvp-te
    69|    67| mpls te cspf
    70|    68|#
    71|    69|mpls l2vpn
    72|    70|#
    73|    71|vsi VSI_21_CY_POP00_POP02_POA_OLT1 static
    74|    72| pwsignal ldp
    75|    73|  vsi-id 21
    76|    74|  peer 10.244.188.2
    77|    75|  traffic-statistics enable
    78|    76| mtu 9000
    79|    77| encapsulation ethernet
    80|    78|#
    81|    79|vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1 static
    82|    80| pwsignal ldp
    83|    81|  vsi-id 41
    84|    82|  peer 10.244.188.19
    85|    83|  traffic-statistics enable
    86|    84| mtu 9000
    87|    85| encapsulation ethernet
    88|    86|#
    89|    87|vsi VSI_3120_POP00_POP20_BGP1_CE20 static
    90|    88| pwsignal ldp
    91|    89|  vsi-id 3120
    92|    90|  peer 10.244.188.20
    93|    91| mtu 9000
    94|    92| encapsulation ethernet
    95|    93|#
    96|    94|vsi VSI_161_CY_POP0-2_POP16_CA_OLT1 static
    97|    95| pwsignal ldp
    98|    96|  vsi-id 161
    99|    97|  peer 10.244.189.3
   100|    98|  traffic-statistics enable
   101|    99| mtu 9000
   102|   100| encapsulation ethernet
   103|   101|#
   104|   102|vsi VSI_169_CY_POP0-2_POP16_CA_RADI static
   105|   103| pwsignal ldp
   106|   104|  vsi-id 169
   107|   105|  peer 10.244.189.3
   108|   106|  traffic-statistics enable
   109|   107| mtu 9000
   110|   108| encapsulation ethernet
   111|   109|#
   112|   110|vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1 static
   113|   111| pwsignal ldp
   114|   112|  vsi-id 31
   115|   113|  peer 10.244.189.3
   116|   114|  traffic-statistics enable
   117|   115| mtu 9000
   118|   116| encapsulation ethernet
   119|   117|#
   120|   118|vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
   121|   119| pwsignal ldp
   122|   120|  vsi-id 61
   123|   121|  peer 10.244.188.7
   124|   122|  traffic-statistics enable
   125|   123| mtu 9000
   126|   124| encapsulation ethernet
   127|   125|#
   128|   126|vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1 static
   129|   127| pwsignal ldp
   130|   128|  vsi-id 91
   131|   129|  peer 10.244.189.3
   132|   130|  traffic-statistics enable
   133|   131| mtu 9000
   134|   132| encapsulation ethernet
   135|   133|#
   136|   134|vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1 static
   137|   135| pwsignal ldp
   138|   136|  vsi-id 101
   139|   137|  peer 10.244.189.10
   140|   138|  traffic-statistics enable
   141|   139| mtu 9000
   142|   140| encapsulation ethernet
   143|   141|#
   144|   142|vsi VSI_160_CY_POP0-2_POP16_CA_MGNT static
   145|   143| pwsignal ldp
   146|   144|  vsi-id 160
   147|   145|  peer 10.244.189.3
   148|   146|  traffic-statistics enable
   149|   147| mtu 9000
   150|   148| encapsulation ethernet
   151|   149|#
   152|   150|vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT static
   153|   151| pwsignal ldp
   154|   152|  vsi-id 90
   155|   153|  peer 10.244.189.3
   156|   154|  traffic-statistics enable
   157|   155| mtu 9000
   158|   156| encapsulation ethernet
   159|   157|#
   160|   158|vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
   161|   159| pwsignal ldp
   162|   160|  vsi-id 60
   163|   161|  peer 10.244.188.7
   164|   162|  traffic-statistics enable
   165|   163| mtu 9000
   166|   164| encapsulation ethernet
   167|   165|#
   168|   166|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   169|   167| pwsignal ldp
   170|   168|  vsi-id 30
   171|   169|  peer 10.244.189.3
   172|   170|  traffic-statistics enable
   173|   171| mtu 9000
   174|   172| encapsulation ethernet
   175|   173|#
   176|   174|vsi VSI_71_CY_POP0-2_POP07_STE_OLT1 static
   177|   175| pwsignal ldp
   178|   176|  vsi-id 71
   179|   177|  peer 10.244.188.7
   180|   178|  traffic-statistics enable
   181|   179| mtu 9000
   182|   180| encapsulation ethernet
   183|   181|#
   184|   182|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
   185|   183| pwsignal ldp
   186|   184|  vsi-id 121
   187|   185|  peer 10.244.189.12
   188|   186|  traffic-statistics enable
   189|   187| mtu 9000
   190|   188| encapsulation ethernet
   191|   189|#
   192|   190|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
   193|   191| pwsignal ldp
   194|   192|  vsi-id 120
   195|   193|  peer 10.244.189.12
   196|   194|  traffic-statistics enable
   197|   195| mtu 9000
   198|   196| encapsulation ethernet
   199|   197|#
   200|   198|vsi VSI_70_CY_POP0-2_POP07_STE_MGNT static
   201|   199| pwsignal ldp
   202|   200|  vsi-id 70
   203|   201|  peer 10.244.188.7
   204|   202|  traffic-statistics enable
   205|   203| mtu 9000
   206|   204| encapsulation ethernet
   207|   205|#
   208|   206|vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT static
   209|   207| pwsignal ldp
   210|   208|  vsi-id 100
   211|   209|  peer 10.244.189.10
   212|   210|  traffic-statistics enable
   213|   211| mtu 9000
   214|   212| encapsulation ethernet
   215|   213|#
   216|   214|vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
   217|   215| pwsignal ldp
   218|   216|  vsi-id 130
   219|   217|  peer 10.244.188.2
   220|   218|  peer 10.244.189.65
   221|   219|  traffic-statistics enable
   222|   220| mtu 9000
   223|   221| encapsulation ethernet
   224|   222|#
   225|   223|vsi VSI_81_POP0-2_POP08_FREITA_OLT1 static
   226|   224| pwsignal ldp
   227|   225|  vsi-id 81
   228|   226|  peer 10.244.188.8
   229|   227|  traffic-statistics enable
   230|   228| mtu 9000
   231|   229| encapsulation ethernet
   232|   230|#
   233|   231|vsi VSI_3153_CY_POP00_PROV_LM_CIVIL static
   234|   232| pwsignal ldp
   235|   233|  vsi-id 3153
   236|   234|  peer 10.244.188.27
   237|   235|  peer 10.244.188.28
   238|   236|  traffic-statistics enable
   239|   237| mtu 9000
   240|   238| encapsulation ethernet
   241|   239|#
   242|   240|vsi VSI_3560_TRANS_PPPOE_POWERNET static
   243|   241| pwsignal ldp
   244|   242|  vsi-id 3560
   245|   243|  peer 10.244.188.125
   246|   244|  peer 10.244.188.27
   247|   245| mtu 9000
   248|   246| encapsulation ethernet
   249|   247|#
   250|   248|vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
   251|   249| pwsignal ldp
   252|   250|  vsi-id 23
   253|   251|  peer 10.244.188.2
   254|   252|  traffic-statistics enable
   255|   253| mtu 9000
   256|   254| encapsulation ethernet
   257|   255|#
   258|   256|vsi VSI_253_CY_POP0-2_POP25_PO_OLT1 static
   259|   257| pwsignal ldp
   260|   258|  vsi-id 253
   261|   259|  peer 10.244.188.125
   262|   260|  traffic-statistics enable
   263|   261| mtu 9000
   264|   262| encapsulation ethernet
   265|   263|#
   266|   264|vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
   267|   265| pwsignal ldp
   268|   266|  vsi-id 258
   269|   267|  peer 10.244.188.125
   270|   268|  traffic-statistics enable
   271|   269| mtu 9000
   272|   270| encapsulation ethernet
   273|   271|#
   274|   272|vsi VSI_110_POP00_02_POP11_VI_MGNT static
   275|   273| pwsignal ldp
   276|   274|  vsi-id 110
   277|   275|  peer 10.244.189.11
   278|   276|  traffic-statistics enable
   279|   277| mtu 9000
   280|   278| encapsulation ethernet
   281|   279|#
   282|   280|vsi VSI_111_POP00_02_POP11_VI_OLT1 static
   283|   281| pwsignal ldp
   284|   282|  vsi-id 111
   285|   283|  peer 10.244.188.11
   286|   284|  peer 10.244.188.11 pw POP00_POP11_ANT
   287|   285|  peer 10.244.189.11
   288|   286|  traffic-statistics enable
   289|   287| mtu 9000
   290|   288| encapsulation ethernet
   291|   289|#
   292|   290|vsi VSI_971_POP21_POP00_TR_PREF_SAP static
   293|   291| pwsignal ldp
   294|   292|  vsi-id 971
   295|   293|  peer 10.244.188.21
   296|   294| mtu 9000
   297|   295| encapsulation ethernet
   298|   296|#
   299|   297|vsi VSI_3155_CY_POP00_PROV_LM_V_MAR static
   300|   298| pwsignal ldp
   301|   299|  vsi-id 3155
   302|   300|  peer 10.244.188.28
   303|   301|  peer 10.244.189.28
   304|   302| mtu 9000
   305|   303| encapsulation ethernet
   306|   304|#
   307|   305|vsi VSI_3154_CY_POP00_PROV_LM_V_RIC static
   308|   306| pwsignal ldp
   309|   307|  vsi-id 3154
   310|   308|  peer 10.244.188.28
   311|   309|  peer 10.244.189.28
   312|   310| mtu 9000
   313|   311| encapsulation ethernet
   314|   312|#
   315|   313|vsi VSI3906_PNI_META_POP00_CYBER static
   316|   314| pwsignal ldp
   317|   315|  vsi-id 3906
   318|   316|  peer 10.244.188.1
   319|   317| mtu 8000
   320|   318| encapsulation ethernet
   321|   319|#
   322|   320|vsi VSI_3160_CY_POP00_PROV_NIC_TELE static
   323|   321| pwsignal ldp
   324|   322|  vsi-id 3160
   325|   323|  peer 10.244.188.15
   326|   324|  peer 10.244.189.15
   327|   325| mtu 9000
   328|   326| encapsulation ethernet
   329|   327|#
   330|   328|vsi VSI_113_POP00_02_POP11_VI_OLT1 static
   331|   329| pwsignal ldp
   332|   330|  vsi-id 113
   333|   331|  peer 10.244.188.11
   334|   332|  peer 10.244.189.11
   335|   333|  traffic-statistics enable
   336|   334| mtu 9000
   337|   335| encapsulation ethernet
   338|   336|#
   339|   337|vsi VSI_150_CY_POP00_POP15_EXP_MGNT static
   340|   338| pwsignal ldp
   341|   339|  vsi-id 150
   342|   340|  peer 10.244.189.15
   343|   341|  traffic-statistics enable
   344|   342| mtu 9000
   345|   343| encapsulation ethernet
   346|   344|#
   347|   345|vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
   348|   346| pwsignal ldp
   349|   347|  vsi-id 3571
   350|   348|  peer 10.244.188.20
   351|   349|  traffic-statistics enable
   352|   350| mtu 9000
   353|   351| encapsulation ethernet
   354|   352|#
   355|   353|vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
   356|   354| pwsignal ldp
   357|   355|  vsi-id 151
   358|   356|  peer 10.244.188.15
   359|   357|  peer 10.244.189.15
   360|   358|  traffic-statistics enable
   361|   359| mtu 9000
   362|   360| encapsulation ethernet
   363|   361|#
   364|   362|vsi VSI_3143_CY_POP00_PROV_AS52917 static
   365|   363| pwsignal ldp
   366|   364|  vsi-id 3143
   367|   365|  peer 10.244.188.43
   368|   366| mtu 9000
   369|   367| encapsulation ethernet
   370|   368|#
   371|   369|vsi VSI_50_POP0-2_POP05_M_RIN_MGNT static
   372|   370| pwsignal ldp
   373|   371|  vsi-id 50
   374|   372|  peer 10.244.188.5
   375|   373|  traffic-statistics enable
   376|   374| mtu 9000
   377|   375| encapsulation ethernet
   378|   376|#
   379|   377|vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
   380|   378| pwsignal ldp
   381|   379|  vsi-id 51
   382|   380|  peer 10.244.188.5
   383|   381|  traffic-statistics enable
   384|   382| mtu 9000
   385|   383| encapsulation ethernet
   386|   384|#
   387|   385|vsi VSI_3150_POP00_PROV_VPM_MAIOLI static
   388|   386| pwsignal ldp
   389|   387|  vsi-id 3150
   390|   388|  peer 10.244.188.50
   391|   389|  traffic-statistics enable
   392|   390| mtu 9000
   393|   391| encapsulation ethernet
   394|   392|#
   395|   393|vsi VSI_3162_POP00_PROV_EQUATORIAL static
   396|   394| pwsignal ldp
   397|   395|  vsi-id 3162
   398|   396|  peer 10.244.188.62
   399|   397|  traffic-statistics enable
   400|   398| mtu 9000
   401|   399| encapsulation ethernet
   402|   400|#
   403|   401|vsi VSI_16_SERVIDORES_IP_PUBLICOS static
   404|   402| pwsignal ldp
   405|   403|  vsi-id 16
   406|   404|  peer 10.244.188.20
   407|   405| mtu 9000
   408|   406| encapsulation ethernet
   409|   407|#
   410|   408|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
   411|   409| pwsignal ldp
   412|   410|  vsi-id 3581
   413|   411|  peer 10.244.188.59
   414|   412| mtu 9000
   415|   413| encapsulation ethernet
   416|   414|#
   417|   415|vsi VSI_3261_POP00-02_PROV_VALESAT static
   418|   416| pwsignal ldp
   419|   417|  vsi-id 3261
   420|   418|  peer 10.244.188.17
   421|   419|  traffic-statistics enable
   422|   420| mtu 9000
   423|   421| encapsulation ethernet
   424|   422|#
   425|   423|vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
   426|   424| pwsignal ldp
   427|   425|  vsi-id 4000
   428|   426|  peer 10.244.188.2
   429|   427|  traffic-statistics enable
   430|   428| mtu 9000
   431|   429| encapsulation ethernet
   432|   430|#
   433|   431|vsi VSI_3252_POP00-02_PROV_BLUSTELE static
   434|   432| pwsignal ldp
   435|   433|  vsi-id 3252
   436|   434|  peer 10.244.188.2
   437|   435|  traffic-statistics enable
   438|   436| mtu 9000
   439|   437| encapsulation ethernet
   440|   438|#
   441|   439|vsi VSI_3266_POP00-02_PROV_WIANETSU static
   442|   440| pwsignal ldp
   443|   441|  vsi-id 3266
   444|   442|  peer 10.244.188.2
   445|   443|  traffic-statistics enable
   446|   444| mtu 9000
   447|   445| encapsulation ethernet
   448|   446|#
   449|   447|vsi VSI_3203_POP04_POP00_IXRS_BLUS static
   450|   448| pwsignal ldp
   451|   449|  vsi-id 3203
   452|   450|  peer 10.244.188.4
   453|   451|  traffic-statistics enable
   454|   452| mtu 8000
   455|   453| encapsulation ethernet
   456|   454|#
   457|   455|vsi VSI_3207_POP00_POP04_IXRS_CYBER static
   458|   456| pwsignal ldp
   459|   457|  vsi-id 3207
   460|   458|  peer 10.244.188.4
   461|   459|  traffic-statistics enable
   462|   460| mtu 8000
   463|   461| encapsulation ethernet
   464|   462|#
   465|   463|vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT static
   466|   464| pwsignal ldp
   467|   465|  vsi-id 80
   468|   466|  peer 10.244.188.8
   469|   467|  traffic-statistics enable
   470|   468| mtu 9000
   471|   469| encapsulation ethernet
   472|   470|#
   473|   471|vsi VSI_1003_BGP1_CYBER_CE03_CYBER static
   474|   472| pwsignal ldp
   475|   473|  vsi-id 1003
   476|   474|  peer 10.244.188.17
   477|   475|  traffic-statistics enable
   478|   476| mtu 9000
   479|   477| encapsulation ethernet
   480|   478|#
   481|   479|vsi VSI190_CY_POP0-2_POP19_HIP_MGNT static
   482|   480| pwsignal ldp
   483|   481|  vsi-id 190
   484|   482|  peer 10.244.188.19
   485|   483|  traffic-statistics enable
   486|   484| mtu 9000
   487|   485| encapsulation ethernet
   488|   486|#
   489|   487|vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4 static
   490|   488| pwsignal ldp
   491|   489|  vsi-id 3790
   492|   490|  peer 10.244.188.1
   493|   491|  traffic-statistics enable
   494|   492| mtu 8000
   495|   493| encapsulation ethernet
   496|   494|#
   497|   495|vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6 static
   498|   496| pwsignal ldp
   499|   497|  vsi-id 3791
   500|   498|  peer 10.244.188.1
   501|   499|  traffic-statistics enable
   502|   500| mtu 8000
   503|   501| encapsulation ethernet
   504|   502|#
   505|   503|vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
   506|   504| pwsignal ldp
   507|   505|  vsi-id 131
   508|   506|  peer 10.244.188.13
   509|   507|  traffic-statistics enable
   510|   508| mtu 9000
   511|   509| encapsulation ethernet
   512|   510|#
   513|   511|vsi VSI_3005_TRANSP_TELIU_STA_CASA static
   514|   512| pwsignal ldp
   515|   513|  vsi-id 3005
   516|   514|  peer 10.244.188.2
   517|   515|  traffic-statistics enable
   518|   516| mtu 9000
   519|   517| encapsulation ethernet
   520|   518|#
   521|   519|vsi VSI3904_PNI_META_POP00_CYBER static
   522|   520| pwsignal ldp
   523|   521|  vsi-id 3904
   524|   522|  peer 10.244.188.1
   525|   523| mtu 8000
   526|   524| encapsulation ethernet
   527|   525|#
   528|   526|vsi VSI_3000_CYB_POP00-17_BGP1_BGP1 static
   529|   527| pwsignal ldp
   530|   528|  vsi-id 3000
   531|   529|  peer 10.244.188.17
   532|   530| mtu 9000
   533|   531| encapsulation ethernet
   534|   532|#
   535|   533|vsi VSI_959_POP00_POP08_TRANSP_VERO static
   536|   534| pwsignal ldp
   537|   535|  vsi-id 959
   538|   536|  peer 10.244.188.8
   539|   537|  traffic-statistics enable
   540|   538| mtu 9000
   541|   539| encapsulation ethernet
   542|   540|#
   543|   541|vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA static
   544|   542| pwsignal ldp
   545|   543|  vsi-id 3532
   546|   544|  peer 10.244.188.21
   547|   545| mtu 9000
   548|   546| encapsulation ethernet
   549|   547|#
   550|   548|vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA static
   551|   549| pwsignal ldp
   552|   550|  vsi-id 3533
   553|   551|  peer 10.244.188.21
   554|   552| mtu 9000
   555|   553| encapsulation ethernet
   556|   554|#
   557|   555|vsi VSI_39_POP0-02_POP03_M_FLO_RADI static
   558|   556| pwsignal ldp
   559|   557|  vsi-id 39
   560|   558|  peer 10.244.189.3
   561|   559| mtu 9000
   562|   560| encapsulation ethernet
   563|   561|#
   564|   562|vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
   565|   563| pwsignal ldp
   566|   564|  vsi-id 193
   567|   565|  peer 10.244.188.19
   568|   566|  traffic-statistics enable
   569|   567| mtu 9000
   570|   568| encapsulation ethernet
   571|   569|#
   572|   570|vsi VSI_3167_POP00_PROV_LUCFIBRA_L1 static
   573|   571| pwsignal ldp
   574|   572|  vsi-id 3167
   575|   573|  peer 10.244.188.67
   576|   574| mtu 9000
   577|   575| encapsulation ethernet
   578|   576|#
   579|   577|vsi VSI_271_SC_POP0-2_POP27_CI_OLT1 static
   580|   578| pwsignal ldp
   581|   579|  vsi-id 271
   582|   580|  peer 10.244.188.27
   583|   581| mtu 9000
   584|   582| encapsulation ethernet
   585|   583|#
   586|   584|vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
   587|   585| pwsignal ldp
   588|   586|  vsi-id 273
   589|   587|  peer 10.244.188.27
   590|   588| mtu 9000
   591|   589| encapsulation ethernet
   592|   590|#
   593|   591|vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
   594|   592| pwsignal ldp
   595|   593|  vsi-id 11
   596|   594|  peer 10.244.188.2
   597|   595|  traffic-statistics enable
   598|   596| mtu 9000
   599|   597| encapsulation ethernet
   600|   598|#
   601|   599|vsi VSI_3902_EQUIN_POP00_CYBER_BGP1 static
   602|   600| pwsignal ldp
   603|   601|  vsi-id 3902
   604|   602|  peer 10.244.188.1
   605|   603|  traffic-statistics enable
   606|   604| mtu 8000
   607|   605| encapsulation ethernet
   608|   606|#
   609|   607|vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
   610|   608| pwsignal ldp
   611|   609|  vsi-id 12
   612|   610|  peer 10.244.188.2
   613|   611|  traffic-statistics enable
   614|   612| mtu 9000
   615|   613| encapsulation ethernet
   616|   614|#
   617|   615|vsi VSI_3107_POP00_POP02_TR_POA_SEG static
   618|   616| pwsignal ldp
   619|   617|  vsi-id 3107
   620|   618|  peer 10.244.188.2
   621|   619|  peer 10.244.188.125
   622|   620|  peer 10.244.188.19
   623|   621|  peer 10.244.188.17
   624|   622|  peer 10.244.189.65
   625|   623|  peer 10.244.188.20
   626|   624|  peer 10.244.188.21
   627|   625|  peer 10.244.189.11
   628|   626|  peer 10.244.188.13
   629|   627|  traffic-statistics enable
   630|   628| mtu 9000
   631|   629| encapsulation ethernet
   632|   630|#
   633|   631|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
   634|   632| pwsignal ldp
   635|   633|  vsi-id 3114
   636|   634|  peer 10.244.189.14
   637|   635|  traffic-statistics enable
   638|   636| mtu 9000
   639|   637| encapsulation ethernet
   640|   638|#
   641|   639|vsi VSI_3101_POP00_TRANS_CAM_SAPUCA static
   642|   640| pwsignal ldp
   643|   641|  vsi-id 3101
   644|   642|  peer 10.244.188.8
   645|   643|  peer 10.244.188.125
   646|   644|  peer 10.244.188.15
   647|   645|  peer 10.244.188.5
   648|   646|  peer 10.244.188.22
   649|   647|  traffic-statistics enable
   650|   648| mtu 9000
   651|   649| encapsulation ethernet
   652|   650|#
   653|   651|vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
   654|   652| pwsignal ldp
   655|   653|  vsi-id 3105
   656|   654|  peer 10.244.188.2
   657|   655|  peer 10.244.188.19
   658|   656|  peer 10.244.188.4
   659|   657|  peer 10.244.188.17
   660|   658|  peer 10.244.188.125
   661|   659|  peer 10.244.189.65
   662|   660|  peer 10.244.188.20
   663|   661|  peer 10.244.188.21
   664|   662|  peer 10.244.189.11
   665|   663|  traffic-statistics enable
   666|   664| mtu 9000
   667|   665| encapsulation ethernet
   668|   666|#
   669|   667|vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
   670|   668| pwsignal ldp
   671|   669|  vsi-id 3106
   672|   670|  peer 10.244.188.2
   673|   671|  peer 10.244.188.20
   674|   672|  peer 10.244.189.11
   675|   673|  traffic-statistics enable
   676|   674| mtu 9000
   677|   675| encapsulation ethernet
   678|   676|#
   679|   677|vsi VSI_3102_POP00_TRANS_CAM_SAPUCA static
   680|   678| pwsignal ldp
   681|   679|  vsi-id 3102
   682|   680|  peer 10.244.188.125
   683|   681|  peer 10.244.188.21
   684|   682|  peer 10.244.188.22
   685|   683|  traffic-statistics enable
   686|   684| mtu 9000
   687|   685| encapsulation ethernet
   688|   686|#
   689|   687|vsi VSI3511_POP12_TR_FENIX_CYBER_RN static
   690|   688| pwsignal ldp
   691|   689|  vsi-id 3511
   692|   690|  peer 10.244.189.12
   693|   691|  traffic-statistics enable
   694|   692| mtu 9000
   695|   693| encapsulation ethernet
   696|   694|#
   697|   695|vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
   698|   696| pwsignal ldp
   699|   697|  vsi-id 3341
   700|   698|  peer 10.244.188.17
   701|   699|  peer 10.244.188.62
   702|   700|  peer 10.244.188.67
   703|   701|  peer 10.244.188.19
   704|   702|  peer 10.244.188.2
   705|   703|  peer 10.244.189.11
   706|   704|  peer 10.244.188.21
   707|   705|  peer 10.244.188.44
   708|   706|  traffic-statistics enable
   709|   707| mtu 9000
   710|   708| encapsulation ethernet
   711|   709|#
   712|   710|vsi VSI_3256_TRANSP_TELIU_DEDICADOS static
   713|   711| pwsignal ldp
   714|   712|  vsi-id 3256
   715|   713|  peer 10.244.188.2
   716|   714|  traffic-statistics enable
   717|   715| mtu 9000
   718|   716| encapsulation ethernet
   719|   717|#
   720|   718|vsi VSI_3163_POP00-02_POP63_VILLELA static
   721|   719| pwsignal ldp
   722|   720|  vsi-id 3163
   723|   721|  peer 10.244.188.19
   724|   722|  traffic-statistics enable
   725|   723| mtu 9000
   726|   724| encapsulation ethernet
   727|   725|#
   728|   726|vsi VSI_3149_CY_POP00_PROV_AS270998 static
   729|   727| pwsignal ldp
   730|   728|  vsi-id 3149
   731|   729|  peer 10.244.188.49
   732|   730|  traffic-statistics enable
   733|   731| mtu 9000
   734|   732| encapsulation ethernet
   735|   733|#
   736|   734|vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
   737|   735| pwsignal ldp
   738|   736|  vsi-id 17
   739|   737|  peer 10.244.188.2
   740|   738|  traffic-statistics enable
   741|   739| mtu 9000
   742|   740| encapsulation ethernet
   743|   741|#
   744|   742|vsi VSI_3108_POP00_POP02_TR_POA_SEG static
   745|   743| pwsignal ldp
   746|   744|  vsi-id 3108
   747|   745|  peer 10.244.188.2
   748|   746|  peer 10.244.188.18
   749|   747|  traffic-statistics enable
   750|   748| mtu 9000
   751|   749| encapsulation ethernet
   752|   750|#
   753|   751|vsi VSI_181_POP0-2_POP18_CEIC_OLT1 static
   754|   752| pwsignal ldp
   755|   753|  vsi-id 181
   756|   754|  peer 10.244.188.18
   757|   755|  traffic-statistics enable
   758|   756| mtu 9000
   759|   757| encapsulation ethernet
   760|   758|#
   761|   759|vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT static
   762|   760| pwsignal ldp
   763|   761|  vsi-id 40
   764|   762|  peer 10.244.188.19
   765|   763|  traffic-statistics enable
   766|   764| mtu 9000
   767|   765| encapsulation ethernet
   768|   766|#
   769|   767|vsi VSI191_CY_POP0-2_POP19_HIP_OLT1 static
   770|   768| pwsignal ldp
   771|   769|  vsi-id 191
   772|   770|  peer 10.244.188.19
   773|   771|  traffic-statistics enable
   774|   772| mtu 9000
   775|   773| encapsulation ethernet
   776|   774|#
   777|   775|vsi VSI_140_POP0-2_POP14_LGRAN_OLT1 static
   778|   776| description VLAN_140_POP14_OLT1
   779|   777| pwsignal ldp
   780|   778|  vsi-id 140
   781|   779|  peer 10.244.189.14
   782|   780|  traffic-statistics enable
   783|   781| mtu 9000
   784|   782| encapsulation ethernet
   785|   783|#
   786|   784|vsi VSI194_POP0-2_POP19_HIPIC_RSSUL static
   787|   785| pwsignal ldp
   788|   786|  vsi-id 194
   789|   787|  peer 10.244.188.19
   790|   788|  traffic-statistics enable
   791|   789| mtu 9000
   792|   790| encapsulation ethernet
   793|   791|#
   794|   792|vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
   795|   793| pwsignal ldp
   796|   794|  vsi-id 171
   797|   795|  peer 10.244.188.17
   798|   796|  traffic-statistics enable
   799|   797| mtu 9000
   800|   798| encapsulation ethernet
   801|   799|#
   802|   800|vsi VSI173_CY_POP0-2_POP17_ELE_OLT1 static
   803|   801| pwsignal ldp
   804|   802|  vsi-id 173
   805|   803|  peer 10.244.188.17
   806|   804|  traffic-statistics enable
   807|   805| mtu 9000
   808|   806| encapsulation ethernet
   809|   807|#
   810|   808|vsi VSI_13_CY_POP00_POP02_SAP_OLT1 static
   811|   809| pwsignal ldp
   812|   810|  vsi-id 13
   813|   811|  peer 10.244.188.2
   814|   812|  peer 10.244.188.49
   815|   813|  traffic-statistics enable
   816|   814| mtu 9000
   817|   815| encapsulation ethernet
   818|   816|#
   819|   817|vsi VSI_281_SC_POP0-2_POP28_VR_OLT1 static
   820|   818| pwsignal ldp
   821|   819|  vsi-id 281
   822|   820|  peer 10.244.189.28
   823|   821| mtu 9000
   824|   822| encapsulation ethernet
   825|   823|#
   826|   824|vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
   827|   825| pwsignal ldp
   828|   826|  vsi-id 141
   829|   827|  peer 10.244.189.14
   830|   828|  traffic-statistics enable
   831|   829| mtu 9000
   832|   830| encapsulation ethernet
   833|   831|#
   834|   832|vsi VSI_18_CY_POP00_POP02_SAP_RADI static
   835|   833| pwsignal ldp
   836|   834|  vsi-id 18
   837|   835|  peer 10.244.188.2
   838|   836|  traffic-statistics enable
   839|   837| mtu 9000
   840|   838| encapsulation ethernet
   841|   839|#
   842|   840|vsi VSI3119_POP00_TRAN_PROV_NEGETTI static
   843|   841| pwsignal ldp
   844|   842|  vsi-id 3119
   845|   843|  peer 10.244.188.27
   846|   844|  traffic-statistics enable
   847|   845| mtu 9000
   848|   846| encapsulation ethernet
   849|   847|#
   850|   848|vsi VSI_3208_PNI_GGC_ASN273461 static
   851|   849| pwsignal ldp
   852|   850|  vsi-id 3208
   853|   851|  peer 10.244.188.1
   854|   852|  traffic-statistics enable
   855|   853| mtu 8000
   856|   854| encapsulation ethernet
   857|   855|#
   858|   856|vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
   859|   857| pwsignal ldp
   860|   858|  vsi-id 4012
   861|   859|  peer 10.244.188.2
   862|   860|  traffic-statistics enable
   863|   861| mtu 9000
   864|   862| encapsulation ethernet
   865|   863|#
   866|   864|vsi VSI_3540_POP00-02_TRAN_MEDIANET static
   867|   865| pwsignal ldp
   868|   866|  vsi-id 3540
   869|   867|  peer 10.244.188.5
   870|   868|  traffic-statistics enable
   871|   869| mtu 9000
   872|   870| encapsulation ethernet
   873|   871|#
   874|   872|vsi VSI_73_CY_POP0-2_POP07_STE_OLT1 static
   875|   873| pwsignal ldp
   876|   874|  vsi-id 73
   877|   875|  peer 10.244.188.7
   878|   876|  traffic-statistics enable
   879|   877| mtu 9000
   880|   878| encapsulation ethernet
   881|   879|#
   882|   880|vsi VSI_3541_POP00-02_TRAN_MEDIANET static
   883|   881| pwsignal ldp
   884|   882|  vsi-id 3541
   885|   883|  peer 10.244.188.5
   886|   884|  traffic-statistics enable
   887|   885| mtu 9000
   888|   886| encapsulation ethernet
   889|   887|#
   890|   888|vsi VSI_1914_SEABORN_L1_ASN273461 static
   891|   889| pwsignal ldp
   892|   890|  vsi-id 1914
   893|   891|  peer 10.244.188.17
   894|   892|  traffic-statistics enable
   895|   893| mtu 9000
   896|   894| encapsulation ethernet
   897|   895|#
   898|   896|vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1 static
   899|   897| pwsignal ldp
   900|   898|  vsi-id 83
   901|   899|  peer 10.244.188.8
   902|   900|  traffic-statistics enable
   903|   901| mtu 9000
   904|   902| encapsulation ethernet
   905|   903|#
   906|   904|vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1 static
   907|   905| pwsignal ldp
   908|   906|  vsi-id 201
   909|   907|  peer 10.244.188.20
   910|   908|  traffic-statistics enable
   911|   909| mtu 9000
   912|   910| encapsulation ethernet
   913|   911|#
   914|   912|vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1 static
   915|   913| pwsignal ldp
   916|   914|  vsi-id 203
   917|   915|  peer 10.244.188.20
   918|   916|  traffic-statistics enable
   919|   917| mtu 9000
   920|   918| encapsulation ethernet
   921|   919|#
   922|   920|vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT static
   923|   921| pwsignal ldp
   924|   922|  vsi-id 200
   925|   923|  peer 10.244.188.20
   926|   924|  traffic-statistics enable
   927|   925| mtu 9000
   928|   926| encapsulation ethernet
   929|   927|#
   930|   928|vsi VSI_1395_POP00_POP95_DGT_SSP static
   931|   929| pwsignal ldp
   932|   930|  vsi-id 1395
   933|   931|  peer 10.244.188.95
   934|   932|  traffic-statistics enable
   935|   933| mtu 1600
   936|   934| encapsulation ethernet
   937|   935|#
   938|   936|vsi VSI_3147_BGP1CYBE_PROV_IDENTITY static
   939|   937| pwsignal ldp
   940|   938|  vsi-id 3147
   941|   939|  peer 10.244.188.47
   942|   940| mtu 9000
   943|   941| encapsulation ethernet
   944|   942|#
   945|   943|vsi VSI_250_CY_POP0-2_POP25_PO_MGNT static
   946|   944| pwsignal ldp
   947|   945|  vsi-id 250
   948|   946|  peer 10.244.188.125
   949|   947| mtu 9000
   950|   948| encapsulation ethernet
   951|   949|#
   952|   950|vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA static
   953|   951| pwsignal ldp
   954|   952|  vsi-id 3111
   955|   953|  peer 10.244.188.60
   956|   954|  traffic-statistics enable
   957|   955| mtu 9000
   958|   956| encapsulation ethernet
   959|   957|#
   960|   958|vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
   961|   959| pwsignal ldp
   962|   960|  vsi-id 133
   963|   961|  peer 10.244.188.13
   964|   962|  traffic-statistics enable
   965|   963| mtu 9000
   966|   964| encapsulation ethernet
   967|   965|#
   968|   966|vsi VSI_283_CY_POP0-2_POP28_VR_OLT1 static
   969|   967| pwsignal ldp
   970|   968|  vsi-id 283
   971|   969|  peer 10.244.189.28
   972|   970| mtu 9000
   973|   971| encapsulation ethernet
   974|   972|#
   975|   973|vsi VSI_213_POP0-2_POP21_PREF_SAPUC static
   976|   974| pwsignal ldp
   977|   975|  vsi-id 213
   978|   976|  peer 10.244.188.21
   979|   977|  traffic-statistics enable
   980|   978| mtu 9000
   981|   979| encapsulation ethernet
   982|   980|#
   983|   981|vsi VSI3121_POP0-2_POP21_PREF_SAPUC static
   984|   982| pwsignal ldp
   985|   983|  vsi-id 3121
   986|   984|  peer 10.244.188.21
   987|   985|  traffic-statistics enable
   988|   986| mtu 9000
   989|   987| encapsulation ethernet
   990|   988|#
   991|   989|vsi VSI_965_POP21_POP00_TR_PREF_SAP static
   992|   990| pwsignal ldp
   993|   991|  vsi-id 965
   994|   992|  peer 10.244.188.21
   995|   993| mtu 9000
   996|   994| encapsulation ethernet
   997|   995|#
   998|   996|vsi VSI_970_POP21_POP00_TR_PREF_SAP static
   999|   997| pwsignal ldp
  1000|   998|  vsi-id 970
  1001|   999|  peer 10.244.188.21
  1002|  1000| mtu 9000
  1003|  1001| encapsulation ethernet
  1004|  1002|#
  1005|  1003|vsi VSI_905_POP21_POP00_TR_PREF_SAP static
  1006|  1004| pwsignal ldp
  1007|  1005|  vsi-id 905
  1008|  1006|  peer 10.244.188.21
  1009|  1007| mtu 9000
  1010|  1008| encapsulation ethernet
  1011|  1009|#
  1012|  1010|vsi VSI_906_POP21_POP00_TR_PREF_SAP static
  1013|  1011| pwsignal ldp
  1014|  1012|  vsi-id 906
  1015|  1013|  peer 10.244.188.21
  1016|  1014| mtu 9000
  1017|  1015| encapsulation ethernet
  1018|  1016|#
  1019|  1017|vsi VSI_907_POP21_POP00_TR_PREF_SAP static
  1020|  1018| pwsignal ldp
  1021|  1019|  vsi-id 907
  1022|  1020|  peer 10.244.188.21
  1023|  1021|  traffic-statistics enable
  1024|  1022| mtu 9000
  1025|  1023| encapsulation ethernet
  1026|  1024|#
  1027|  1025|vsi VSI_912_POP21_POP00_TR_PREF_SAP static
  1028|  1026| pwsignal ldp
  1029|  1027|  vsi-id 912
  1030|  1028|  peer 10.244.188.21
  1031|  1029|  traffic-statistics enable
  1032|  1030| mtu 9000
  1033|  1031| encapsulation ethernet
  1034|  1032|#
  1035|  1033|vsi VSI_913_POP21_POP00_TR_PREF_SAP static
  1036|  1034| pwsignal ldp
  1037|  1035|  vsi-id 913
  1038|  1036|  peer 10.244.188.21
  1039|  1037|  traffic-statistics enable
  1040|  1038| mtu 9000
  1041|  1039| encapsulation ethernet
  1042|  1040|#
  1043|  1041|vsi VSI_914_POP21_POP00_TR_PREF_SAP static
  1044|  1042| pwsignal ldp
  1045|  1043|  vsi-id 914
  1046|  1044|  peer 10.244.188.21
  1047|  1045|  traffic-statistics enable
  1048|  1046| mtu 9000
  1049|  1047| encapsulation ethernet
  1050|  1048|#
  1051|  1049|vsi VSI_915_POP21_POP00_TR_PREF_SAP static
  1052|  1050| pwsignal ldp
  1053|  1051|  vsi-id 915
  1054|  1052|  peer 10.244.188.21
  1055|  1053|  traffic-statistics enable
  1056|  1054| mtu 9000
  1057|  1055| encapsulation ethernet
  1058|  1056|#
  1059|  1057|vsi VSI_916_POP21_POP00_TR_PREF_SAP static
  1060|  1058| pwsignal ldp
  1061|  1059|  vsi-id 916
  1062|  1060|  peer 10.244.188.21
  1063|  1061|  traffic-statistics enable
  1064|  1062| mtu 9000
  1065|  1063| encapsulation ethernet
  1066|  1064|#
  1067|  1065|vsi VSI_917_POP21_POP00_TR_PREF_SAP static
  1068|  1066| pwsignal ldp
  1069|  1067|  vsi-id 917
  1070|  1068|  peer 10.244.188.21
  1071|  1069|  traffic-statistics enable
  1072|  1070| mtu 9000
  1073|  1071| encapsulation ethernet
  1074|  1072|#
  1075|  1073|vsi VSI_919_POP21_POP00_TR_PREF_SAP static
  1076|  1074| pwsignal ldp
  1077|  1075|  vsi-id 919
  1078|  1076|  peer 10.244.188.21
  1079|  1077|  traffic-statistics enable
  1080|  1078| mtu 9000
  1081|  1079| encapsulation ethernet
  1082|  1080|#
  1083|  1081|vsi VSI_920_POP21_POP00_TR_PREF_SAP static
  1084|  1082| pwsignal ldp
  1085|  1083|  vsi-id 920
  1086|  1084|  peer 10.244.188.21
  1087|  1085|  traffic-statistics enable
  1088|  1086| mtu 9000
  1089|  1087| encapsulation ethernet
  1090|  1088|#
  1091|  1089|vsi VSI_922_POP21_POP00_TR_PREF_SAP static
  1092|  1090| pwsignal ldp
  1093|  1091|  vsi-id 922
  1094|  1092|  peer 10.244.188.21
  1095|  1093|  traffic-statistics enable
  1096|  1094| mtu 9000
  1097|  1095| encapsulation ethernet
  1098|  1096|#
  1099|  1097|vsi VSI_923_POP21_POP00_TR_PREF_SAP static
  1100|  1098| pwsignal ldp
  1101|  1099|  vsi-id 923
  1102|  1100|  peer 10.244.188.21
  1103|  1101|  traffic-statistics enable
  1104|  1102| mtu 9000
  1105|  1103| encapsulation ethernet
  1106|  1104|#
  1107|  1105|vsi VSI_924_POP21_POP00_TR_PREF_SAP static
  1108|  1106| pwsignal ldp
  1109|  1107|  vsi-id 924
  1110|  1108|  peer 10.244.188.21
  1111|  1109|  traffic-statistics enable
  1112|  1110| mtu 9000
  1113|  1111| encapsulation ethernet
  1114|  1112|#
  1115|  1113|vsi VSI_926_POP21_POP00_TR_PREF_SAP static
  1116|  1114| pwsignal ldp
  1117|  1115|  vsi-id 926
  1118|  1116|  peer 10.244.188.21
  1119|  1117|  traffic-statistics enable
  1120|  1118| mtu 9000
  1121|  1119| encapsulation ethernet
  1122|  1120|#
  1123|  1121|vsi VSI_977_POP21_POP00_TR_PREF_SAP static
  1124|  1122| pwsignal ldp
  1125|  1123|  vsi-id 977
  1126|  1124|  peer 10.244.188.21
  1127|  1125| mtu 9000
  1128|  1126| encapsulation ethernet
  1129|  1127|#
  1130|  1128|vsi VSI_972_POP21_POP00_TR_PREF_SAP static
  1131|  1129| pwsignal ldp
  1132|  1130|  vsi-id 972
  1133|  1131|  peer 10.244.188.21
  1134|  1132| mtu 9000
  1135|  1133| encapsulation ethernet
  1136|  1134|#
  1137|  1135|vsi VSI_931_POP21_POP00_TR_PREF_SAP static
  1138|  1136| pwsignal ldp
  1139|  1137|  vsi-id 931
  1140|  1138|  peer 10.244.188.21
  1141|  1139|  traffic-statistics enable
  1142|  1140| mtu 9000
  1143|  1141| encapsulation ethernet
  1144|  1142|#
  1145|  1143|vsi VSI_934_POP21_POP00_TR_PREF_SAP static
  1146|  1144| pwsignal ldp
  1147|  1145|  vsi-id 934
  1148|  1146|  peer 10.244.188.21
  1149|  1147|  traffic-statistics enable
  1150|  1148| mtu 9000
  1151|  1149| encapsulation ethernet
  1152|  1150|#
  1153|  1151|vsi VSI_936_POP21_POP00_TR_PREF_SAP static
  1154|  1152| pwsignal ldp
  1155|  1153|  vsi-id 936
  1156|  1154|  peer 10.244.188.21
  1157|  1155|  traffic-statistics enable
  1158|  1156| mtu 9000
  1159|  1157| encapsulation ethernet
  1160|  1158|#
  1161|  1159|vsi VSI_938_POP21_POP00_TR_PREF_SAP static
  1162|  1160| pwsignal ldp
  1163|  1161|  vsi-id 938
  1164|  1162|  peer 10.244.188.21
  1165|  1163| mtu 9000
  1166|  1164| encapsulation ethernet
  1167|  1165|#
  1168|  1166|vsi VSI_939_POP21_POP00_TR_PREF_SAP static
  1169|  1167| pwsignal ldp
  1170|  1168|  vsi-id 939
  1171|  1169|  peer 10.244.188.21
  1172|  1170| mtu 9000
  1173|  1171| encapsulation ethernet
  1174|  1172|#
  1175|  1173|vsi VSI_940_POP21_POP00_TR_PREF_SAP static
  1176|  1174| pwsignal ldp
  1177|  1175|  vsi-id 940
  1178|  1176|  peer 10.244.188.21
  1179|  1177| mtu 9000
  1180|  1178| encapsulation ethernet
  1181|  1179|#
  1182|  1180|vsi VSI_941_POP21_POP00_TR_PREF_SAP static
  1183|  1181| pwsignal ldp
  1184|  1182|  vsi-id 941
  1185|  1183|  peer 10.244.188.21
  1186|  1184| mtu 9000
  1187|  1185| encapsulation ethernet
  1188|  1186|#
  1189|  1187|vsi VSI_942_POP21_POP00_TR_PREF_SAP static
  1190|  1188| pwsignal ldp
  1191|  1189|  vsi-id 942
  1192|  1190|  peer 10.244.188.21
  1193|  1191| mtu 9000
  1194|  1192| encapsulation ethernet
  1195|  1193|#
  1196|  1194|vsi VSI_945_POP21_POP00_TR_PREF_SAP static
  1197|  1195| pwsignal ldp
  1198|  1196|  vsi-id 945
  1199|  1197|  peer 10.244.188.21
  1200|  1198| mtu 9000
  1201|  1199| encapsulation ethernet
  1202|  1200|#
  1203|  1201|vsi VSI_946_POP21_POP00_TR_PREF_SAP static
  1204|  1202| pwsignal ldp
  1205|  1203|  vsi-id 946
  1206|  1204|  peer 10.244.188.21
  1207|  1205| mtu 9000
  1208|  1206| encapsulation ethernet
  1209|  1207|#
  1210|  1208|vsi VSI_947_POP21_POP00_TR_PREF_SAP static
  1211|  1209| pwsignal ldp
  1212|  1210|  vsi-id 947
  1213|  1211|  peer 10.244.188.21
  1214|  1212| mtu 9000
  1215|  1213| encapsulation ethernet
  1216|  1214|#
  1217|  1215|vsi VSI_948_POP21_POP00_TR_PREF_SAP static
  1218|  1216| pwsignal ldp
  1219|  1217|  vsi-id 948
  1220|  1218|  peer 10.244.188.21
  1221|  1219| mtu 9000
  1222|  1220| encapsulation ethernet
  1223|  1221|#
  1224|  1222|vsi VSI_949_POP21_POP00_TR_PREF_SAP static
  1225|  1223| pwsignal ldp
  1226|  1224|  vsi-id 949
  1227|  1225|  peer 10.244.188.21
  1228|  1226| mtu 9000
  1229|  1227| encapsulation ethernet
  1230|  1228|#
  1231|  1229|vsi VSI_952_POP21_POP00_TR_PREF_SAP static
  1232|  1230| pwsignal ldp
  1233|  1231|  vsi-id 952
  1234|  1232|  peer 10.244.188.21
  1235|  1233| mtu 9000
  1236|  1234| encapsulation ethernet
  1237|  1235|#
  1238|  1236|vsi VSI_953_POP21_POP00_TR_PREF_SAP static
  1239|  1237| pwsignal ldp
  1240|  1238|  vsi-id 953
  1241|  1239|  peer 10.244.188.21
  1242|  1240| mtu 9000
  1243|  1241| encapsulation ethernet
  1244|  1242|#
  1245|  1243|vsi VSI_956_POP21_POP00_TR_PREF_SAP static
  1246|  1244| pwsignal ldp
  1247|  1245|  vsi-id 956
  1248|  1246|  peer 10.244.188.21
  1249|  1247| mtu 9000
  1250|  1248| encapsulation ethernet
  1251|  1249|#
  1252|  1250|vsi VSI_957_POP21_POP00_TR_PREF_SAP static
  1253|  1251| pwsignal ldp
  1254|  1252|  vsi-id 957
  1255|  1253|  peer 10.244.188.21
  1256|  1254| mtu 9000
  1257|  1255| encapsulation ethernet
  1258|  1256|#
  1259|  1257|vsi VSI_958_POP21_POP00_TR_PREF_SAP static
  1260|  1258| pwsignal ldp
  1261|  1259|  vsi-id 958
  1262|  1260|  peer 10.244.188.21
  1263|  1261| mtu 9000
  1264|  1262| encapsulation ethernet
  1265|  1263|#
  1266|  1264|vsi VSI_960_POP21_POP00_TR_PREF_SAP static
  1267|  1265| pwsignal ldp
  1268|  1266|  vsi-id 960
  1269|  1267|  peer 10.244.188.21
  1270|  1268| mtu 9000
  1271|  1269| encapsulation ethernet
  1272|  1270|#
  1273|  1271|vsi VSI_963_POP21_POP00_TR_PREF_SAP static
  1274|  1272| pwsignal ldp
  1275|  1273|  vsi-id 963
  1276|  1274|  peer 10.244.188.21
  1277|  1275| mtu 9000
  1278|  1276| encapsulation ethernet
  1279|  1277|#
  1280|  1278|vsi VSI_966_POP21_POP00_TR_PREF_SAP static
  1281|  1279| pwsignal ldp
  1282|  1280|  vsi-id 966
  1283|  1281|  peer 10.244.188.21
  1284|  1282| mtu 9000
  1285|  1283| encapsulation ethernet
  1286|  1284|#
  1287|  1285|vsi VSI_968_POP21_POP00_TR_PREF_SAP static
  1288|  1286| pwsignal ldp
  1289|  1287|  vsi-id 968
  1290|  1288|  peer 10.244.188.21
  1291|  1289| mtu 9000
  1292|  1290| encapsulation ethernet
  1293|  1291|#
  1294|  1292|vsi VSI_973_POP21_POP00_TR_PREF_SAP static
  1295|  1293| pwsignal ldp
  1296|  1294|  vsi-id 973
  1297|  1295|  peer 10.244.188.21
  1298|  1296| mtu 9000
  1299|  1297| encapsulation ethernet
  1300|  1298|#
  1301|  1299|vsi VSI_982_POP21_POP00_TR_PREF_SAP static
  1302|  1300| pwsignal ldp
  1303|  1301|  vsi-id 982
  1304|  1302|  peer 10.244.188.21
  1305|  1303| mtu 9000
  1306|  1304| encapsulation ethernet
  1307|  1305|#
  1308|  1306|vsi VSI_990_POP21_POP00_TR_PREF_SAP static
  1309|  1307| pwsignal ldp
  1310|  1308|  vsi-id 990
  1311|  1309|  peer 10.244.188.21
  1312|  1310| mtu 9000
  1313|  1311| encapsulation ethernet
  1314|  1312|#
  1315|  1313|vsi VSI_3580_POP59_TR_INFRAWEB_PPOE static
  1316|  1314| pwsignal ldp
  1317|  1315|  vsi-id 3580
  1318|  1316|  peer 10.244.188.59
  1319|  1317|  traffic-statistics enable
  1320|  1318| mtu 9000
  1321|  1319| encapsulation ethernet
  1322|  1320|#
  1323|  1321|vsi VSI_3151_POP00_PROV_ARROBANET static
  1324|  1322| pwsignal ldp
  1325|  1323|  vsi-id 3151
  1326|  1324|  peer 10.244.188.51
  1327|  1325| mtu 9000
  1328|  1326| encapsulation ethernet
  1329|  1327|#
  1330|  1328|vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
  1331|  1329| pwsignal ldp
  1332|  1330|  vsi-id 53
  1333|  1331|  peer 10.244.188.5
  1334|  1332| mtu 9000
  1335|  1333| encapsulation ethernet
  1336|  1334|#
  1337|  1335|vsi VSI_985_POP21_POP00_TR_PREF_SAP static
  1338|  1336| pwsignal ldp
  1339|  1337|  vsi-id 985
  1340|  1338|  peer 10.244.188.21
  1341|  1339| mtu 9000
  1342|  1340| encapsulation ethernet
  1343|  1341|#
  1344|  1342|vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
  1345|  1343| pwsignal ldp
  1346|  1344|  vsi-id 3964
  1347|  1345|  peer 10.244.188.2
  1348|  1346| mtu 9000
  1349|  1347| encapsulation ethernet
  1350|  1348|#
  1351|  1349|vsi VSI_986_POP21_POP00_TR_PREF_SAP static
  1352|  1350| pwsignal ldp
  1353|  1351|  vsi-id 986
  1354|  1352|  peer 10.244.188.21
  1355|  1353| mtu 9000
  1356|  1354| encapsulation ethernet
  1357|  1355|#
  1358|  1356|vsi VSI_3905_POP17-00_TR_CIRION_L1 static
  1359|  1357| pwsignal ldp
  1360|  1358|  vsi-id 3905
  1361|  1359|  peer 10.244.188.17
  1362|  1360|  traffic-statistics enable
  1363|  1361| mtu 9000
  1364|  1362| encapsulation ethernet
  1365|  1363|#
  1366|  1364|vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
  1367|  1365| pwsignal ldp
  1368|  1366|  vsi-id 3602
  1369|  1367|  peer 10.244.188.5
  1370|  1368| mtu 9000
  1371|  1369| encapsulation ethernet
  1372|  1370|#
  1373|  1371|vsi VSI_251_CY_POP0-2_POP25_CO_OLT1 static
  1374|  1372| pwsignal ldp
  1375|  1373|  vsi-id 251
  1376|  1374|  peer 10.244.188.125
  1377|  1375| mtu 9000
  1378|  1376| encapsulation ethernet
  1379|  1377|#
  1380|  1378|explicit-path SW1POP04-00_VIA_POP11_VLAN3203
  1381|  1379| next hop 10.244.112.2
  1382|  1380| next hop 10.244.110.2
  1383|  1381| next hop 10.244.127.2
  1384|  1382| next hop 10.244.127.5
  1385|  1383| next hop 10.244.111.2
  1386|  1384| next hop 10.244.111.5
  1387|  1385|#
  1388|  1386|mpls ldp
  1389|  1387|#
  1390|  1388|#
  1391|  1389|mpls ldp remote-peer 10.244.188.1
  1392|  1390| remote-ip 10.244.188.1
  1393|  1391|#
  1394|  1392|mpls ldp remote-peer 10.244.188.2
  1395|  1393| remote-ip 10.244.188.2
  1396|  1394|#
  1397|  1395|mpls ldp remote-peer 10.244.188.4
  1398|  1396| remote-ip 10.244.188.4
  1399|  1397|#
  1400|  1398|mpls ldp remote-peer 10.244.188.5
  1401|  1399| remote-ip 10.244.188.5
  1402|  1400|#
  1403|  1401|mpls ldp remote-peer 10.244.188.7
  1404|  1402| remote-ip 10.244.188.7
  1405|  1403|#
  1406|  1404|mpls ldp remote-peer 10.244.188.8
  1407|  1405| remote-ip 10.244.188.8
  1408|  1406|#
  1409|  1407|mpls ldp remote-peer 10.244.188.10
  1410|  1408| remote-ip 10.244.188.10
  1411|  1409|#
  1412|  1410|mpls ldp remote-peer 10.244.188.11
  1413|  1411| remote-ip 10.244.188.11
  1414|  1412|#
  1415|  1413|mpls ldp remote-peer 10.244.188.13
  1416|  1414| remote-ip 10.244.188.13
  1417|  1415|#
  1418|  1416|mpls ldp remote-peer 10.244.188.15
  1419|  1417| remote-ip 10.244.188.15
  1420|  1418|#
  1421|  1419|mpls ldp remote-peer 10.244.188.17
  1422|  1420| remote-ip 10.244.188.17
  1423|  1421|#
  1424|  1422|mpls ldp remote-peer 10.244.188.18
  1425|  1423| remote-ip 10.244.188.18
  1426|  1424|#
  1427|  1425|mpls ldp remote-peer 10.244.188.19
  1428|  1426| remote-ip 10.244.188.19
  1429|  1427|#
  1430|  1428|mpls ldp remote-peer 10.244.188.20
  1431|  1429| remote-ip 10.244.188.20
  1432|  1430|#
  1433|  1431|mpls ldp remote-peer 10.244.188.21
  1434|  1432| remote-ip 10.244.188.21
  1435|  1433|#
  1436|  1434|mpls ldp remote-peer 10.244.188.22
  1437|  1435| remote-ip 10.244.188.22
  1438|  1436|#
  1439|  1437|mpls ldp remote-peer 10.244.188.27
  1440|  1438| remote-ip 10.244.188.27
  1441|  1439|#
  1442|  1440|mpls ldp remote-peer 10.244.188.28
  1443|  1441| remote-ip 10.244.188.28
  1444|  1442|#
  1445|  1443|mpls ldp remote-peer 10.244.188.43
  1446|  1444| remote-ip 10.244.188.43
  1447|  1445|#
  1448|  1446|mpls ldp remote-peer 10.244.188.47
  1449|  1447| remote-ip 10.244.188.47
  1450|  1448|#
  1451|  1449|mpls ldp remote-peer 10.244.188.49
  1452|  1450| remote-ip 10.244.188.49
  1453|  1451|#
  1454|  1452|mpls ldp remote-peer 10.244.188.50
  1455|  1453| remote-ip 10.244.188.50
  1456|  1454|#
  1457|  1455|mpls ldp remote-peer 10.244.188.51
  1458|  1456| remote-ip 10.244.188.51
  1459|  1457|#
  1460|  1458|mpls ldp remote-peer 10.244.188.59
  1461|  1459| remote-ip 10.244.188.59
  1462|  1460|#
  1463|  1461|mpls ldp remote-peer 10.244.188.60
  1464|  1462| remote-ip 10.244.188.60
  1465|  1463|#
  1466|  1464|mpls ldp remote-peer 10.244.188.62
  1467|  1465| remote-ip 10.244.188.62
  1468|  1466|#
  1469|  1467|mpls ldp remote-peer 10.244.188.67
  1470|  1468| remote-ip 10.244.188.67
  1471|  1469|#
  1472|  1470|mpls ldp remote-peer 10.244.188.99
  1473|  1471| remote-ip 10.244.188.99
  1474|  1472|#
  1475|  1473|mpls ldp remote-peer 10.244.188.125
  1476|  1474| remote-ip 10.244.188.125
  1477|  1475|#
  1478|  1476|mpls ldp remote-peer 10.244.189.3
  1479|  1477| remote-ip 10.244.189.3
  1480|  1478|#
  1481|  1479|mpls ldp remote-peer 10.244.189.5
  1482|  1480| remote-ip 10.244.189.5
  1483|  1481|#
  1484|  1482|mpls ldp remote-peer 10.244.189.10
  1485|  1483| remote-ip 10.244.189.10
  1486|  1484|#
  1487|  1485|mpls ldp remote-peer 10.244.189.11
  1488|  1486| remote-ip 10.244.189.11
  1489|  1487|#
  1490|  1488|mpls ldp remote-peer 10.244.189.12
  1491|  1489| remote-ip 10.244.189.12
  1492|  1490|#
  1493|  1491|mpls ldp remote-peer 10.244.189.14
  1494|  1492| remote-ip 10.244.189.14
  1495|  1493|#
  1496|  1494|mpls ldp remote-peer 10.244.189.15
  1497|  1495| remote-ip 10.244.189.15
  1498|  1496|#
  1499|  1497|mpls ldp remote-peer 10.244.189.28
  1500|  1498| remote-ip 10.244.189.28
  1501|  1499|#
  1502|  1500|mpls ldp remote-peer 10.244.189.65
  1503|  1501| remote-ip 10.244.189.65
  1504|  1502|#
  1505|  1503|mpls ldp remote-peer 10.244.189.67
  1506|  1504| remote-ip 10.244.189.67
  1507|  1505|#
  1508|  1506|rsa peer-public-key 10.244.110.6
  1509|  1507| public-key-code begin
  1510|  1508|  30820109
  1511|  1509|    02820100
  1512|  1510|      E09A5CC1 F761B429 D35C7D9A E4600853 5C186444 3D8D977F 2152D97E 9D512D50
  1513|  1511|      1059FF35 788CCE1D 45D34E7B 23B2E884 F19E936F 878E2B46 8599B6BE 2A882B1F
  1514|  1512|      BFC5F8B0 0B4454B2 E6B1B6DE ED926E55 B1D6ACAA CA8AF6F8 0CF8AFED 903F1077
  1515|  1513|      0D8E49DA A06E1BE7 621911D6 B96FCC7C EA5DB211 AF76367E CFFD906E 8212C753
  1516|  1514|      02C12382 0FFDB971 6F6D2CBD F57FB52A 9F175874 8A992F72 F5C43101 90209A8E
  1517|  1515|      388BDD8D 6A261AC0 2827EF28 E3BE372F 574EF7B3 3E5D5F7F DAE0B930 9F2DF2AE
  1518|  1516|      6760B695 01A30E1C AB83F389 8F47C30F 4E9CB918 E0134F81 8A245401 C4C7CA80
  1519|  1517|      3464BC48 53330D46 6F5FD1AB E1B69D38 536E9127 D90FF79A 7D4892B6 9D5B2D91
  1520|  1518|    0203
  1521|  1519|      010001
  1522|  1520| public-key-code end
  1523|  1521|peer-public-key end
  1524|  1522|#
  1525|  1523|pki realm default
  1526|  1524| certificate-check none
  1527|  1525|#
  1528|  1526|free-rule-template name default_free_rule
  1529|  1527|#
  1530|  1528|portal-access-profile name portal_access_profile
  1531|  1529|#
  1532|  1530|drop-profile default
  1533|  1531|#
  1534|  1532|vlan 4
  1535|  1533| description VLAN_4_PTP_CGNAT1_BGP1_CYBER
  1536|  1534|vlan 11
  1537|  1535| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1538|  1536|vlan 12
  1539|  1537| description VLAN_12_POP0_ARQU_OLT1_SCHOSSLER
  1540|  1538|vlan 13
  1541|  1539| description VLAN_13_POP00_ARQU_OLT1_SCHOSSLER
  1542|  1540|vlan 16
  1543|  1541| description VLAN16_SERVIDORES_IP_PUBLICO
  1544|  1542|vlan 17
  1545|  1543| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1546|  1544|vlan 18
  1547|  1545| description VALN_18_POP0_SAP_RAD
  1548|  1546|vlan 19
  1549|  1547| description VLAN19_GERENCIA_EQUIPAMENTOS
  1550|  1548|vlan 21
  1551|  1549| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1552|  1550|vlan 23
  1553|  1551| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1554|  1552|vlan 30
  1555|  1553| description VLAN_30_POP03_M_FOLRES_MGNT
  1556|  1554|vlan 31
  1557|  1555| description VLAN_31_POP03_M_FLORES_OLT1
  1558|  1556|vlan 39
  1559|  1557| description VLAN_39_POP03_M_FLORES_RADIOS
  1560|  1558|vlan 40
  1561|  1559| description VLAN_40_POP04_POA_HIPICA
  1562|  1560|vlan 41
  1563|  1561| description VLAN_41_POP04_PPPOE_CLIENTES
  1564|  1562|vlan 50
  1565|  1563| description VLAN_50_M_RINCAO_GERENCIA
  1566|  1564|vlan 51
  1567|  1565| description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
  1568|  1566|vlan 53
  1569|  1567| description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
  1570|  1568|vlan 60
  1571|  1569| description VLAN_60_POP06_B_VISTA_MGNT
  1572|  1570|vlan 61
  1573|  1571| description VLAN_61_POP06_B_VISTA_OLT1
  1574|  1572|vlan 70
  1575|  1573| description VLAN_70_POP07_S_TECLA_GERENCIA
  1576|  1574|vlan 71
  1577|  1575| description VLAN_71_POP07_S_TECLA_OLT1
  1578|  1576|vlan 73
  1579|  1577| description VLAN_73_POP07_S_TECLA_OLT1
  1580|  1578|vlan 80
  1581|  1579| description VLAN_80_POP08_FREITAS_MGNT
  1582|  1580|vlan 81
  1583|  1581| description VLAN_81_POP08_FREITAS_OLT1
  1584|  1582|vlan 83
  1585|  1583| description VLAN_83_CYBER_POP08_FREITAS_OLT1
  1586|  1584|vlan 90
  1587|  1585| description VLAN_90_POP09_ITACOLOMI_MGNT
  1588|  1586|vlan 91
  1589|  1587| description VLAN_91_POP09_ITACOLOMI_OLT1
  1590|  1588|vlan 100
  1591|  1589| description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
  1592|  1590|vlan 101
  1593|  1591| description VLAN_101_POP10_P_EUCALIPTOS_OLT1
  1594|  1592|vlan 110
  1595|  1593| description VLAN_110_POP11_COND_VIVAZ_MGNT
  1596|  1594|vlan 111
  1597|  1595| description VLAN_111_POP11_COND_VIVAZ_OLT1
  1598|  1596|vlan 113
  1599|  1597| description VLAN_113_POP11_COND_VIVAZ_OLT1
  1600|  1598|vlan 120
  1601|  1599| description vlan120_POP12_BETANIA_GERENCIA
  1602|  1600|vlan 121
  1603|  1601| description VLAN_121_POP12_BETANIA_OLT1
  1604|  1602|vlan 130
  1605|  1603| description VLAN_130_POP13_C_HAVANA_MGNT
  1606|  1604|vlan 131
  1607|  1605| description VLAN_131_POP13_C_HAVANA_OLT1
  1608|  1606|vlan 133
  1609|  1607| description VLAN_133_POP13_C_HAVANA_OLT1
  1610|  1608|vlan 140
  1611|  1609| description VLAN_140_POP14_LOMBA_GRANDE
  1612|  1610|vlan 141
  1613|  1611| description VLAN_141_POP14_LOMBA_GRANDE
  1614|  1612|vlan 150
  1615|  1613| description VLAN_150_POP15_EXPOINTER_GERENCIA
  1616|  1614|vlan 151
  1617|  1615| description VLAN_151_POP15_EXPOINTER_OLT1
  1618|  1616|vlan 160
  1619|  1617| description VLAN_160_POP16_CASTELINHO_MGNT
  1620|  1618|vlan 161
  1621|  1619| description VLAN_161_POP16_CASTELINHO_OLT1
  1622|  1620|vlan 169
  1623|  1621| description VLAN_169_POP16_CASTELINHO_RADIO
  1624|  1622|vlan 171
  1625|  1623| description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
  1626|  1624|vlan 173
  1627|  1625| description VLAN_173_POP17_ELEA_PPPOE_CYBER
  1628|  1626|vlan 181
  1629|  1627| description VLAN_181_POP18_CEIC_PROCEMPA
  1630|  1628|vlan 190
  1631|  1629| description VLAN_190_POP19_HIPICA_GERENCIA
  1632|  1630|vlan 191
  1633|  1631| description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
  1634|  1632|vlan 193
  1635|  1633| description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
  1636|  1634|vlan 194
  1637|  1635| description VLAN_194_POP19_TRANSP_RSSUL
  1638|  1636|vlan 200
  1639|  1637| description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
  1640|  1638|vlan 201
  1641|  1639| description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
  1642|  1640|vlan 203
  1643|  1641| description VLAN_203_POP20_S_JOAO_OLT1_CYBER
  1644|  1642|vlan 211
  1645|  1643| description VLAN_211_POP21_PREF_SAPUCAIA
  1646|  1644|vlan 213
  1647|  1645| description VLAN_213_POP21_PREF_SAPUCAIA
  1648|  1646|vlan 220
  1649|  1647| description VLAN_220_POP22_PIRATINI
  1650|  1648|vlan 250
  1651|  1649| description VLAN_250_POP25_GERENCIA
  1652|  1650|vlan 251
  1653|  1651| description VLAN_250_POP25_OLT1
  1654|  1652|vlan 253
  1655|  1653| description VLAN_253_POP25_OLT1_CYBERWEB
  1656|  1654|vlan 258
  1657|  1655| description VLAN_258_POP25_OLT1_SCHOSSLER
  1658|  1656|vlan 271
  1659|  1657| description VLAN_271_POP27_CIVIL_OLT1
  1660|  1658|vlan 273
  1661|  1659| description VLAN_273_POP27_CIVIL_OLT1
  1662|  1660|vlan 281
  1663|  1661| description VLAN_281_POP28_V_RICA_OLT1
  1664|  1662|vlan 283
  1665|  1663| description VLAN_283_POP28_V_RICA_OLT1
  1666|  1664|vlan 905
  1667|  1665| description VLAN_905_TRANS_PREF_SAPUCAIA
  1668|  1666|vlan 906
  1669|  1667| description VLAN_906_TRANS_PREF_SAPUCAIA
  1670|  1668|vlan 907
  1671|  1669| description VLAN_907_TRANS_PREF_SAPUCAIA
  1672|  1670|vlan 912
  1673|  1671| description VLAN_912_TRANS_PREF_SAPUCAIA
  1674|  1672|vlan 913
  1675|  1673| description VLAN_913_TRANS_PREF_SAPUCAIA
  1676|  1674|vlan 914
  1677|  1675| description VLAN_914_TRANS_PREF_SAPUCAIA
  1678|  1676|vlan 915
  1679|  1677| description VLAN_915_TRANS_PREF_SAPUCAIA
  1680|  1678|vlan 916
  1681|  1679| description VLAN_916_TRANS_PREF_SAPUCAIA
  1682|  1680|vlan 917
  1683|  1681| description VLAN_917_TRANS_PREF_SAPUCAIA
  1684|  1682|vlan 919
  1685|  1683| description VLAN_919_TRANS_PREF_SAPUCAIA
  1686|  1684|vlan 920
  1687|  1685| description VLAN_920_TRANS_PREF_SAPUCAIA
  1688|  1686|vlan 922
  1689|  1687| description VLAN_922_TRANS_PREF_SAPUCAIA
  1690|  1688|vlan 923
  1691|  1689| description VLAN_923_TRANS_PREF_SAPUCAIA
  1692|  1690|vlan 924
  1693|  1691| description VLAN_924_TRANS_PREF_SAPUCAIA
  1694|  1692|vlan 926
  1695|  1693| description VLAN_926_TRANS_PREF_SAPUCAIA
  1696|  1694|vlan 931
  1697|  1695| description VLAN_931_TRANS_PREF_SAPUCAIA
  1698|  1696|vlan 934
  1699|  1697| description VLAN_934_TRANS_PREF_SAPUCAIA
  1700|  1698|vlan 936
  1701|  1699| description VLAN_936_TRANS_PREF_SAPUCAIA
  1702|  1700|vlan 938
  1703|  1701| description VLAN_938_TRANS_PREF_SAPUCAIA
  1704|  1702|vlan 939
  1705|  1703| description VLAN_939_TRANS_PREF_SAPUCAIA
  1706|  1704|vlan 940
  1707|  1705| description VLAN_940_TRANS_PREF_SAPUCAIA
  1708|  1706|vlan 941
  1709|  1707| description VLAN_941_TRANS_PREF_SAPUCAIA
  1710|  1708|vlan 942
  1711|  1709| description VLAN_942_TRANS_PREF_SAPUCAIA
  1712|  1710|vlan 945
  1713|  1711| description VLAN_945_TRANS_PREF_SAPUCAIA
  1714|  1712|vlan 946
  1715|  1713| description VLAN_946_TRANS_PREF_SAPUCAIA
  1716|  1714|vlan 947
  1717|  1715| description VLAN_947_TRANS_PREF_SAPUCAIA
  1718|  1716|vlan 948
  1719|  1717| description VLAN_948_TRANS_PREF_SAPUCAIA
  1720|  1718|vlan 949
  1721|  1719| description VLAN_949_TRANS_PREF_SAPUCAIA
  1722|  1720|vlan 952
  1723|  1721| description VLAN_952_TRANS_PREF_SAPUCAIA
  1724|  1722|vlan 953
  1725|  1723| description VLAN_953_TRANS_PREF_SAPUCAIA
  1726|  1724|vlan 956
  1727|  1725| description VLAN_956_TRANS_PREF_SAPUCAIA
  1728|  1726|vlan 957
  1729|  1727| description VLAN_957_TRANS_PREF_SAPUCAIA
  1730|  1728|vlan 958
  1731|  1729| description VLAN_958_TRANS_PREF_SAPUCAIA
  1732|  1730|vlan 959
  1733|  1731| description VLAN_959_TRANSP_VERO
  1734|  1732|vlan 960
  1735|  1733| description VLAN_960_TRANS_PREF_SAPUCAIA
  1736|  1734|vlan 963
  1737|  1735| description VLAN_963_TRANS_PREF_SAPUCAIA
  1738|  1736|vlan 965
  1739|  1737| description VLAN_965_TRANS_PREF_SAPUCAIA
  1740|  1738|vlan 966
  1741|  1739| description VLAN_966_TRANS_PREF_SAPUCAIA
  1742|  1740|vlan 968
  1743|  1741| description VLAN_968_TRANS_PREF_SAPUCAIA
  1744|  1742|vlan 970
  1745|  1743| description VLAN_970_TRANS_PREF_SAPUCAIA
  1746|  1744|vlan 971
  1747|  1745| description VLAN_971_TRANS_PREF_SAPUCAIA
  1748|  1746|vlan 972
  1749|  1747| description VLAN_972_TRANS_PREF_SAPUCAIA
  1750|  1748|vlan 973
  1751|  1749| description VLAN_973_TRANS_PREF_SAPUCAIA
  1752|  1750|vlan 974
  1753|  1751| description VLAN_974_TRANSP_VERO
  1754|  1752|vlan 977
  1755|  1753| description VLAN_977_TRANS_PREF_SAPUCAIA
  1756|  1754|vlan 982
  1757|  1755| description VLAN_982_TRANS_PREF_SAPUCAIA
  1758|  1756|vlan 985
  1759|  1757| description VLAN_985_TRANSP_VERO
  1760|  1758|vlan 986
  1761|  1759| description VLAN_986_TRANS_PREF_SAPUCAIA
  1762|  1760|vlan 990
  1763|  1761| description VLAN_990_TRANS_PREF_SAPUCAIA
  1764|  1762|vlan 1001
  1765|  1763| description VLAN_1001_BGP1_CYBER_CE01
  1766|  1764|vlan 1003
  1767|  1765| description VLAN1003_BGP1_CYBER_CE03_CYBER
  1768|  1766|vlan 1100
  1769|  1767| description VLAN1100_SW1POP0_SW1POP0_MPLS1
  1770|  1768|vlan 1108
  1771|  1769| description VLAN1108_SW1POP00_SW1POP08_MPLS1
  1772|  1770|vlan 1111
  1773|  1771| description VLAN_1111_CGNAT1_CE01_OSPF
  1774|  1772|vlan 1112
  1775|  1773| description VLAN1112_SW1POP00_SW1POP12_MPLS1
  1776|  1774|vlan 1121
  1777|  1775| description VLAN_1121_SW1POP00_SW1POP21_MPLS1
  1778|  1776|vlan 1125
  1779|  1777| description VLAN_1125_SW1POP00_SW1POP25_MPLS1
  1780|  1778|vlan 1138
  1781|  1779| description VLAN_1138_VERO_CDN
  1782|  1780|vlan 1144
  1783|  1781| description VLAN_1144_SW1POP00_SW1POP44_MPLS1
  1784|  1782|vlan 1152
  1785|  1783| description VLAN_1152_SW1POP00_SW1POP52_OSPF1
  1786|  1784|vlan 1164
  1787|  1785| description VLAN_1164_LINK1_IPV4_VERO
  1788|  1786|vlan 1166
  1789|  1787| description VLAN_1166_SW1POP0_SW1POP66_OSPF
  1790|  1788|vlan 1195
  1791|  1789| description VLAN1195_SW1PO11_SW1PO95_DGTSSP
  1792|  1790|vlan 1264
  1793|  1791| description VLAN_1164_LINK1_IPV6_VERO
  1794|  1792|vlan 1295
  1795|  1793| description VLAN1295_SW1PO11_SW1PO95_DGTSSP
  1796|  1794|vlan 1395
  1797|  1795| description VLAN1395_SW1PO11_SW1PO95_DGTSSP
  1798|  1796|vlan 1914
  1799|  1797| description VLAN_1914_SEABORN_L1_BGP1_ASN273461
  1800|  1798|vlan 2311
  1801|  1799| description VLAN2311_TRANSP_VERO_POP14_L_GRANDE
  1802|  1800|vlan 2340
  1803|  1801| description VLAN2340_INFRAWEB_GERENCIA
  1804|  1802|vlan 2341
  1805|  1803| description VLAN2341_INFRAWEB_PPPOE
  1806|  1804|vlan 2733
  1807|  1805| description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
  1808|  1806|vlan 3000
  1809|  1807| description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
  1810|  1808|vlan 3005
  1811|  1809| description VLAN_3005_TRANSP_TELIUM_S_CASA
  1812|  1810|vlan 3101
  1813|  1811| description VLAN_3101_TRANP_CAMERAS_BRIGADA
  1814|  1812|vlan 3102
  1815|  1813| description VLAN_3102_TRANP_CAMERAS_BRIGADA
  1816|  1814|vlan 3105
  1817|  1815| description VLAN_3105_TRANSPORTE_SSP_POA
  1818|  1816|vlan 3106
  1819|  1817| description VLAN_3106_TRANSPORTE_SSP_POA
  1820|  1818|vlan 3107
  1821|  1819| description VLAN_3107_TRANSP_POA_MAIS_SEG
  1822|  1820|vlan 3108
  1823|  1821| description VLAN_3108_TRANSP_POA_MAIS_SEG
  1824|  1822|vlan 3111
  1825|  1823| description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
  1826|  1824|vlan 3114
  1827|  1825| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
  1828|  1826|vlan 3119
  1829|  1827| description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
  1830|  1828|vlan 3120
  1831|  1829| description VLAN_3120_BGP1_NE40_CE20_OSPF
  1832|  1830|vlan 3121
  1833|  1831| description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
  1834|  1832|vlan 3143
  1835|  1833| description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
  1836|  1834|vlan 3147
  1837|  1835| description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
  1838|  1836|vlan 3149
  1839|  1837| description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
  1840|  1838|vlan 3150
  1841|  1839| description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
  1842|  1840|vlan 3151
  1843|  1841| description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
  1844|  1842|vlan 3152
  1845|  1843| description VLAN3152_BGP1_CYBER_BGP1_BLUSTELECOM
  1846|  1844|vlan 3153
  1847|  1845| description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
  1848|  1846|vlan 3154
  1849|  1847| description VLAN_3154_CYBER_BGP1_LM_V_RICA_L1
  1850|  1848|vlan 3155
  1851|  1849| description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
  1852|  1850|vlan 3160
  1853|  1851| description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
  1854|  1852|vlan 3162
  1855|  1853| description VLAN_3162_BGP1_POP62_EQUATORIAL
  1856|  1854|vlan 3163
  1857|  1855| description VLAN3163_BGP1_CE63_VILLELA
  1858|  1856|vlan 3166
  1859|  1857| description VLAN_3166_CYBER_BGP1_WIANETSUL_L1
  1860|  1858|vlan 3167
  1861|  1859| description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
  1862|  1860|vlan 3203
  1863|  1861| description VLAN_3203_TRANSP_IXRS_BLUS
  1864|  1862|vlan 3207
  1865|  1863| description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
  1866|  1864|vlan 3208
  1867|  1865| description VLAN_3208_PNI_GGC_ASN273461
  1868|  1866|vlan 3252
  1869|  1867| description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
  1870|  1868|vlan 3256
  1871|  1869| description VLAN_3256_PPPOE_CLIENTES_TELIUM
  1872|  1870|vlan 3261
  1873|  1871| description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
  1874|  1872|vlan 3266
  1875|  1873| description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
  1876|  1874|vlan 3341
  1877|  1875| description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
  1878|  1876|vlan 3511
  1879|  1877| description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
  1880|  1878|vlan 3532
  1881|  1879| description VLAN_3532_TRANSP_CAM_CAMAQUA
  1882|  1880|vlan 3533
  1883|  1881| description VLAN_3533_TRANSP_CAM_CAMAQUA
  1884|  1882|vlan 3540
  1885|  1883| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
  1886|  1884|vlan 3541
  1887|  1885| description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
  1888|  1886|vlan 3550
  1889|  1887| description VLAN_3550_TRANSP_R_NEUTRA_LM
  1890|  1888|vlan 3560
  1891|  1889| description VLAN_3560_POWERNET_R_NEUTRA
  1892|  1890|vlan 3571
  1893|  1891| description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
  1894|  1892|vlan 3580
  1895|  1893| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
  1896|  1894|vlan 3581
  1897|  1895| description VLAN3581_RN_CYBER_NA_INFRAWEB
  1898|  1896|vlan 3592
  1899|  1897| description VLAN_3592_ALT_ADVANTA
  1900|  1898|vlan 3602
  1901|  1899| description VLAN_3602_TR_ADYL_POP14_ADVANTA
  1902|  1900|vlan 3790
  1903|  1901| description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
  1904|  1902|vlan 3791
  1905|  1903| description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
  1906|  1904|vlan 3902
  1907|  1905| description VLAN_3902_EQUINIX_CYBER_BGP1
  1908|  1906|vlan 3904
  1909|  1907| description VLAN3904_SW1POP01_SW1POP00_PNI_META
  1910|  1908|vlan 3905
  1911|  1909| description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
  1912|  1910|vlan 3906
  1913|  1911| description VLAN3906_SW1POP01_SW1POP00_PNI_META
  1914|  1912|vlan 3964
  1915|  1913| description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
  1916|  1914|vlan 4000
  1917|  1915| description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
  1918|  1916|vlan 4001
  1919|  1917| description VLAN_4001_BGP1CYBER_CGNAT1_SCHOSSLER
  1920|  1918|vlan 4012
  1921|  1919| description VLAN_4012_CGNAT1_BGP2
  1922|  1920|vlan 4094
  1923|  1921| description VLAN_4094_BLACKHOLE
  1924|  1922|#
  1925|  1923|aaa
  1926|  1924| authentication-scheme default
  1927|  1925|  authentication-mode local
  1928|  1926| authentication-scheme radius
  1929|  1927|  authentication-mode radius
  1930|  1928| authorization-scheme default
  1931|  1929|  authorization-mode local
  1932|  1930| accounting-scheme default
  1933|  1931|  accounting-mode none
  1934|  1932| local-aaa-user password policy administrator
  1935|  1933|  password history record number 0
  1936|  1934|  password expire 0
  1937|  1935| domain default
  1938|  1936|  authentication-scheme radius
  1939|  1937|  accounting-scheme default
  1940|  1938|  radius-server default
  1941|  1939| domain default_admin
  1942|  1940|  authentication-scheme default
  1943|  1941|  accounting-scheme default
  1944|  1942| local-user admin password irreversible-cipher $1c$q6&9:g>RA-$|\C)9;1bq4^uT098E$vO)BE[PjFpQ$DZWU=%(;o>$
  1945|  1943| local-user admin privilege level 15
  1946|  1944| local-user admin service-type ssh http
  1947|  1945| local-user future password irreversible-cipher $1c$Y5}lDwN=E:$!DRV>(;)M~pr*6ESw7~@vzIg4OQmiWIP|2TP!*u6$
  1948|  1946| local-user future privilege level 15
  1949|  1947| local-user future service-type ssh
  1950|  1948| local-user zandona password irreversible-cipher $1c$Ln|t*R>'-8$p/SsDlFwfE)KQH>Q$5VR-F7/00i=:(QGD&CU(dhR$
  1951|  1949| local-user zandona privilege level 15
  1952|  1950| local-user zandona service-type telnet ssh http
  1953|  1951|#
  1954|  1952|ntp-service server disable
  1955|  1953|ntp-service ipv6 server disable
  1956|  1954|ntp-service unicast-server 200.189.40.8
  1957|  1955|ntp-service unicast-server 200.160.0.8
  1958|  1956|#
  1959|  1957|interface Vlanif2
  1960|  1958| description VLAN_2_GERENCIA
  1961|  1959| ip address 10.244.0.98 255.255.255.252
  1962|  1960|#
  1963|  1961|interface Vlanif11
  1964|  1962| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1965|  1963| l2 binding vsi VSI_11_CY_POP00_POP02_SAP_OLT1
  1966|  1964|#
  1967|  1965|interface Vlanif12
  1968|  1966| description VLAN_12_POP0_SAP_OLT1
  1969|  1967| l2 binding vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1
  1970|  1968|#
  1971|  1969|interface Vlanif13
  1972|  1970| description VLAN_13_POP00_ARQU_OLT1_CYBER
  1973|  1971| l2 binding vsi VSI_13_CY_POP00_POP02_SAP_OLT1
  1974|  1972|#
  1975|  1973|interface Vlanif16
  1976|  1974| description VLAN16_SERVIDORES_IP_PUBLICO
  1977|  1975| l2 binding vsi VSI_16_SERVIDORES_IP_PUBLICOS
  1978|  1976|#
  1979|  1977|interface Vlanif17
  1980|  1978| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1981|  1979| l2 binding vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV
  1982|  1980|#
  1983|  1981|interface Vlanif18
  1984|  1982| description VALN_18_POP0_SAP_RAD
  1985|  1983| l2 binding vsi VSI_18_CY_POP00_POP02_SAP_RADI
  1986|  1984|#
  1987|  1985|interface Vlanif21
  1988|  1986| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1989|  1987| l2 binding vsi VSI_21_CY_POP00_POP02_POA_OLT1
  1990|  1988|#
  1991|  1989|interface Vlanif23
  1992|  1990| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1993|  1991| l2 binding vsi VSI_23_CY_POP00_POP02_POA_OLT1
  1994|  1992|#
  1995|  1993|interface Vlanif30
  1996|  1994| description VLAN_30_POP03_M_FOLRES_MGNT
  1997|  1995| l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
  1998|  1996|#
  1999|  1997|interface Vlanif31
  2000|  1998| description VLAN_31_POP03_M_FLORES_OLT1
  2001|
```

## 🗒️ Observações
- {{notes}}
