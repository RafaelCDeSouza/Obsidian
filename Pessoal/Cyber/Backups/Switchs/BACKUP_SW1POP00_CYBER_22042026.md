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
     9|     7|      The current login time is 2026-04-22 11:13:23-03:00.
    10|     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-04-22 11:07:17-03:00  Password will expire in: -
    11|     9|
    12|    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    13|    11|<SW1POP00_CYBER>displ
    14|    12|<SW1POP00_CYBER>display curr
    15|    13|<SW1POP00_CYBER>display current-configuration
    16|    14|!Software Version V200R023C00SPC500
    17|    15|#
    18|    16|sysname SW1POP00_CYBER
    19|    17|#
    20|    18|vlan batch 2 4 10 to 13 16 to 19 21 23 30 to 31 39 to 41 50 to 51 53
    21|    19|vlan batch 60 to 61 70 to 71 73 80 to 81 83 90 to 91 100 to 101 110 to 111 113 120 to 121
    22|    20|vlan batch 130 to 131 133 140 to 141 150 to 151 160 to 161 169 171 173 181 190 to 191
    23|    21|vlan batch 193 to 194 200 to 201 203 211 213 220 230 to 231 233 250 to 251 253
    24|    22|vlan batch 258 271 273 281 283 905 to 907 912 to 917 919 to 920 922 to 924 926
    25|    23|vlan batch 931 934 936 938 to 942 945 to 949 952 to 953 956 to 960 963 965 to 966 968
    26|    24|vlan batch 970 to 974 977 982 985 to 986 990 1001 1003 1100 1108 1111 to 1112
    27|    25|vlan batch 1121 1125 1138 1144 1152 1164 1166 1195 1264 1295
    28|    26|vlan batch 1395 1914 2311 2340 to 2341 2733 3000 3005 3101 to 3102 3105 to 3108 3111
    29|    27|vlan batch 3114 3119 to 3121 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3167 3203 3207 to 3208
    30|    28|vlan batch 3252 3256 3261 3266 3341 3511 3532 to 3533 3540 to 3541 3550 3560
    31|    29|vlan batch 3571 3580 to 3581 3592 3602 3790 to 3791 3902 3904 to 3906 3964 4000 to 4001 4012
    32|    30|vlan batch 4094
    33|    31|#
    34|    32|authentication-profile name default_authen_profile
    35|    33| authentication ipv6-control enable
    36|    34|authentication-profile name dot1x_authen_profile
    37|    35| authentication ipv6-control enable
    38|    36|authentication-profile name dot1xmac_authen_profile
    39|    37| authentication ipv6-control enable
    40|    38|authentication-profile name mac_authen_profile
    41|    39| authentication ipv6-control enable
    42|    40|authentication-profile name multi_authen_profile
    43|    41| authentication ipv6-control enable
    44|    42|authentication-profile name portal_authen_profile
    45|    43| authentication ipv6-control enable
    46|    44|#
    47|    45|set save-configuration delay 1
    48|    46|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    49|    47|#
    50|    48|http server-source all-interface
    51|    49|#
    52|    50|clock timezone Brasilia minus 03:00:00
    53|    51|#
    54|    52|ddr isolation disable
    55|    53|#
    56|    54|undo mac-address learning self-healing enable
    57|    55|#
    58|    56|capwap unknown-unicast cir 0
    59|    57|#
    60|    58|diffserv domain default
    61|    59|#
    62|    60|radius-server template default
    63|    61|#
    64|    62|bfd
    65|    63|#
    66|    64|mpls lsr-id 10.244.189.0
    67|    65|mpls
    68|    66| mpls te
    69|    67| mpls rsvp-te
    70|    68| mpls te cspf
    71|    69|#
    72|    70|mpls l2vpn
    73|    71|#
    74|    72|vsi VSI_21_CY_POP00_POP02_POA_OLT1 static
    75|    73| pwsignal ldp
    76|    74|  vsi-id 21
    77|    75|  peer 10.244.188.2
    78|    76|  traffic-statistics enable
    79|    77| mtu 9000
    80|    78| encapsulation ethernet
    81|    79|#
    82|    80|vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1 static
    83|    81| pwsignal ldp
    84|    82|  vsi-id 41
    85|    83|  peer 10.244.188.19
    86|    84|  traffic-statistics enable
    87|    85| mtu 9000
    88|    86| encapsulation ethernet
    89|    87|#
    90|    88|vsi VSI_3120_POP00_POP20_BGP1_CE20 static
    91|    89| pwsignal ldp
    92|    90|  vsi-id 3120
    93|    91|  peer 10.244.188.20
    94|    92| mtu 9000
    95|    93| encapsulation ethernet
    96|    94|#
    97|    95|vsi VSI_161_CY_POP0-2_POP16_CA_OLT1 static
    98|    96| pwsignal ldp
    99|    97|  vsi-id 161
   100|    98|  peer 10.244.189.3
   101|    99|  traffic-statistics enable
   102|   100| mtu 9000
   103|   101| encapsulation ethernet
   104|   102|#
   105|   103|vsi VSI_169_CY_POP0-2_POP16_CA_RADI static
   106|   104| pwsignal ldp
   107|   105|  vsi-id 169
   108|   106|  peer 10.244.189.3
   109|   107|  traffic-statistics enable
   110|   108| mtu 9000
   111|   109| encapsulation ethernet
   112|   110|#
   113|   111|vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1 static
   114|   112| pwsignal ldp
   115|   113|  vsi-id 31
   116|   114|  peer 10.244.189.3
   117|   115|  traffic-statistics enable
   118|   116| mtu 9000
   119|   117| encapsulation ethernet
   120|   118|#
   121|   119|vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
   122|   120| pwsignal ldp
   123|   121|  vsi-id 61
   124|   122|  peer 10.244.188.7
   125|   123|  traffic-statistics enable
   126|   124| mtu 9000
   127|   125| encapsulation ethernet
   128|   126|#
   129|   127|vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1 static
   130|   128| pwsignal ldp
   131|   129|  vsi-id 91
   132|   130|  peer 10.244.189.3
   133|   131|  traffic-statistics enable
   134|   132| mtu 9000
   135|   133| encapsulation ethernet
   136|   134|#
   137|   135|vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1 static
   138|   136| pwsignal ldp
   139|   137|  vsi-id 101
   140|   138|  peer 10.244.189.10
   141|   139|  traffic-statistics enable
   142|   140| mtu 9000
   143|   141| encapsulation ethernet
   144|   142|#
   145|   143|vsi VSI_160_CY_POP0-2_POP16_CA_MGNT static
   146|   144| pwsignal ldp
   147|   145|  vsi-id 160
   148|   146|  peer 10.244.189.3
   149|   147|  traffic-statistics enable
   150|   148| mtu 9000
   151|   149| encapsulation ethernet
   152|   150|#
   153|   151|vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT static
   154|   152| pwsignal ldp
   155|   153|  vsi-id 90
   156|   154|  peer 10.244.189.3
   157|   155|  traffic-statistics enable
   158|   156| mtu 9000
   159|   157| encapsulation ethernet
   160|   158|#
   161|   159|vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
   162|   160| pwsignal ldp
   163|   161|  vsi-id 60
   164|   162|  peer 10.244.188.7
   165|   163|  traffic-statistics enable
   166|   164| mtu 9000
   167|   165| encapsulation ethernet
   168|   166|#
   169|   167|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   170|   168| pwsignal ldp
   171|   169|  vsi-id 30
   172|   170|  peer 10.244.189.3
   173|   171|  traffic-statistics enable
   174|   172| mtu 9000
   175|   173| encapsulation ethernet
   176|   174|#
   177|   175|vsi VSI_71_CY_POP0-2_POP07_STE_OLT1 static
   178|   176| pwsignal ldp
   179|   177|  vsi-id 71
   180|   178|  peer 10.244.188.7
   181|   179|  traffic-statistics enable
   182|   180| mtu 9000
   183|   181| encapsulation ethernet
   184|   182|#
   185|   183|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
   186|   184| pwsignal ldp
   187|   185|  vsi-id 121
   188|   186|  peer 10.244.189.12
   189|   187|  traffic-statistics enable
   190|   188| mtu 9000
   191|   189| encapsulation ethernet
   192|   190|#
   193|   191|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
   194|   192| pwsignal ldp
   195|   193|  vsi-id 120
   196|   194|  peer 10.244.189.12
   197|   195|  traffic-statistics enable
   198|   196| mtu 9000
   199|   197| encapsulation ethernet
   200|   198|#
   201|   199|vsi VSI_70_CY_POP0-2_POP07_STE_MGNT static
   202|   200| pwsignal ldp
   203|   201|  vsi-id 70
   204|   202|  peer 10.244.188.7
   205|   203|  traffic-statistics enable
   206|   204| mtu 9000
   207|   205| encapsulation ethernet
   208|   206|#
   209|   207|vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT static
   210|   208| pwsignal ldp
   211|   209|  vsi-id 100
   212|   210|  peer 10.244.189.10
   213|   211|  traffic-statistics enable
   214|   212| mtu 9000
   215|   213| encapsulation ethernet
   216|   214|#
   217|   215|vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
   218|   216| pwsignal ldp
   219|   217|  vsi-id 130
   220|   218|  peer 10.244.188.2
   221|   219|  peer 10.244.189.65
   222|   220|  traffic-statistics enable
   223|   221| mtu 9000
   224|   222| encapsulation ethernet
   225|   223|#
   226|   224|vsi VSI_81_POP0-2_POP08_FREITA_OLT1 static
   227|   225| pwsignal ldp
   228|   226|  vsi-id 81
   229|   227|  peer 10.244.188.8
   230|   228|  traffic-statistics enable
   231|   229| mtu 9000
   232|   230| encapsulation ethernet
   233|   231|#
   234|   232|vsi VSI_3153_CY_POP00_PROV_LM_CIVIL static
   235|   233| pwsignal ldp
   236|   234|  vsi-id 3153
   237|   235|  peer 10.244.188.27
   238|   236|  peer 10.244.188.28
   239|   237|  traffic-statistics enable
   240|   238| mtu 9000
   241|   239| encapsulation ethernet
   242|   240|#
   243|   241|vsi VSI_3560_TRANS_PPPOE_POWERNET static
   244|   242| pwsignal ldp
   245|   243|  vsi-id 3560
   246|   244|  peer 10.244.188.125
   247|   245|  peer 10.244.188.27
   248|   246| mtu 9000
   249|   247| encapsulation ethernet
   250|   248|#
   251|   249|vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
   252|   250| pwsignal ldp
   253|   251|  vsi-id 23
   254|   252|  peer 10.244.188.2
   255|   253|  traffic-statistics enable
   256|   254| mtu 9000
   257|   255| encapsulation ethernet
   258|   256|#
   259|   257|vsi VSI_253_CY_POP0-2_POP25_PO_OLT1 static
   260|   258| pwsignal ldp
   261|   259|  vsi-id 253
   262|   260|  peer 10.244.188.125
   263|   261|  traffic-statistics enable
   264|   262| mtu 9000
   265|   263| encapsulation ethernet
   266|   264|#
   267|   265|vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
   268|   266| pwsignal ldp
   269|   267|  vsi-id 258
   270|   268|  peer 10.244.188.125
   271|   269|  traffic-statistics enable
   272|   270| mtu 9000
   273|   271| encapsulation ethernet
   274|   272|#
   275|   273|vsi VSI_110_POP00_02_POP11_VI_MGNT static
   276|   274| pwsignal ldp
   277|   275|  vsi-id 110
   278|   276|  peer 10.244.189.11
   279|   277|  traffic-statistics enable
   280|   278| mtu 9000
   281|   279| encapsulation ethernet
   282|   280|#
   283|   281|vsi VSI_111_POP00_02_POP11_VI_OLT1 static
   284|   282| pwsignal ldp
   285|   283|  vsi-id 111
   286|   284|  peer 10.244.188.11
   287|   285|  peer 10.244.188.11 pw POP00_POP11_ANT
   288|   286|  peer 10.244.189.11
   289|   287|  traffic-statistics enable
   290|   288| mtu 9000
   291|   289| encapsulation ethernet
   292|   290|#
   293|   291|vsi VSI_971_POP21_POP00_TR_PREF_SAP static
   294|   292| pwsignal ldp
   295|   293|  vsi-id 971
   296|   294|  peer 10.244.188.21
   297|   295| mtu 9000
   298|   296| encapsulation ethernet
   299|   297|#
   300|   298|vsi VSI_3155_CY_POP00_PROV_LM_V_MAR static
   301|   299| pwsignal ldp
   302|   300|  vsi-id 3155
   303|   301|  peer 10.244.188.28
   304|   302|  peer 10.244.189.28
   305|   303| mtu 9000
   306|   304| encapsulation ethernet
   307|   305|#
   308|   306|vsi VSI_3154_CY_POP00_PROV_LM_V_RIC static
   309|   307| pwsignal ldp
   310|   308|  vsi-id 3154
   311|   309|  peer 10.244.188.28
   312|   310|  peer 10.244.189.28
   313|   311| mtu 9000
   314|   312| encapsulation ethernet
   315|   313|#
   316|   314|vsi VSI3906_PNI_META_POP00_CYBER static
   317|   315| pwsignal ldp
   318|   316|  vsi-id 3906
   319|   317|  peer 10.244.188.1
   320|   318| mtu 8000
   321|   319| encapsulation ethernet
   322|   320|#
   323|   321|vsi VSI_3160_CY_POP00_PROV_NIC_TELE static
   324|   322| pwsignal ldp
   325|   323|  vsi-id 3160
   326|   324|  peer 10.244.188.15
   327|   325|  peer 10.244.189.15
   328|   326| mtu 9000
   329|   327| encapsulation ethernet
   330|   328|#
   331|   329|vsi VSI_113_POP00_02_POP11_VI_OLT1 static
   332|   330| pwsignal ldp
   333|   331|  vsi-id 113
   334|   332|  peer 10.244.188.11
   335|   333|  peer 10.244.189.11
   336|   334|  traffic-statistics enable
   337|   335| mtu 9000
   338|   336| encapsulation ethernet
   339|   337|#
   340|   338|vsi VSI_150_CY_POP00_POP15_EXP_MGNT static
   341|   339| pwsignal ldp
   342|   340|  vsi-id 150
   343|   341|  peer 10.244.189.15
   344|   342|  traffic-statistics enable
   345|   343| mtu 9000
   346|   344| encapsulation ethernet
   347|   345|#
   348|   346|vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
   349|   347| pwsignal ldp
   350|   348|  vsi-id 3571
   351|   349|  peer 10.244.188.20
   352|   350|  traffic-statistics enable
   353|   351| mtu 9000
   354|   352| encapsulation ethernet
   355|   353|#
   356|   354|vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
   357|   355| pwsignal ldp
   358|   356|  vsi-id 151
   359|   357|  peer 10.244.188.15
   360|   358|  peer 10.244.189.15
   361|   359|  traffic-statistics enable
   362|   360| mtu 9000
   363|   361| encapsulation ethernet
   364|   362|#
   365|   363|vsi VSI_3143_CY_POP00_PROV_AS52917 static
   366|   364| pwsignal ldp
   367|   365|  vsi-id 3143
   368|   366|  peer 10.244.188.43
   369|   367| mtu 9000
   370|   368| encapsulation ethernet
   371|   369|#
   372|   370|vsi VSI_50_POP0-2_POP05_M_RIN_MGNT static
   373|   371| pwsignal ldp
   374|   372|  vsi-id 50
   375|   373|  peer 10.244.188.5
   376|   374|  traffic-statistics enable
   377|   375| mtu 9000
   378|   376| encapsulation ethernet
   379|   377|#
   380|   378|vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
   381|   379| pwsignal ldp
   382|   380|  vsi-id 51
   383|   381|  peer 10.244.188.5
   384|   382|  traffic-statistics enable
   385|   383| mtu 9000
   386|   384| encapsulation ethernet
   387|   385|#
   388|   386|vsi VSI_3150_POP00_PROV_VPM_MAIOLI static
   389|   387| pwsignal ldp
   390|   388|  vsi-id 3150
   391|   389|  peer 10.244.188.50
   392|   390|  traffic-statistics enable
   393|   391| mtu 9000
   394|   392| encapsulation ethernet
   395|   393|#
   396|   394|vsi VSI_3162_POP00_PROV_EQUATORIAL static
   397|   395| pwsignal ldp
   398|   396|  vsi-id 3162
   399|   397|  peer 10.244.188.62
   400|   398|  traffic-statistics enable
   401|   399| mtu 9000
   402|   400| encapsulation ethernet
   403|   401|#
   404|   402|vsi VSI_16_SERVIDORES_IP_PUBLICOS static
   405|   403| pwsignal ldp
   406|   404|  vsi-id 16
   407|   405|  peer 10.244.188.20
   408|   406| mtu 9000
   409|   407| encapsulation ethernet
   410|   408|#
   411|   409|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
   412|   410| pwsignal ldp
   413|   411|  vsi-id 3581
   414|   412|  peer 10.244.188.59
   415|   413| mtu 9000
   416|   414| encapsulation ethernet
   417|   415|#
   418|   416|vsi VSI_3261_POP00-02_PROV_VALESAT static
   419|   417| pwsignal ldp
   420|   418|  vsi-id 3261
   421|   419|  peer 10.244.188.17
   422|   420|  traffic-statistics enable
   423|   421| mtu 9000
   424|   422| encapsulation ethernet
   425|   423|#
   426|   424|vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
   427|   425| pwsignal ldp
   428|   426|  vsi-id 4000
   429|   427|  peer 10.244.188.2
   430|   428|  traffic-statistics enable
   431|   429| mtu 9000
   432|   430| encapsulation ethernet
   433|   431|#
   434|   432|vsi VSI_3252_POP00-02_PROV_BLUSTELE static
   435|   433| pwsignal ldp
   436|   434|  vsi-id 3252
   437|   435|  peer 10.244.188.2
   438|   436|  traffic-statistics enable
   439|   437| mtu 9000
   440|   438| encapsulation ethernet
   441|   439|#
   442|   440|vsi VSI_3266_POP00-02_PROV_WIANETSU static
   443|   441| pwsignal ldp
   444|   442|  vsi-id 3266
   445|   443|  peer 10.244.188.2
   446|   444|  traffic-statistics enable
   447|   445| mtu 9000
   448|   446| encapsulation ethernet
   449|   447|#
   450|   448|vsi VSI_3203_POP04_POP00_IXRS_BLUS static
   451|   449| pwsignal ldp
   452|   450|  vsi-id 3203
   453|   451|  peer 10.244.188.4
   454|   452|  traffic-statistics enable
   455|   453| mtu 8000
   456|   454| encapsulation ethernet
   457|   455|#
   458|   456|vsi VSI_3207_POP00_POP04_IXRS_CYBER static
   459|   457| pwsignal ldp
   460|   458|  vsi-id 3207
   461|   459|  peer 10.244.188.4
   462|   460|  traffic-statistics enable
   463|   461| mtu 8000
   464|   462| encapsulation ethernet
   465|   463|#
   466|   464|vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT static
   467|   465| pwsignal ldp
   468|   466|  vsi-id 80
   469|   467|  peer 10.244.188.8
   470|   468|  traffic-statistics enable
   471|   469| mtu 9000
   472|   470| encapsulation ethernet
   473|   471|#
   474|   472|vsi VSI_1003_BGP1_CYBER_CE03_CYBER static
   475|   473| pwsignal ldp
   476|   474|  vsi-id 1003
   477|   475|  peer 10.244.188.20
   478|   476|  traffic-statistics enable
   479|   477| mtu 9000
   480|   478| encapsulation ethernet
   481|   479|#
   482|   480|vsi VSI190_CY_POP0-2_POP19_HIP_MGNT static
   483|   481| pwsignal ldp
   484|   482|  vsi-id 190
   485|   483|  peer 10.244.188.19
   486|   484|  traffic-statistics enable
   487|   485| mtu 9000
   488|   486| encapsulation ethernet
   489|   487|#
   490|   488|vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4 static
   491|   489| pwsignal ldp
   492|   490|  vsi-id 3790
   493|   491|  peer 10.244.188.1
   494|   492|  traffic-statistics enable
   495|   493| mtu 8000
   496|   494| encapsulation ethernet
   497|   495|#
   498|   496|vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6 static
   499|   497| pwsignal ldp
   500|   498|  vsi-id 3791
   501|   499|  peer 10.244.188.1
   502|   500|  traffic-statistics enable
   503|   501| mtu 8000
   504|   502| encapsulation ethernet
   505|   503|#
   506|   504|vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
   507|   505| pwsignal ldp
   508|   506|  vsi-id 131
   509|   507|  peer 10.244.188.13
   510|   508|  traffic-statistics enable
   511|   509| mtu 9000
   512|   510| encapsulation ethernet
   513|   511|#
   514|   512|vsi VSI_3005_TRANSP_TELIU_STA_CASA static
   515|   513| pwsignal ldp
   516|   514|  vsi-id 3005
   517|   515|  peer 10.244.188.2
   518|   516|  traffic-statistics enable
   519|   517| mtu 9000
   520|   518| encapsulation ethernet
   521|   519|#
   522|   520|vsi VSI3904_PNI_META_POP00_CYBER static
   523|   521| pwsignal ldp
   524|   522|  vsi-id 3904
   525|   523|  peer 10.244.188.1
   526|   524| mtu 8000
   527|   525| encapsulation ethernet
   528|   526|#
   529|   527|vsi VSI_3000_CYB_POP00-20_BGP1_BGP1 static
   530|   528| pwsignal ldp
   531|   529|  vsi-id 3000
   532|   530|  peer 10.244.188.20
   533|   531| mtu 9000
   534|   532| encapsulation ethernet
   535|   533|#
   536|   534|vsi VSI_959_POP00_POP08_TRANSP_VERO static
   537|   535| pwsignal ldp
   538|   536|  vsi-id 959
   539|   537|  peer 10.244.188.8
   540|   538|  traffic-statistics enable
   541|   539| mtu 9000
   542|   540| encapsulation ethernet
   543|   541|#
   544|   542|vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA static
   545|   543| pwsignal ldp
   546|   544|  vsi-id 3532
   547|   545|  peer 10.244.188.21
   548|   546| mtu 9000
   549|   547| encapsulation ethernet
   550|   548|#
   551|   549|vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA static
   552|   550| pwsignal ldp
   553|   551|  vsi-id 3533
   554|   552|  peer 10.244.188.21
   555|   553| mtu 9000
   556|   554| encapsulation ethernet
   557|   555|#
   558|   556|vsi VSI_39_POP0-02_POP03_M_FLO_RADI static
   559|   557| pwsignal ldp
   560|   558|  vsi-id 39
   561|   559|  peer 10.244.189.3
   562|   560| mtu 9000
   563|   561| encapsulation ethernet
   564|   562|#
   565|   563|vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
   566|   564| pwsignal ldp
   567|   565|  vsi-id 193
   568|   566|  peer 10.244.188.19
   569|   567|  traffic-statistics enable
   570|   568| mtu 9000
   571|   569| encapsulation ethernet
   572|   570|#
   573|   571|vsi VSI_3167_POP00_PROV_LUCFIBRA_L1 static
   574|   572| pwsignal ldp
   575|   573|  vsi-id 3167
   576|   574|  peer 10.244.188.67
   577|   575| mtu 9000
   578|   576| encapsulation ethernet
   579|   577|#
   580|   578|vsi VSI_271_SC_POP0-2_POP27_CI_OLT1 static
   581|   579| pwsignal ldp
   582|   580|  vsi-id 271
   583|   581|  peer 10.244.188.27
   584|   582| mtu 9000
   585|   583| encapsulation ethernet
   586|   584|#
   587|   585|vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
   588|   586| pwsignal ldp
   589|   587|  vsi-id 273
   590|   588|  peer 10.244.188.27
   591|   589| mtu 9000
   592|   590| encapsulation ethernet
   593|   591|#
   594|   592|vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
   595|   593| pwsignal ldp
   596|   594|  vsi-id 11
   597|   595|  peer 10.244.188.2
   598|   596|  traffic-statistics enable
   599|   597| mtu 9000
   600|   598| encapsulation ethernet
   601|   599|#
   602|   600|vsi VSI_3902_EQUIN_POP00_CYBER_BGP1 static
   603|   601| pwsignal ldp
   604|   602|  vsi-id 3902
   605|   603|  peer 10.244.188.1
   606|   604|  traffic-statistics enable
   607|   605| mtu 8000
   608|   606| encapsulation ethernet
   609|   607|#
   610|   608|vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
   611|   609| pwsignal ldp
   612|   610|  vsi-id 12
   613|   611|  peer 10.244.188.2
   614|   612|  traffic-statistics enable
   615|   613| mtu 9000
   616|   614| encapsulation ethernet
   617|   615|#
   618|   616|vsi VSI_3107_POP00_POP02_TR_POA_SEG static
   619|   617| pwsignal ldp
   620|   618|  vsi-id 3107
   621|   619|  peer 10.244.188.2
   622|   620|  peer 10.244.188.125
   623|   621|  peer 10.244.188.19
   624|   622|  peer 10.244.188.17
   625|   623|  peer 10.244.189.65
   626|   624|  peer 10.244.188.20
   627|   625|  peer 10.244.188.21
   628|   626|  peer 10.244.189.11
   629|   627|  peer 10.244.188.13
   630|   628|  traffic-statistics enable
   631|   629| mtu 9000
   632|   630| encapsulation ethernet
   633|   631|#
   634|   632|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
   635|   633| pwsignal ldp
   636|   634|  vsi-id 3114
   637|   635|  peer 10.244.189.14
   638|   636|  traffic-statistics enable
   639|   637| mtu 9000
   640|   638| encapsulation ethernet
   641|   639|#
   642|   640|vsi VSI_3101_POP00_TRANS_CAM_SAPUCA static
   643|   641| pwsignal ldp
   644|   642|  vsi-id 3101
   645|   643|  peer 10.244.188.8
   646|   644|  peer 10.244.188.125
   647|   645|  peer 10.244.188.15
   648|   646|  peer 10.244.188.5
   649|   647|  peer 10.244.188.22
   650|   648|  traffic-statistics enable
   651|   649| mtu 9000
   652|   650| encapsulation ethernet
   653|   651|#
   654|   652|vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
   655|   653| pwsignal ldp
   656|   654|  vsi-id 3105
   657|   655|  peer 10.244.188.2
   658|   656|  peer 10.244.188.19
   659|   657|  peer 10.244.188.4
   660|   658|  peer 10.244.188.17
   661|   659|  peer 10.244.188.125
   662|   660|  peer 10.244.189.65
   663|   661|  peer 10.244.188.20
   664|   662|  peer 10.244.188.21
   665|   663|  peer 10.244.189.11
   666|   664|  traffic-statistics enable
   667|   665| mtu 9000
   668|   666| encapsulation ethernet
   669|   667|#
   670|   668|vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
   671|   669| pwsignal ldp
   672|   670|  vsi-id 3106
   673|   671|  peer 10.244.188.2
   674|   672|  peer 10.244.188.20
   675|   673|  peer 10.244.189.11
   676|   674|  traffic-statistics enable
   677|   675| mtu 9000
   678|   676| encapsulation ethernet
   679|   677|#
   680|   678|vsi VSI_3102_POP00_TRANS_CAM_SAPUCA static
   681|   679| pwsignal ldp
   682|   680|  vsi-id 3102
   683|   681|  peer 10.244.188.125
   684|   682|  peer 10.244.188.21
   685|   683|  peer 10.244.188.22
   686|   684|  traffic-statistics enable
   687|   685| mtu 9000
   688|   686| encapsulation ethernet
   689|   687|#
   690|   688|vsi VSI3511_POP12_TR_FENIX_CYBER_RN static
   691|   689| pwsignal ldp
   692|   690|  vsi-id 3511
   693|   691|  peer 10.244.189.12
   694|   692|  traffic-statistics enable
   695|   693| mtu 9000
   696|   694| encapsulation ethernet
   697|   695|#
   698|   696|vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
   699|   697| pwsignal ldp
   700|   698|  vsi-id 3341
   701|   699|  peer 10.244.188.17
   702|   700|  peer 10.244.188.62
   703|   701|  peer 10.244.188.67
   704|   702|  peer 10.244.188.19
   705|   703|  peer 10.244.188.2
   706|   704|  peer 10.244.189.11
   707|   705|  peer 10.244.188.21
   708|   706|  peer 10.244.188.44
   709|   707|  traffic-statistics enable
   710|   708| mtu 9000
   711|   709| encapsulation ethernet
   712|   710|#
   713|   711|vsi VSI_3256_TRANSP_TELIU_DEDICADOS static
   714|   712| pwsignal ldp
   715|   713|  vsi-id 3256
   716|   714|  peer 10.244.188.2
   717|   715|  traffic-statistics enable
   718|   716| mtu 9000
   719|   717| encapsulation ethernet
   720|   718|#
   721|   719|vsi VSI_3163_POP00-02_POP63_VILLELA static
   722|   720| pwsignal ldp
   723|   721|  vsi-id 3163
   724|   722|  peer 10.244.188.19
   725|   723|  traffic-statistics enable
   726|   724| mtu 9000
   727|   725| encapsulation ethernet
   728|   726|#
   729|   727|vsi VSI_3149_CY_POP00_PROV_AS270998 static
   730|   728| pwsignal ldp
   731|   729|  vsi-id 3149
   732|   730|  peer 10.244.188.49
   733|   731|  traffic-statistics enable
   734|   732| mtu 9000
   735|   733| encapsulation ethernet
   736|   734|#
   737|   735|vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
   738|   736| pwsignal ldp
   739|   737|  vsi-id 17
   740|   738|  peer 10.244.188.2
   741|   739|  traffic-statistics enable
   742|   740| mtu 9000
   743|   741| encapsulation ethernet
   744|   742|#
   745|   743|vsi VSI_3108_POP00_POP02_TR_POA_SEG static
   746|   744| pwsignal ldp
   747|   745|  vsi-id 3108
   748|   746|  peer 10.244.188.2
   749|   747|  peer 10.244.188.18
   750|   748|  traffic-statistics enable
   751|   749| mtu 9000
   752|   750| encapsulation ethernet
   753|   751|#
   754|   752|vsi VSI_181_POP0-2_POP18_CEIC_OLT1 static
   755|   753| pwsignal ldp
   756|   754|  vsi-id 181
   757|   755|  peer 10.244.188.18
   758|   756|  traffic-statistics enable
   759|   757| mtu 9000
   760|   758| encapsulation ethernet
   761|   759|#
   762|   760|vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT static
   763|   761| pwsignal ldp
   764|   762|  vsi-id 40
   765|   763|  peer 10.244.188.19
   766|   764|  traffic-statistics enable
   767|   765| mtu 9000
   768|   766| encapsulation ethernet
   769|   767|#
   770|   768|vsi VSI191_CY_POP0-2_POP19_HIP_OLT1 static
   771|   769| pwsignal ldp
   772|   770|  vsi-id 191
   773|   771|  peer 10.244.188.19
   774|   772|  traffic-statistics enable
   775|   773| mtu 9000
   776|   774| encapsulation ethernet
   777|   775|#
   778|   776|vsi VSI_140_POP0-2_POP14_LGRAN_OLT1 static
   779|   777| description VLAN_140_POP14_OLT1
   780|   778| pwsignal ldp
   781|   779|  vsi-id 140
   782|   780|  peer 10.244.189.14
   783|   781|  traffic-statistics enable
   784|   782| mtu 9000
   785|   783| encapsulation ethernet
   786|   784|#
   787|   785|vsi VSI194_POP0-2_POP19_HIPIC_RSSUL static
   788|   786| pwsignal ldp
   789|   787|  vsi-id 194
   790|   788|  peer 10.244.188.19
   791|   789|  traffic-statistics enable
   792|   790| mtu 9000
   793|   791| encapsulation ethernet
   794|   792|#
   795|   793|vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
   796|   794| pwsignal ldp
   797|   795|  vsi-id 171
   798|   796|  peer 10.244.188.17
   799|   797|  traffic-statistics enable
   800|   798| mtu 9000
   801|   799| encapsulation ethernet
   802|   800|#
   803|   801|vsi VSI173_CY_POP0-2_POP17_ELE_OLT1 static
   804|   802| pwsignal ldp
   805|   803|  vsi-id 173
   806|   804|  peer 10.244.188.17
   807|   805|  traffic-statistics enable
   808|   806| mtu 9000
   809|   807| encapsulation ethernet
   810|   808|#
   811|   809|vsi VSI_13_CY_POP00_POP02_SAP_OLT1 static
   812|   810| pwsignal ldp
   813|   811|  vsi-id 13
   814|   812|  peer 10.244.188.2
   815|   813|  peer 10.244.188.49
   816|   814|  traffic-statistics enable
   817|   815| mtu 9000
   818|   816| encapsulation ethernet
   819|   817|#
   820|   818|vsi VSI_281_SC_POP0-2_POP28_VR_OLT1 static
   821|   819| pwsignal ldp
   822|   820|  vsi-id 281
   823|   821|  peer 10.244.189.28
   824|   822| mtu 9000
   825|   823| encapsulation ethernet
   826|   824|#
   827|   825|vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
   828|   826| pwsignal ldp
   829|   827|  vsi-id 141
   830|   828|  peer 10.244.189.14
   831|   829|  traffic-statistics enable
   832|   830| mtu 9000
   833|   831| encapsulation ethernet
   834|   832|#
   835|   833|vsi VSI_18_CY_POP00_POP02_SAP_RADI static
   836|   834| pwsignal ldp
   837|   835|  vsi-id 18
   838|   836|  peer 10.244.188.2
   839|   837|  traffic-statistics enable
   840|   838| mtu 9000
   841|   839| encapsulation ethernet
   842|   840|#
   843|   841|vsi VSI3119_POP00_TRAN_PROV_NEGETTI static
   844|   842| pwsignal ldp
   845|   843|  vsi-id 3119
   846|   844|  peer 10.244.188.27
   847|   845|  traffic-statistics enable
   848|   846| mtu 9000
   849|   847| encapsulation ethernet
   850|   848|#
   851|   849|vsi VSI_3208_PNI_GGC_ASN273461 static
   852|   850| pwsignal ldp
   853|   851|  vsi-id 3208
   854|   852|  peer 10.244.188.1
   855|   853|  traffic-statistics enable
   856|   854| mtu 8000
   857|   855| encapsulation ethernet
   858|   856|#
   859|   857|vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
   860|   858| pwsignal ldp
   861|   859|  vsi-id 4012
   862|   860|  peer 10.244.188.2
   863|   861|  traffic-statistics enable
   864|   862| mtu 9000
   865|   863| encapsulation ethernet
   866|   864|#
   867|   865|vsi VSI_3540_POP00-02_TRAN_MEDIANET static
   868|   866| pwsignal ldp
   869|   867|  vsi-id 3540
   870|   868|  peer 10.244.188.5
   871|   869|  traffic-statistics enable
   872|   870| mtu 9000
   873|   871| encapsulation ethernet
   874|   872|#
   875|   873|vsi VSI_73_CY_POP0-2_POP07_STE_OLT1 static
   876|   874| pwsignal ldp
   877|   875|  vsi-id 73
   878|   876|  peer 10.244.188.7
   879|   877|  traffic-statistics enable
   880|   878| mtu 9000
   881|   879| encapsulation ethernet
   882|   880|#
   883|   881|vsi VSI_3541_POP00-02_TRAN_MEDIANET static
   884|   882| pwsignal ldp
   885|   883|  vsi-id 3541
   886|   884|  peer 10.244.188.5
   887|   885|  traffic-statistics enable
   888|   886| mtu 9000
   889|   887| encapsulation ethernet
   890|   888|#
   891|   889|vsi VSI_1914_SEABORN_L1_ASN273461 static
   892|   890| pwsignal ldp
   893|   891|  vsi-id 1914
   894|   892|  peer 10.244.188.17
   895|   893|  traffic-statistics enable
   896|   894| mtu 9000
   897|   895| encapsulation ethernet
   898|   896|#
   899|   897|vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1 static
   900|   898| pwsignal ldp
   901|   899|  vsi-id 83
   902|   900|  peer 10.244.188.8
   903|   901|  traffic-statistics enable
   904|   902| mtu 9000
   905|   903| encapsulation ethernet
   906|   904|#
   907|   905|vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1 static
   908|   906| pwsignal ldp
   909|   907|  vsi-id 201
   910|   908|  peer 10.244.188.20
   911|   909|  traffic-statistics enable
   912|   910| mtu 9000
   913|   911| encapsulation ethernet
   914|   912|#
   915|   913|vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1 static
   916|   914| pwsignal ldp
   917|   915|  vsi-id 203
   918|   916|  peer 10.244.188.20
   919|   917|  traffic-statistics enable
   920|   918| mtu 9000
   921|   919| encapsulation ethernet
   922|   920|#
   923|   921|vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT static
   924|   922| pwsignal ldp
   925|   923|  vsi-id 200
   926|   924|  peer 10.244.188.20
   927|   925|  traffic-statistics enable
   928|   926| mtu 9000
   929|   927| encapsulation ethernet
   930|   928|#
   931|   929|vsi VSI_1395_POP00_POP95_DGT_SSP static
   932|   930| pwsignal ldp
   933|   931|  vsi-id 1395
   934|   932|  peer 10.244.188.95
   935|   933|  traffic-statistics enable
   936|   934| mtu 1600
   937|   935| encapsulation ethernet
   938|   936|#
   939|   937|vsi VSI_3147_BGP1CYBE_PROV_IDENTITY static
   940|   938| pwsignal ldp
   941|   939|  vsi-id 3147
   942|   940|  peer 10.244.188.47
   943|   941| mtu 9000
   944|   942| encapsulation ethernet
   945|   943|#
   946|   944|vsi VSI_250_CY_POP0-2_POP25_PO_MGNT static
   947|   945| pwsignal ldp
   948|   946|  vsi-id 250
   949|   947|  peer 10.244.188.125
   950|   948| mtu 9000
   951|   949| encapsulation ethernet
   952|   950|#
   953|   951|vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA static
   954|   952| pwsignal ldp
   955|   953|  vsi-id 3111
   956|   954|  peer 10.244.188.60
   957|   955|  traffic-statistics enable
   958|   956| mtu 9000
   959|   957| encapsulation ethernet
   960|   958|#
   961|   959|vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
   962|   960| pwsignal ldp
   963|   961|  vsi-id 133
   964|   962|  peer 10.244.188.13
   965|   963|  traffic-statistics enable
   966|   964| mtu 9000
   967|   965| encapsulation ethernet
   968|   966|#
   969|   967|vsi VSI_283_CY_POP0-2_POP28_VR_OLT1 static
   970|   968| pwsignal ldp
   971|   969|  vsi-id 283
   972|   970|  peer 10.244.189.28
   973|   971| mtu 9000
   974|   972| encapsulation ethernet
   975|   973|#
   976|   974|vsi VSI_213_POP0-2_POP21_PREF_SAPUC static
   977|   975| pwsignal ldp
   978|   976|  vsi-id 213
   979|   977|  peer 10.244.188.21
   980|   978|  traffic-statistics enable
   981|   979| mtu 9000
   982|   980| encapsulation ethernet
   983|   981|#
   984|   982|vsi VSI3121_POP0-2_POP21_PREF_SAPUC static
   985|   983| pwsignal ldp
   986|   984|  vsi-id 3121
   987|   985|  peer 10.244.188.21
   988|   986|  traffic-statistics enable
   989|   987| mtu 9000
   990|   988| encapsulation ethernet
   991|   989|#
   992|   990|vsi VSI_965_POP21_POP00_TR_PREF_SAP static
   993|   991| pwsignal ldp
   994|   992|  vsi-id 965
   995|   993|  peer 10.244.188.21
   996|   994| mtu 9000
   997|   995| encapsulation ethernet
   998|   996|#
   999|   997|vsi VSI_970_POP21_POP00_TR_PREF_SAP static
  1000|   998| pwsignal ldp
  1001|   999|  vsi-id 970
  1002|  1000|  peer 10.244.188.21
  1003|  1001| mtu 9000
  1004|  1002| encapsulation ethernet
  1005|  1003|#
  1006|  1004|vsi VSI_905_POP21_POP00_TR_PREF_SAP static
  1007|  1005| pwsignal ldp
  1008|  1006|  vsi-id 905
  1009|  1007|  peer 10.244.188.21
  1010|  1008| mtu 9000
  1011|  1009| encapsulation ethernet
  1012|  1010|#
  1013|  1011|vsi VSI_906_POP21_POP00_TR_PREF_SAP static
  1014|  1012| pwsignal ldp
  1015|  1013|  vsi-id 906
  1016|  1014|  peer 10.244.188.21
  1017|  1015| mtu 9000
  1018|  1016| encapsulation ethernet
  1019|  1017|#
  1020|  1018|vsi VSI_907_POP21_POP00_TR_PREF_SAP static
  1021|  1019| pwsignal ldp
  1022|  1020|  vsi-id 907
  1023|  1021|  peer 10.244.188.21
  1024|  1022|  traffic-statistics enable
  1025|  1023| mtu 9000
  1026|  1024| encapsulation ethernet
  1027|  1025|#
  1028|  1026|vsi VSI_912_POP21_POP00_TR_PREF_SAP static
  1029|  1027| pwsignal ldp
  1030|  1028|  vsi-id 912
  1031|  1029|  peer 10.244.188.21
  1032|  1030|  traffic-statistics enable
  1033|  1031| mtu 9000
  1034|  1032| encapsulation ethernet
  1035|  1033|#
  1036|  1034|vsi VSI_913_POP21_POP00_TR_PREF_SAP static
  1037|  1035| pwsignal ldp
  1038|  1036|  vsi-id 913
  1039|  1037|  peer 10.244.188.21
  1040|  1038|  traffic-statistics enable
  1041|  1039| mtu 9000
  1042|  1040| encapsulation ethernet
  1043|  1041|#
  1044|  1042|vsi VSI_914_POP21_POP00_TR_PREF_SAP static
  1045|  1043| pwsignal ldp
  1046|  1044|  vsi-id 914
  1047|  1045|  peer 10.244.188.21
  1048|  1046|  traffic-statistics enable
  1049|  1047| mtu 9000
  1050|  1048| encapsulation ethernet
  1051|  1049|#
  1052|  1050|vsi VSI_915_POP21_POP00_TR_PREF_SAP static
  1053|  1051| pwsignal ldp
  1054|  1052|  vsi-id 915
  1055|  1053|  peer 10.244.188.21
  1056|  1054|  traffic-statistics enable
  1057|  1055| mtu 9000
  1058|  1056| encapsulation ethernet
  1059|  1057|#
  1060|  1058|vsi VSI_916_POP21_POP00_TR_PREF_SAP static
  1061|  1059| pwsignal ldp
  1062|  1060|  vsi-id 916
  1063|  1061|  peer 10.244.188.21
  1064|  1062|  traffic-statistics enable
  1065|  1063| mtu 9000
  1066|  1064| encapsulation ethernet
  1067|  1065|#
  1068|  1066|vsi VSI_917_POP21_POP00_TR_PREF_SAP static
  1069|  1067| pwsignal ldp
  1070|  1068|  vsi-id 917
  1071|  1069|  peer 10.244.188.21
  1072|  1070|  traffic-statistics enable
  1073|  1071| mtu 9000
  1074|  1072| encapsulation ethernet
  1075|  1073|#
  1076|  1074|vsi VSI_919_POP21_POP00_TR_PREF_SAP static
  1077|  1075| pwsignal ldp
  1078|  1076|  vsi-id 919
  1079|  1077|  peer 10.244.188.21
  1080|  1078|  traffic-statistics enable
  1081|  1079| mtu 9000
  1082|  1080| encapsulation ethernet
  1083|  1081|#
  1084|  1082|vsi VSI_920_POP21_POP00_TR_PREF_SAP static
  1085|  1083| pwsignal ldp
  1086|  1084|  vsi-id 920
  1087|  1085|  peer 10.244.188.21
  1088|  1086|  traffic-statistics enable
  1089|  1087| mtu 9000
  1090|  1088| encapsulation ethernet
  1091|  1089|#
  1092|  1090|vsi VSI_922_POP21_POP00_TR_PREF_SAP static
  1093|  1091| pwsignal ldp
  1094|  1092|  vsi-id 922
  1095|  1093|  peer 10.244.188.21
  1096|  1094|  traffic-statistics enable
  1097|  1095| mtu 9000
  1098|  1096| encapsulation ethernet
  1099|  1097|#
  1100|  1098|vsi VSI_923_POP21_POP00_TR_PREF_SAP static
  1101|  1099| pwsignal ldp
  1102|  1100|  vsi-id 923
  1103|  1101|  peer 10.244.188.21
  1104|  1102|  traffic-statistics enable
  1105|  1103| mtu 9000
  1106|  1104| encapsulation ethernet
  1107|  1105|#
  1108|  1106|vsi VSI_924_POP21_POP00_TR_PREF_SAP static
  1109|  1107| pwsignal ldp
  1110|  1108|  vsi-id 924
  1111|  1109|  peer 10.244.188.21
  1112|  1110|  traffic-statistics enable
  1113|  1111| mtu 9000
  1114|  1112| encapsulation ethernet
  1115|  1113|#
  1116|  1114|vsi VSI_926_POP21_POP00_TR_PREF_SAP static
  1117|  1115| pwsignal ldp
  1118|  1116|  vsi-id 926
  1119|  1117|  peer 10.244.188.21
  1120|  1118|  traffic-statistics enable
  1121|  1119| mtu 9000
  1122|  1120| encapsulation ethernet
  1123|  1121|#
  1124|  1122|vsi VSI_977_POP21_POP00_TR_PREF_SAP static
  1125|  1123| pwsignal ldp
  1126|  1124|  vsi-id 977
  1127|  1125|  peer 10.244.188.21
  1128|  1126| mtu 9000
  1129|  1127| encapsulation ethernet
  1130|  1128|#
  1131|  1129|vsi VSI_972_POP21_POP00_TR_PREF_SAP static
  1132|  1130| pwsignal ldp
  1133|  1131|  vsi-id 972
  1134|  1132|  peer 10.244.188.21
  1135|  1133| mtu 9000
  1136|  1134| encapsulation ethernet
  1137|  1135|#
  1138|  1136|vsi VSI_931_POP21_POP00_TR_PREF_SAP static
  1139|  1137| pwsignal ldp
  1140|  1138|  vsi-id 931
  1141|  1139|  peer 10.244.188.21
  1142|  1140|  traffic-statistics enable
  1143|  1141| mtu 9000
  1144|  1142| encapsulation ethernet
  1145|  1143|#
  1146|  1144|vsi VSI_934_POP21_POP00_TR_PREF_SAP static
  1147|  1145| pwsignal ldp
  1148|  1146|  vsi-id 934
  1149|  1147|  peer 10.244.188.21
  1150|  1148|  traffic-statistics enable
  1151|  1149| mtu 9000
  1152|  1150| encapsulation ethernet
  1153|  1151|#
  1154|  1152|vsi VSI_936_POP21_POP00_TR_PREF_SAP static
  1155|  1153| pwsignal ldp
  1156|  1154|  vsi-id 936
  1157|  1155|  peer 10.244.188.21
  1158|  1156|  traffic-statistics enable
  1159|  1157| mtu 9000
  1160|  1158| encapsulation ethernet
  1161|  1159|#
  1162|  1160|vsi VSI_938_POP21_POP00_TR_PREF_SAP static
  1163|  1161| pwsignal ldp
  1164|  1162|  vsi-id 938
  1165|  1163|  peer 10.244.188.21
  1166|  1164| mtu 9000
  1167|  1165| encapsulation ethernet
  1168|  1166|#
  1169|  1167|vsi VSI_939_POP21_POP00_TR_PREF_SAP static
  1170|  1168| pwsignal ldp
  1171|  1169|  vsi-id 939
  1172|  1170|  peer 10.244.188.21
  1173|  1171| mtu 9000
  1174|  1172| encapsulation ethernet
  1175|  1173|#
  1176|  1174|vsi VSI_940_POP21_POP00_TR_PREF_SAP static
  1177|  1175| pwsignal ldp
  1178|  1176|  vsi-id 940
  1179|  1177|  peer 10.244.188.21
  1180|  1178| mtu 9000
  1181|  1179| encapsulation ethernet
  1182|  1180|#
  1183|  1181|vsi VSI_941_POP21_POP00_TR_PREF_SAP static
  1184|  1182| pwsignal ldp
  1185|  1183|  vsi-id 941
  1186|  1184|  peer 10.244.188.21
  1187|  1185| mtu 9000
  1188|  1186| encapsulation ethernet
  1189|  1187|#
  1190|  1188|vsi VSI_942_POP21_POP00_TR_PREF_SAP static
  1191|  1189| pwsignal ldp
  1192|  1190|  vsi-id 942
  1193|  1191|  peer 10.244.188.21
  1194|  1192| mtu 9000
  1195|  1193| encapsulation ethernet
  1196|  1194|#
  1197|  1195|vsi VSI_945_POP21_POP00_TR_PREF_SAP static
  1198|  1196| pwsignal ldp
  1199|  1197|  vsi-id 945
  1200|  1198|  peer 10.244.188.21
  1201|  1199| mtu 9000
  1202|  1200| encapsulation ethernet
  1203|  1201|#
  1204|  1202|vsi VSI_946_POP21_POP00_TR_PREF_SAP static
  1205|  1203| pwsignal ldp
  1206|  1204|  vsi-id 946
  1207|  1205|  peer 10.244.188.21
  1208|  1206| mtu 9000
  1209|  1207| encapsulation ethernet
  1210|  1208|#
  1211|  1209|vsi VSI_947_POP21_POP00_TR_PREF_SAP static
  1212|  1210| pwsignal ldp
  1213|  1211|  vsi-id 947
  1214|  1212|  peer 10.244.188.21
  1215|  1213| mtu 9000
  1216|  1214| encapsulation ethernet
  1217|  1215|#
  1218|  1216|vsi VSI_948_POP21_POP00_TR_PREF_SAP static
  1219|  1217| pwsignal ldp
  1220|  1218|  vsi-id 948
  1221|  1219|  peer 10.244.188.21
  1222|  1220| mtu 9000
  1223|  1221| encapsulation ethernet
  1224|  1222|#
  1225|  1223|vsi VSI_949_POP21_POP00_TR_PREF_SAP static
  1226|  1224| pwsignal ldp
  1227|  1225|  vsi-id 949
  1228|  1226|  peer 10.244.188.21
  1229|  1227| mtu 9000
  1230|  1228| encapsulation ethernet
  1231|  1229|#
  1232|  1230|vsi VSI_952_POP21_POP00_TR_PREF_SAP static
  1233|  1231| pwsignal ldp
  1234|  1232|  vsi-id 952
  1235|  1233|  peer 10.244.188.21
  1236|  1234| mtu 9000
  1237|  1235| encapsulation ethernet
  1238|  1236|#
  1239|  1237|vsi VSI_953_POP21_POP00_TR_PREF_SAP static
  1240|  1238| pwsignal ldp
  1241|  1239|  vsi-id 953
  1242|  1240|  peer 10.244.188.21
  1243|  1241| mtu 9000
  1244|  1242| encapsulation ethernet
  1245|  1243|#
  1246|  1244|vsi VSI_956_POP21_POP00_TR_PREF_SAP static
  1247|  1245| pwsignal ldp
  1248|  1246|  vsi-id 956
  1249|  1247|  peer 10.244.188.21
  1250|  1248| mtu 9000
  1251|  1249| encapsulation ethernet
  1252|  1250|#
  1253|  1251|vsi VSI_957_POP21_POP00_TR_PREF_SAP static
  1254|  1252| pwsignal ldp
  1255|  1253|  vsi-id 957
  1256|  1254|  peer 10.244.188.21
  1257|  1255| mtu 9000
  1258|  1256| encapsulation ethernet
  1259|  1257|#
  1260|  1258|vsi VSI_958_POP21_POP00_TR_PREF_SAP static
  1261|  1259| pwsignal ldp
  1262|  1260|  vsi-id 958
  1263|  1261|  peer 10.244.188.21
  1264|  1262| mtu 9000
  1265|  1263| encapsulation ethernet
  1266|  1264|#
  1267|  1265|vsi VSI_960_POP21_POP00_TR_PREF_SAP static
  1268|  1266| pwsignal ldp
  1269|  1267|  vsi-id 960
  1270|  1268|  peer 10.244.188.21
  1271|  1269| mtu 9000
  1272|  1270| encapsulation ethernet
  1273|  1271|#
  1274|  1272|vsi VSI_963_POP21_POP00_TR_PREF_SAP static
  1275|  1273| pwsignal ldp
  1276|  1274|  vsi-id 963
  1277|  1275|  peer 10.244.188.21
  1278|  1276| mtu 9000
  1279|  1277| encapsulation ethernet
  1280|  1278|#
  1281|  1279|vsi VSI_966_POP21_POP00_TR_PREF_SAP static
  1282|  1280| pwsignal ldp
  1283|  1281|  vsi-id 966
  1284|  1282|  peer 10.244.188.21
  1285|  1283| mtu 9000
  1286|  1284| encapsulation ethernet
  1287|  1285|#
  1288|  1286|vsi VSI_968_POP21_POP00_TR_PREF_SAP static
  1289|  1287| pwsignal ldp
  1290|  1288|  vsi-id 968
  1291|  1289|  peer 10.244.188.21
  1292|  1290| mtu 9000
  1293|  1291| encapsulation ethernet
  1294|  1292|#
  1295|  1293|vsi VSI_973_POP21_POP00_TR_PREF_SAP static
  1296|  1294| pwsignal ldp
  1297|  1295|  vsi-id 973
  1298|  1296|  peer 10.244.188.21
  1299|  1297| mtu 9000
  1300|  1298| encapsulation ethernet
  1301|  1299|#
  1302|  1300|vsi VSI_982_POP21_POP00_TR_PREF_SAP static
  1303|  1301| pwsignal ldp
  1304|  1302|  vsi-id 982
  1305|  1303|  peer 10.244.188.21
  1306|  1304| mtu 9000
  1307|  1305| encapsulation ethernet
  1308|  1306|#
  1309|  1307|vsi VSI_990_POP21_POP00_TR_PREF_SAP static
  1310|  1308| pwsignal ldp
  1311|  1309|  vsi-id 990
  1312|  1310|  peer 10.244.188.21
  1313|  1311| mtu 9000
  1314|  1312| encapsulation ethernet
  1315|  1313|#
  1316|  1314|vsi VSI_3580_POP59_TR_INFRAWEB_PPOE static
  1317|  1315| pwsignal ldp
  1318|  1316|  vsi-id 3580
  1319|  1317|  peer 10.244.188.59
  1320|  1318|  traffic-statistics enable
  1321|  1319| mtu 9000
  1322|  1320| encapsulation ethernet
  1323|  1321|#
  1324|  1322|vsi VSI_3151_POP00_PROV_ARROBANET static
  1325|  1323| pwsignal ldp
  1326|  1324|  vsi-id 3151
  1327|  1325|  peer 10.244.188.51
  1328|  1326| mtu 9000
  1329|  1327| encapsulation ethernet
  1330|  1328|#
  1331|  1329|vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
  1332|  1330| pwsignal ldp
  1333|  1331|  vsi-id 53
  1334|  1332|  peer 10.244.188.5
  1335|  1333| mtu 9000
  1336|  1334| encapsulation ethernet
  1337|  1335|#
  1338|  1336|vsi VSI_985_POP21_POP00_TR_PREF_SAP static
  1339|  1337| pwsignal ldp
  1340|  1338|  vsi-id 985
  1341|  1339|  peer 10.244.188.21
  1342|  1340| mtu 9000
  1343|  1341| encapsulation ethernet
  1344|  1342|#
  1345|  1343|vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
  1346|  1344| pwsignal ldp
  1347|  1345|  vsi-id 3964
  1348|  1346|  peer 10.244.188.2
  1349|  1347| mtu 9000
  1350|  1348| encapsulation ethernet
  1351|  1349|#
  1352|  1350|vsi VSI_986_POP21_POP00_TR_PREF_SAP static
  1353|  1351| pwsignal ldp
  1354|  1352|  vsi-id 986
  1355|  1353|  peer 10.244.188.21
  1356|  1354| mtu 9000
  1357|  1355| encapsulation ethernet
  1358|  1356|#
  1359|  1357|vsi VSI_3905_POP17-00_TR_CIRION_L1 static
  1360|  1358| pwsignal ldp
  1361|  1359|  vsi-id 3905
  1362|  1360|  peer 10.244.188.17
  1363|  1361|  traffic-statistics enable
  1364|  1362| mtu 9000
  1365|  1363| encapsulation ethernet
  1366|  1364|#
  1367|  1365|vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
  1368|  1366| pwsignal ldp
  1369|  1367|  vsi-id 3602
  1370|  1368|  peer 10.244.188.5
  1371|  1369| mtu 9000
  1372|  1370| encapsulation ethernet
  1373|  1371|#
  1374|  1372|vsi VSI_230_POP0-2_POP23_EST_MGNT static
  1375|  1373| pwsignal ldp
  1376|  1374|  vsi-id 230
  1377|  1375|  peer 10.244.189.15
  1378|  1376|  traffic-statistics enable
  1379|  1377| mtu 9000
  1380|  1378| encapsulation ethernet
  1381|  1379|#
  1382|  1380|vsi VSI_251_CY_POP0-2_POP25_CO_OLT1 static
  1383|  1381| pwsignal ldp
  1384|  1382|  vsi-id 251
  1385|  1383|  peer 10.244.188.125
  1386|  1384| mtu 9000
  1387|  1385| encapsulation ethernet
  1388|  1386|#
  1389|  1387|vsi VSI_231_POP0-2_POP23_EST_OLT1 static
  1390|  1388| pwsignal ldp
  1391|  1389|  vsi-id 231
  1392|  1390|  peer 10.244.189.15
  1393|  1391|  traffic-statistics enable
  1394|  1392| mtu 9000
  1395|  1393| encapsulation ethernet
  1396|  1394|#
  1397|  1395|vsi VSI_233_POP0-2_POP23_EST_OLT1 static
  1398|  1396| pwsignal ldp
  1399|  1397|  vsi-id 233
  1400|  1398|  peer 10.244.189.15
  1401|  1399|  traffic-statistics enable
  1402|  1400| mtu 9000
  1403|  1401| encapsulation ethernet
  1404|  1402|#
  1405|  1403|explicit-path SW1POP04-00_VIA_POP11_VLAN3203
  1406|  1404| next hop 10.244.112.2
  1407|  1405| next hop 10.244.110.2
  1408|  1406| next hop 10.244.127.2
  1409|  1407| next hop 10.244.127.5
  1410|  1408| next hop 10.244.111.2
  1411|  1409| next hop 10.244.111.5
  1412|  1410|#
  1413|  1411|mpls ldp
  1414|  1412|#
  1415|  1413|#
  1416|  1414|mpls ldp remote-peer 10.244.188.1
  1417|  1415| remote-ip 10.244.188.1
  1418|  1416|#
  1419|  1417|mpls ldp remote-peer 10.244.188.2
  1420|  1418| remote-ip 10.244.188.2
  1421|  1419|#
  1422|  1420|mpls ldp remote-peer 10.244.188.4
  1423|  1421| remote-ip 10.244.188.4
  1424|  1422|#
  1425|  1423|mpls ldp remote-peer 10.244.188.5
  1426|  1424| remote-ip 10.244.188.5
  1427|  1425|#
  1428|  1426|mpls ldp remote-peer 10.244.188.7
  1429|  1427| remote-ip 10.244.188.7
  1430|  1428|#
  1431|  1429|mpls ldp remote-peer 10.244.188.8
  1432|  1430| remote-ip 10.244.188.8
  1433|  1431|#
  1434|  1432|mpls ldp remote-peer 10.244.188.10
  1435|  1433| remote-ip 10.244.188.10
  1436|  1434|#
  1437|  1435|mpls ldp remote-peer 10.244.188.11
  1438|  1436| remote-ip 10.244.188.11
  1439|  1437|#
  1440|  1438|mpls ldp remote-peer 10.244.188.13
  1441|  1439| remote-ip 10.244.188.13
  1442|  1440|#
  1443|  1441|mpls ldp remote-peer 10.244.188.15
  1444|  1442| remote-ip 10.244.188.15
  1445|  1443|#
  1446|  1444|mpls ldp remote-peer 10.244.188.17
  1447|  1445| remote-ip 10.244.188.17
  1448|  1446|#
  1449|  1447|mpls ldp remote-peer 10.244.188.18
  1450|  1448| remote-ip 10.244.188.18
  1451|  1449|#
  1452|  1450|mpls ldp remote-peer 10.244.188.19
  1453|  1451| remote-ip 10.244.188.19
  1454|  1452|#
  1455|  1453|mpls ldp remote-peer 10.244.188.20
  1456|  1454| remote-ip 10.244.188.20
  1457|  1455|#
  1458|  1456|mpls ldp remote-peer 10.244.188.21
  1459|  1457| remote-ip 10.244.188.21
  1460|  1458|#
  1461|  1459|mpls ldp remote-peer 10.244.188.22
  1462|  1460| remote-ip 10.244.188.22
  1463|  1461|#
  1464|  1462|mpls ldp remote-peer 10.244.188.27
  1465|  1463| remote-ip 10.244.188.27
  1466|  1464|#
  1467|  1465|mpls ldp remote-peer 10.244.188.28
  1468|  1466| remote-ip 10.244.188.28
  1469|  1467|#
  1470|  1468|mpls ldp remote-peer 10.244.188.43
  1471|  1469| remote-ip 10.244.188.43
  1472|  1470|#
  1473|  1471|mpls ldp remote-peer 10.244.188.47
  1474|  1472| remote-ip 10.244.188.47
  1475|  1473|#
  1476|  1474|mpls ldp remote-peer 10.244.188.49
  1477|  1475| remote-ip 10.244.188.49
  1478|  1476|#
  1479|  1477|mpls ldp remote-peer 10.244.188.50
  1480|  1478| remote-ip 10.244.188.50
  1481|  1479|#
  1482|  1480|mpls ldp remote-peer 10.244.188.51
  1483|  1481| remote-ip 10.244.188.51
  1484|  1482|#
  1485|  1483|mpls ldp remote-peer 10.244.188.59
  1486|  1484| remote-ip 10.244.188.59
  1487|  1485|#
  1488|  1486|mpls ldp remote-peer 10.244.188.60
  1489|  1487| remote-ip 10.244.188.60
  1490|  1488|#
  1491|  1489|mpls ldp remote-peer 10.244.188.62
  1492|  1490| remote-ip 10.244.188.62
  1493|  1491|#
  1494|  1492|mpls ldp remote-peer 10.244.188.67
  1495|  1493| remote-ip 10.244.188.67
  1496|  1494|#
  1497|  1495|mpls ldp remote-peer 10.244.188.99
  1498|  1496| remote-ip 10.244.188.99
  1499|  1497|#
  1500|  1498|mpls ldp remote-peer 10.244.188.125
  1501|  1499| remote-ip 10.244.188.125
  1502|  1500|#
  1503|  1501|mpls ldp remote-peer 10.244.189.3
  1504|  1502| remote-ip 10.244.189.3
  1505|  1503|#
  1506|  1504|mpls ldp remote-peer 10.244.189.5
  1507|  1505| remote-ip 10.244.189.5
  1508|  1506|#
  1509|  1507|mpls ldp remote-peer 10.244.189.10
  1510|  1508| remote-ip 10.244.189.10
  1511|  1509|#
  1512|  1510|mpls ldp remote-peer 10.244.189.11
  1513|  1511| remote-ip 10.244.189.11
  1514|  1512|#
  1515|  1513|mpls ldp remote-peer 10.244.189.12
  1516|  1514| remote-ip 10.244.189.12
  1517|  1515|#
  1518|  1516|mpls ldp remote-peer 10.244.189.14
  1519|  1517| remote-ip 10.244.189.14
  1520|  1518|#
  1521|  1519|mpls ldp remote-peer 10.244.189.15
  1522|  1520| remote-ip 10.244.189.15
  1523|  1521|#
  1524|  1522|mpls ldp remote-peer 10.244.189.28
  1525|  1523| remote-ip 10.244.189.28
  1526|  1524|#
  1527|  1525|mpls ldp remote-peer 10.244.189.65
  1528|  1526| remote-ip 10.244.189.65
  1529|  1527|#
  1530|  1528|mpls ldp remote-peer 10.244.189.67
  1531|  1529| remote-ip 10.244.189.67
  1532|  1530|#
  1533|  1531|rsa peer-public-key 10.244.110.6
  1534|  1532| public-key-code begin
  1535|  1533|  30820109
  1536|  1534|    02820100
  1537|  1535|      E09A5CC1 F761B429 D35C7D9A E4600853 5C186444 3D8D977F 2152D97E 9D512D50
  1538|  1536|      1059FF35 788CCE1D 45D34E7B 23B2E884 F19E936F 878E2B46 8599B6BE 2A882B1F
  1539|  1537|      BFC5F8B0 0B4454B2 E6B1B6DE ED926E55 B1D6ACAA CA8AF6F8 0CF8AFED 903F1077
  1540|  1538|      0D8E49DA A06E1BE7 621911D6 B96FCC7C EA5DB211 AF76367E CFFD906E 8212C753
  1541|  1539|      02C12382 0FFDB971 6F6D2CBD F57FB52A 9F175874 8A992F72 F5C43101 90209A8E
  1542|  1540|      388BDD8D 6A261AC0 2827EF28 E3BE372F 574EF7B3 3E5D5F7F DAE0B930 9F2DF2AE
  1543|  1541|      6760B695 01A30E1C AB83F389 8F47C30F 4E9CB918 E0134F81 8A245401 C4C7CA80
  1544|  1542|      3464BC48 53330D46 6F5FD1AB E1B69D38 536E9127 D90FF79A 7D4892B6 9D5B2D91
  1545|  1543|    0203
  1546|  1544|      010001
  1547|  1545| public-key-code end
  1548|  1546|peer-public-key end
  1549|  1547|#
  1550|  1548|pki realm default
  1551|  1549| certificate-check none
  1552|  1550|#
  1553|  1551|free-rule-template name default_free_rule
  1554|  1552|#
  1555|  1553|portal-access-profile name portal_access_profile
  1556|  1554|#
  1557|  1555|drop-profile default
  1558|  1556|#
  1559|  1557|vlan 4
  1560|  1558| description VLAN_4_PTP_CGNAT1_BGP1_CYBER
  1561|  1559|vlan 11
  1562|  1560| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1563|  1561|vlan 12
  1564|  1562| description VLAN_12_POP0_ARQU_OLT1_SCHOSSLER
  1565|  1563|vlan 13
  1566|  1564| description VLAN_13_POP00_ARQU_OLT1_SCHOSSLER
  1567|  1565|vlan 16
  1568|  1566| description VLAN16_SERVIDORES_IP_PUBLICO
  1569|  1567|vlan 17
  1570|  1568| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1571|  1569|vlan 18
  1572|  1570| description VALN_18_POP0_SAP_RAD
  1573|  1571|vlan 19
  1574|  1572| description VLAN19_GERENCIA_EQUIPAMENTOS
  1575|  1573|vlan 21
  1576|  1574| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1577|  1575|vlan 23
  1578|  1576| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1579|  1577|vlan 30
  1580|  1578| description VLAN_30_POP03_M_FOLRES_MGNT
  1581|  1579|vlan 31
  1582|  1580| description VLAN_31_POP03_M_FLORES_OLT1
  1583|  1581|vlan 39
  1584|  1582| description VLAN_39_POP03_M_FLORES_RADIOS
  1585|  1583|vlan 40
  1586|  1584| description VLAN_40_POP04_POA_HIPICA
  1587|  1585|vlan 41
  1588|  1586| description VLAN_41_POP04_PPPOE_CLIENTES
  1589|  1587|vlan 50
  1590|  1588| description VLAN_50_M_RINCAO_GERENCIA
  1591|  1589|vlan 51
  1592|  1590| description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
  1593|  1591|vlan 53
  1594|  1592| description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
  1595|  1593|vlan 60
  1596|  1594| description VLAN_60_POP06_B_VISTA_MGNT
  1597|  1595|vlan 61
  1598|  1596| description VLAN_61_POP06_B_VISTA_OLT1
  1599|  1597|vlan 70
  1600|  1598| description VLAN_70_POP07_S_TECLA_GERENCIA
  1601|  1599|vlan 71
  1602|  1600| description VLAN_71_POP07_S_TECLA_OLT1
  1603|  1601|vlan 73
  1604|  1602| description VLAN_73_POP07_S_TECLA_OLT1
  1605|  1603|vlan 80
  1606|  1604| description VLAN_80_POP08_FREITAS_MGNT
  1607|  1605|vlan 81
  1608|  1606| description VLAN_81_POP08_FREITAS_OLT1
  1609|  1607|vlan 83
  1610|  1608| description VLAN_83_CYBER_POP08_FREITAS_OLT1
  1611|  1609|vlan 90
  1612|  1610| description VLAN_90_POP09_ITACOLOMI_MGNT
  1613|  1611|vlan 91
  1614|  1612| description VLAN_91_POP09_ITACOLOMI_OLT1
  1615|  1613|vlan 100
  1616|  1614| description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
  1617|  1615|vlan 101
  1618|  1616| description VLAN_101_POP10_P_EUCALIPTOS_OLT1
  1619|  1617|vlan 110
  1620|  1618| description VLAN_110_POP11_COND_VIVAZ_MGNT
  1621|  1619|vlan 111
  1622|  1620| description VLAN_111_POP11_COND_VIVAZ_OLT1
  1623|  1621|vlan 113
  1624|  1622| description VLAN_113_POP11_COND_VIVAZ_OLT1
  1625|  1623|vlan 120
  1626|  1624| description vlan120_POP12_BETANIA_GERENCIA
  1627|  1625|vlan 121
  1628|  1626| description VLAN_121_POP12_BETANIA_OLT1
  1629|  1627|vlan 130
  1630|  1628| description VLAN_130_POP13_C_HAVANA_MGNT
  1631|  1629|vlan 131
  1632|  1630| description VLAN_131_POP13_C_HAVANA_OLT1
  1633|  1631|vlan 133
  1634|  1632| description VLAN_133_POP13_C_HAVANA_OLT1
  1635|  1633|vlan 140
  1636|  1634| description VLAN_140_POP14_LOMBA_GRANDE
  1637|  1635|vlan 141
  1638|  1636| description VLAN_141_POP14_LOMBA_GRANDE
  1639|  1637|vlan 150
  1640|  1638| description VLAN_150_POP15_EXPOINTER_GERENCIA
  1641|  1639|vlan 151
  1642|  1640| description VLAN_151_POP15_EXPOINTER_OLT1
  1643|  1641|vlan 160
  1644|  1642| description VLAN_160_POP16_CASTELINHO_MGNT
  1645|  1643|vlan 161
  1646|  1644| description VLAN_161_POP16_CASTELINHO_OLT1
  1647|  1645|vlan 169
  1648|  1646| description VLAN_169_POP16_CASTELINHO_RADIO
  1649|  1647|vlan 171
  1650|  1648| description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
  1651|  1649|vlan 173
  1652|  1650| description VLAN_173_POP17_ELEA_PPPOE_CYBER
  1653|  1651|vlan 181
  1654|  1652| description VLAN_181_POP18_CEIC_PROCEMPA
  1655|  1653|vlan 190
  1656|  1654| description VLAN_190_POP19_HIPICA_GERENCIA
  1657|  1655|vlan 191
  1658|  1656| description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
  1659|  1657|vlan 193
  1660|  1658| description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
  1661|  1659|vlan 194
  1662|  1660| description VLAN_194_POP19_TRANSP_RSSUL
  1663|  1661|vlan 200
  1664|  1662| description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
  1665|  1663|vlan 201
  1666|  1664| description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
  1667|  1665|vlan 203
  1668|  1666| description VLAN_203_POP20_S_JOAO_OLT1_CYBER
  1669|  1667|vlan 211
  1670|  1668| description VLAN_211_POP21_PREF_SAPUCAIA
  1671|  1669|vlan 213
  1672|  1670| description VLAN_213_POP21_PREF_SAPUCAIA
  1673|  1671|vlan 220
  1674|  1672| description VLAN_220_POP22_PIRATINI
  1675|  1673|vlan 230
  1676|  1674| description VLAN_230_POP23_EST_GERENCIA
  1677|  1675|vlan 231
  1678|  1676| description VLAN_231_POP23_ESTEIO_OLT1
  1679|  1677|vlan 233
  1680|  1678| description VLAN_233_POP23_ESTEIO_OLT1
  1681|  1679|vlan 250
  1682|  1680| description VLAN_250_POP25_GERENCIA
  1683|  1681|vlan 251
  1684|  1682| description VLAN_250_POP25_OLT1
  1685|  1683|vlan 253
  1686|  1684| description VLAN_253_POP25_OLT1_CYBERWEB
  1687|  1685|vlan 258
  1688|  1686| description VLAN_258_POP25_OLT1_SCHOSSLER
  1689|  1687|vlan 271
  1690|  1688| description VLAN_271_POP27_CIVIL_OLT1
  1691|  1689|vlan 273
  1692|  1690| description VLAN_273_POP27_CIVIL_OLT1
  1693|  1691|vlan 281
  1694|  1692| description VLAN_281_POP28_V_RICA_OLT1
  1695|  1693|vlan 283
  1696|  1694| description VLAN_283_POP28_V_RICA_OLT1
  1697|  1695|vlan 905
  1698|  1696| description VLAN_905_TRANS_PREF_SAPUCAIA
  1699|  1697|vlan 906
  1700|  1698| description VLAN_906_TRANS_PREF_SAPUCAIA
  1701|  1699|vlan 907
  1702|  1700| description VLAN_907_TRANS_PREF_SAPUCAIA
  1703|  1701|vlan 912
  1704|  1702| description VLAN_912_TRANS_PREF_SAPUCAIA
  1705|  1703|vlan 913
  1706|  1704| description VLAN_913_TRANS_PREF_SAPUCAIA
  1707|  1705|vlan 914
  1708|  1706| description VLAN_914_TRANS_PREF_SAPUCAIA
  1709|  1707|vlan 915
  1710|  1708| description VLAN_915_TRANS_PREF_SAPUCAIA
  1711|  1709|vlan 916
  1712|  1710| description VLAN_916_TRANS_PREF_SAPUCAIA
  1713|  1711|vlan 917
  1714|  1712| description VLAN_917_TRANS_PREF_SAPUCAIA
  1715|  1713|vlan 919
  1716|  1714| description VLAN_919_TRANS_PREF_SAPUCAIA
  1717|  1715|vlan 920
  1718|  1716| description VLAN_920_TRANS_PREF_SAPUCAIA
  1719|  1717|vlan 922
  1720|  1718| description VLAN_922_TRANS_PREF_SAPUCAIA
  1721|  1719|vlan 923
  1722|  1720| description VLAN_923_TRANS_PREF_SAPUCAIA
  1723|  1721|vlan 924
  1724|  1722| description VLAN_924_TRANS_PREF_SAPUCAIA
  1725|  1723|vlan 926
  1726|  1724| description VLAN_926_TRANS_PREF_SAPUCAIA
  1727|  1725|vlan 931
  1728|  1726| description VLAN_931_TRANS_PREF_SAPUCAIA
  1729|  1727|vlan 934
  1730|  1728| description VLAN_934_TRANS_PREF_SAPUCAIA
  1731|  1729|vlan 936
  1732|  1730| description VLAN_936_TRANS_PREF_SAPUCAIA
  1733|  1731|vlan 938
  1734|  1732| description VLAN_938_TRANS_PREF_SAPUCAIA
  1735|  1733|vlan 939
  1736|  1734| description VLAN_939_TRANS_PREF_SAPUCAIA
  1737|  1735|vlan 940
  1738|  1736| description VLAN_940_TRANS_PREF_SAPUCAIA
  1739|  1737|vlan 941
  1740|  1738| description VLAN_941_TRANS_PREF_SAPUCAIA
  1741|  1739|vlan 942
  1742|  1740| description VLAN_942_TRANS_PREF_SAPUCAIA
  1743|  1741|vlan 945
  1744|  1742| description VLAN_945_TRANS_PREF_SAPUCAIA
  1745|  1743|vlan 946
  1746|  1744| description VLAN_946_TRANS_PREF_SAPUCAIA
  1747|  1745|vlan 947
  1748|  1746| description VLAN_947_TRANS_PREF_SAPUCAIA
  1749|  1747|vlan 948
  1750|  1748| description VLAN_948_TRANS_PREF_SAPUCAIA
  1751|  1749|vlan 949
  1752|  1750| description VLAN_949_TRANS_PREF_SAPUCAIA
  1753|  1751|vlan 952
  1754|  1752| description VLAN_952_TRANS_PREF_SAPUCAIA
  1755|  1753|vlan 953
  1756|  1754| description VLAN_953_TRANS_PREF_SAPUCAIA
  1757|  1755|vlan 956
  1758|  1756| description VLAN_956_TRANS_PREF_SAPUCAIA
  1759|  1757|vlan 957
  1760|  1758| description VLAN_957_TRANS_PREF_SAPUCAIA
  1761|  1759|vlan 958
  1762|  1760| description VLAN_958_TRANS_PREF_SAPUCAIA
  1763|  1761|vlan 959
  1764|  1762| description VLAN_959_TRANSP_VERO
  1765|  1763|vlan 960
  1766|  1764| description VLAN_960_TRANS_PREF_SAPUCAIA
  1767|  1765|vlan 963
  1768|  1766| description VLAN_963_TRANS_PREF_SAPUCAIA
  1769|  1767|vlan 965
  1770|  1768| description VLAN_965_TRANS_PREF_SAPUCAIA
  1771|  1769|vlan 966
  1772|  1770| description VLAN_966_TRANS_PREF_SAPUCAIA
  1773|  1771|vlan 968
  1774|  1772| description VLAN_968_TRANS_PREF_SAPUCAIA
  1775|  1773|vlan 970
  1776|  1774| description VLAN_970_TRANS_PREF_SAPUCAIA
  1777|  1775|vlan 971
  1778|  1776| description VLAN_971_TRANS_PREF_SAPUCAIA
  1779|  1777|vlan 972
  1780|  1778| description VLAN_972_TRANS_PREF_SAPUCAIA
  1781|  1779|vlan 973
  1782|  1780| description VLAN_973_TRANS_PREF_SAPUCAIA
  1783|  1781|vlan 974
  1784|  1782| description VLAN_974_TRANSP_VERO
  1785|  1783|vlan 977
  1786|  1784| description VLAN_977_TRANS_PREF_SAPUCAIA
  1787|  1785|vlan 982
  1788|  1786| description VLAN_982_TRANS_PREF_SAPUCAIA
  1789|  1787|vlan 985
  1790|  1788| description VLAN_985_TRANSP_VERO
  1791|  1789|vlan 986
  1792|  1790| description VLAN_986_TRANS_PREF_SAPUCAIA
  1793|  1791|vlan 990
  1794|  1792| description VLAN_990_TRANS_PREF_SAPUCAIA
  1795|  1793|vlan 1001
  1796|  1794| description VLAN_1001_BGP1_CYBER_CE01
  1797|  1795|vlan 1003
  1798|  1796| description VLAN1003_BGP1_CYBER_CE03_CYBER
  1799|  1797|vlan 1100
  1800|  1798| description VLAN1100_SW1POP0_SW1POP0_MPLS1
  1801|  1799|vlan 1108
  1802|  1800| description VLAN1108_SW1POP00_SW1POP08_MPLS1
  1803|  1801|vlan 1111
  1804|  1802| description VLAN_1111_CGNAT1_CE01_OSPF
  1805|  1803|vlan 1112
  1806|  1804| description VLAN1112_SW1POP00_SW1POP12_MPLS1
  1807|  1805|vlan 1121
  1808|  1806| description VLAN_1121_SW1POP00_SW1POP21_MPLS1
  1809|  1807|vlan 1125
  1810|  1808| description VLAN_1125_SW1POP00_SW1POP25_MPLS1
  1811|  1809|vlan 1138
  1812|  1810| description VLAN_1138_VERO_CDN
  1813|  1811|vlan 1144
  1814|  1812| description VLAN_1144_SW1POP00_SW1POP44_MPLS1
  1815|  1813|vlan 1152
  1816|  1814| description VLAN_1152_SW1POP00_SW1POP52_OSPF1
  1817|  1815|vlan 1164
  1818|  1816| description VLAN_1164_LINK1_IPV4_VERO
  1819|  1817|vlan 1166
  1820|  1818| description VLAN_1166_SW1POP0_SW1POP66_OSPF
  1821|  1819|vlan 1195
  1822|  1820| description VLAN1195_SW1PO11_SW1PO95_DGTSSP
  1823|  1821|vlan 1264
  1824|  1822| description VLAN_1164_LINK1_IPV6_VERO
  1825|  1823|vlan 1295
  1826|  1824| description VLAN1295_SW1PO11_SW1PO95_DGTSSP
  1827|  1825|vlan 1395
  1828|  1826| description VLAN1395_SW1PO11_SW1PO95_DGTSSP
  1829|  1827|vlan 1914
  1830|  1828| description VLAN_1914_SEABORN_L1_BGP1_ASN273461
  1831|  1829|vlan 2311
  1832|  1830| description VLAN2311_TRANSP_VERO_POP14_L_GRANDE
  1833|  1831|vlan 2340
  1834|  1832| description VLAN2340_INFRAWEB_GERENCIA
  1835|  1833|vlan 2341
  1836|  1834| description VLAN2341_INFRAWEB_PPPOE
  1837|  1835|vlan 2733
  1838|  1836| description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
  1839|  1837|vlan 3000
  1840|  1838| description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
  1841|  1839|vlan 3005
  1842|  1840| description VLAN_3005_TRANSP_TELIUM_S_CASA
  1843|  1841|vlan 3101
  1844|  1842| description VLAN_3101_TRANP_CAMERAS_BRIGADA
  1845|  1843|vlan 3102
  1846|  1844| description VLAN_3102_TRANP_CAMERAS_BRIGADA
  1847|  1845|vlan 3105
  1848|  1846| description VLAN_3105_TRANSPORTE_SSP_POA
  1849|  1847|vlan 3106
  1850|  1848| description VLAN_3106_TRANSPORTE_SSP_POA
  1851|  1849|vlan 3107
  1852|  1850| description VLAN_3107_TRANSP_POA_MAIS_SEG
  1853|  1851|vlan 3108
  1854|  1852| description VLAN_3108_TRANSP_POA_MAIS_SEG
  1855|  1853|vlan 3111
  1856|  1854| description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
  1857|  1855|vlan 3114
  1858|  1856| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
  1859|  1857|vlan 3119
  1860|  1858| description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
  1861|  1859|vlan 3120
  1862|  1860| description VLAN_3120_BGP1_NE40_CE20_OSPF
  1863|  1861|vlan 3121
  1864|  1862| description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
  1865|  1863|vlan 3143
  1866|  1864| description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
  1867|  1865|vlan 3147
  1868|  1866| description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
  1869|  1867|vlan 3149
  1870|  1868| description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
  1871|  1869|vlan 3150
  1872|  1870| description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
  1873|  1871|vlan 3151
  1874|  1872| description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
  1875|  1873|vlan 3152
  1876|  1874| description VLAN3152_BGP1_CYBER_BGP1_BLUSTELECOM
  1877|  1875|vlan 3153
  1878|  1876| description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
  1879|  1877|vlan 3154
  1880|  1878| description VLAN_3154_CYBER_BGP1_LM_V_RICA_L1
  1881|  1879|vlan 3155
  1882|  1880| description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
  1883|  1881|vlan 3160
  1884|  1882| description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
  1885|  1883|vlan 3162
  1886|  1884| description VLAN_3162_BGP1_POP62_EQUATORIAL
  1887|  1885|vlan 3163
  1888|  1886| description VLAN3163_BGP1_CE63_VILLELA
  1889|  1887|vlan 3166
  1890|  1888| description VLAN_3166_CYBER_BGP1_WIANETSUL_L1
  1891|  1889|vlan 3167
  1892|  1890| description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
  1893|  1891|vlan 3203
  1894|  1892| description VLAN_3203_TRANSP_IXRS_BLUS
  1895|  1893|vlan 3207
  1896|  1894| description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
  1897|  1895|vlan 3208
  1898|  1896| description VLAN_3208_PNI_GGC_ASN273461
  1899|  1897|vlan 3252
  1900|  1898| description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
  1901|  1899|vlan 3256
  1902|  1900| description VLAN_3256_PPPOE_CLIENTES_TELIUM
  1903|  1901|vlan 3261
  1904|  1902| description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
  1905|  1903|vlan 3266
  1906|  1904| description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
  1907|  1905|vlan 3341
  1908|  1906| description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
  1909|  1907|vlan 3511
  1910|  1908| description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
  1911|  1909|vlan 3532
  1912|  1910| description VLAN_3532_TRANSP_CAM_CAMAQUA
  1913|  1911|vlan 3533
  1914|  1912| description VLAN_3533_TRANSP_CAM_CAMAQUA
  1915|  1913|vlan 3540
  1916|  1914| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
  1917|  1915|vlan 3541
  1918|  1916| description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
  1919|  1917|vlan 3550
  1920|  1918| description VLAN_3550_TRANSP_R_NEUTRA_LM
  1921|  1919|vlan 3560
  1922|  1920| description VLAN_3560_POWERNET_R_NEUTRA
  1923|  1921|vlan 3571
  1924|  1922| description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
  1925|  1923|vlan 3580
  1926|  1924| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
  1927|  1925|vlan 3581
  1928|  1926| description VLAN3581_RN_CYBER_NA_INFRAWEB
  1929|  1927|vlan 3592
  1930|  1928| description VLAN_3592_ALT_ADVANTA
  1931|  1929|vlan 3602
  1932|  1930| description VLAN_3602_TR_ADYL_POP14_ADVANTA
  1933|  1931|vlan 3790
  1934|  1932| description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
  1935|  1933|vlan 3791
  1936|  1934| description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
  1937|  1935|vlan 3902
  1938|  1936| description VLAN_3902_EQUINIX_CYBER_BGP1
  1939|  1937|vlan 3904
  1940|  1938| description VLAN3904_SW1POP01_SW1POP00_PNI_META
  1941|  1939|vlan 3905
  1942|  1940| description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
  1943|  1941|vlan 3906
  1944|  1942| description VLAN3906_SW1POP01_SW1POP00_PNI_META
  1945|  1943|vlan 3964
  1946|  1944| description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
  1947|  1945|vlan 4000
  1948|  1946| description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
  1949|  1947|vlan 4001
  1950|  1948| description VLAN_4001_BGP1CYBER_CGNAT1_SCHOSSLER
  1951|  1949|vlan 4012
  1952|  1950| description VLAN_4012_CGNAT1_BGP2
  1953|  1951|vlan 4094
  1954|  1952| description VLAN_4094_BLACKHOLE
  1955|  1953|#
  1956|  1954|aaa
  1957|  1955| authentication-scheme default
  1958|  1956|  authentication-mode local
  1959|  1957| authentication-scheme radius
  1960|  1958|  authentication-mode radius
  1961|  1959| authorization-scheme default
  1962|  1960|  authorization-mode local
  1963|  1961| accounting-scheme default
  1964|  1962|  accounting-mode none
  1965|  1963| local-aaa-user password policy administrator
  1966|  1964|  password history record number 0
  1967|  1965|  password expire 0
  1968|  1966| domain default
  1969|  1967|  authentication-scheme radius
  1970|  1968|  accounting-scheme default
  1971|  1969|  radius-server default
  1972|  1970| domain default_admin
  1973|  1971|  authentication-scheme default
  1974|  1972|  accounting-scheme default
  1975|  1973| local-user admin password irreversible-cipher $1c$q6&9:g>RA-$|\C)9;1bq4^uT098E$vO)BE[PjFpQ$DZWU=%(;o>$
  1976|  1974| local-user admin privilege level 15
  1977|  1975| local-user admin service-type ssh http
  1978|  1976| local-user future password irreversible-cipher $1c$Y5}lDwN=E:$!DRV>(;)M~pr*6ESw7~@vzIg4OQmiWIP|2TP!*u6$
  1979|  1977| local-user future privilege level 15
  1980|  1978| local-user future service-type ssh
  1981|  1979| local-user zandona password irreversible-cipher $1c$Ln|t*R>'-8$p/SsDlFwfE)KQH>Q$5VR-F7/00i=:(QGD&CU(dhR$
  1982|  1980| local-user zandona privilege level 15
  1983|  1981| local-user zandona service-type telnet ssh http
  1984|  1982|#
  1985|  1983|ntp-service server disable
  1986|  1984|ntp-service ipv6 server disable
  1987|  1985|ntp-service unicast-server 200.189.40.8
  1988|  1986|ntp-service unicast-server 200.160.0.8
  1989|  1987|#
  1990|  1988|interface Vlanif2
  1991|  1989| description VLAN_2_GERENCIA
  1992|  1990| ip address 10.244.0.98 255.255.255.252
  1993|  1991|#
  1994|  1992|interface Vlanif11
  1995|  1993| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1996|  1994| l2 binding vsi VSI_11_CY_POP00_POP02_SAP_OLT1
  1997|  1995|#
  1998|  1996|interface Vlanif12
  1999|  1997| description VLAN_12_POP0_SAP_OLT1
  2000|  1998| l2 binding vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1
  2001|
```

## 🗒️ Observações
- {{notes}}
