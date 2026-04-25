[[SW1POP00]]

     1|```yaml
     2|User Authentication
     3|(admin@10.244.189.0) Password:
     4|
     5|Info: The max number of VTY users is 10, and the number
     6|      of current VTY users on line is 1.
     7|      The current login time is 2026-04-11 15:15:46-03:00.
     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-04-06 16:56:04-03:00  Password will expire in: -
     9|
    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    11|<SW1POP00_CYBER>displ
    12|<SW1POP00_CYBER>display cu
    13|<SW1POP00_CYBER>display current-configuration
    14|!Software Version V200R023C00SPC500
    15|#
    16|sysname SW1POP00_CYBER
    17|#
    18|vlan batch 2 4 10 to 13 16 to 19 21 23 30 to 31 39 to 41 50 to 51 53
    19|vlan batch 60 to 61 70 to 71 73 80 to 81 83 90 to 91 100 to 101 110 to 111 113 120 to 121
    20|vlan batch 130 to 131 133 140 to 141 150 to 151 160 to 161 169 171 173 181 190 to 191
    21|vlan batch 193 to 194 200 to 201 203 211 213 220 250 to 251 253 258 271
    22|vlan batch 273 281 283 905 to 907 912 to 917 919 to 920 922 to 924 926 931 934
    23|vlan batch 936 938 to 942 945 to 949 952 to 953 956 to 960 963 965 to 966 968 970 to 974 977
    24|vlan batch 982 985 to 986 990 1001 1003 1100 1108 1111 to 1112 1121 1125
    25|vlan batch 1138 1144 1152 1164 1166 1195 1264 1295 1395 1914
    26|vlan batch 2311 2340 to 2341 2733 3000 3005 3101 to 3102 3105 to 3108 3111 3114 3119 to 3121
    27|vlan batch 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3167 3203 3207 to 3208 3252 3256
    28|vlan batch 3261 3266 3341 3511 3532 to 3533 3540 to 3541 3550 3560 3571 3580 to 3581
    29|vlan batch 3592 3602 3790 to 3791 3902 3904 to 3906 3964 4000 to 4001 4012 4094
    30|#
    31|authentication-profile name default_authen_profile
    32| authentication ipv6-control enable
    33|authentication-profile name dot1x_authen_profile
    34| authentication ipv6-control enable
    35|authentication-profile name dot1xmac_authen_profile
    36| authentication ipv6-control enable
    37|authentication-profile name mac_authen_profile
    38| authentication ipv6-control enable
    39|authentication-profile name multi_authen_profile
    40| authentication ipv6-control enable
    41|authentication-profile name portal_authen_profile
    42| authentication ipv6-control enable
    43|#
    44|set save-configuration delay 1
    45|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    46|#
    47|http server-source all-interface
    48|#
    49|clock timezone Brasilia minus 03:00:00
    50|#
    51|ddr isolation disable
    52|#
    53|undo mac-address learning self-healing enable
    54|#
    55|capwap unknown-unicast cir 0
    56|#
    57|diffserv domain default
    58|#
    59|radius-server template default
    60|#
    61|bfd
    62|#
    63|mpls lsr-id 10.244.189.0
    64|mpls
    65| mpls te
    66| mpls rsvp-te
    67| mpls te cspf
    68|#
    69|mpls l2vpn
    70|#
    71|vsi VSI_21_CY_POP00_POP02_POA_OLT1 static
    72| pwsignal ldp
    73|  vsi-id 21
    74|  peer 10.244.188.2
    75|  traffic-statistics enable
    76| mtu 9000
    77| encapsulation ethernet
    78|#
    79|vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1 static
    80| pwsignal ldp
    81|  vsi-id 41
    82|  peer 10.244.188.19
    83|  traffic-statistics enable
    84| mtu 9000
    85| encapsulation ethernet
    86|#
    87|vsi VSI_3120_POP00_POP20_BGP1_CE20 static
    88| pwsignal ldp
    89|  vsi-id 3120
    90|  peer 10.244.188.20
    91| mtu 9000
    92| encapsulation ethernet
    93|#
    94|vsi VSI_161_CY_POP0-2_POP16_CA_OLT1 static
    95| pwsignal ldp
    96|  vsi-id 161
    97|  peer 10.244.189.3
    98|  traffic-statistics enable
    99| mtu 9000
   100| encapsulation ethernet
   101|#
   102|vsi VSI_169_CY_POP0-2_POP16_CA_RADI static
   103| pwsignal ldp
   104|  vsi-id 169
   105|  peer 10.244.189.3
   106|  traffic-statistics enable
   107| mtu 9000
   108| encapsulation ethernet
   109|#
   110|vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1 static
   111| pwsignal ldp
   112|  vsi-id 31
   113|  peer 10.244.189.3
   114|  traffic-statistics enable
   115| mtu 9000
   116| encapsulation ethernet
   117|#
   118|vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
   119| pwsignal ldp
   120|  vsi-id 61
   121|  peer 10.244.188.7
   122|  traffic-statistics enable
   123| mtu 9000
   124| encapsulation ethernet
   125|#
   126|vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1 static
   127| pwsignal ldp
   128|  vsi-id 91
   129|  peer 10.244.189.3
   130|  traffic-statistics enable
   131| mtu 9000
   132| encapsulation ethernet
   133|#
   134|vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1 static
   135| pwsignal ldp
   136|  vsi-id 101
   137|  peer 10.244.189.10
   138|  traffic-statistics enable
   139| mtu 9000
   140| encapsulation ethernet
   141|#
   142|vsi VSI_160_CY_POP0-2_POP16_CA_MGNT static
   143| pwsignal ldp
   144|  vsi-id 160
   145|  peer 10.244.189.3
   146|  traffic-statistics enable
   147| mtu 9000
   148| encapsulation ethernet
   149|#
   150|vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT static
   151| pwsignal ldp
   152|  vsi-id 90
   153|  peer 10.244.189.3
   154|  traffic-statistics enable
   155| mtu 9000
   156| encapsulation ethernet
   157|#
   158|vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
   159| pwsignal ldp
   160|  vsi-id 60
   161|  peer 10.244.188.7
   162|  traffic-statistics enable
   163| mtu 9000
   164| encapsulation ethernet
   165|#
   166|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   167| pwsignal ldp
   168|  vsi-id 30
   169|  peer 10.244.189.3
   170|  traffic-statistics enable
   171| mtu 9000
   172| encapsulation ethernet
   173|#
   174|vsi VSI_71_CY_POP0-2_POP07_STE_OLT1 static
   175| pwsignal ldp
   176|  vsi-id 71
   177|  peer 10.244.188.7
   178|  traffic-statistics enable
   179| mtu 9000
   180| encapsulation ethernet
   181|#
   182|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
   183| pwsignal ldp
   184|  vsi-id 121
   185|  peer 10.244.189.12
   186|  traffic-statistics enable
   187| mtu 9000
   188| encapsulation ethernet
   189|#
   190|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
   191| pwsignal ldp
   192|  vsi-id 120
   193|  peer 10.244.189.12
   194|  traffic-statistics enable
   195| mtu 9000
   196| encapsulation ethernet
   197|#
   198|vsi VSI_70_CY_POP0-2_POP07_STE_MGNT static
   199| pwsignal ldp
   200|  vsi-id 70
   201|  peer 10.244.188.7
   202|  traffic-statistics enable
   203| mtu 9000
   204| encapsulation ethernet
   205|#
   206|vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT static
   207| pwsignal ldp
   208|  vsi-id 100
   209|  peer 10.244.189.10
   210|  traffic-statistics enable
   211| mtu 9000
   212| encapsulation ethernet
   213|#
   214|vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
   215| pwsignal ldp
   216|  vsi-id 130
   217|  peer 10.244.188.2
   218|  peer 10.244.189.65
   219|  traffic-statistics enable
   220| mtu 9000
   221| encapsulation ethernet
   222|#
   223|vsi VSI_81_POP0-2_POP08_FREITA_OLT1 static
   224| pwsignal ldp
   225|  vsi-id 81
   226|  peer 10.244.188.8
   227|  traffic-statistics enable
   228| mtu 9000
   229| encapsulation ethernet
   230|#
   231|vsi VSI_3153_CY_POP00_PROV_LM_CIVIL static
   232| pwsignal ldp
   233|  vsi-id 3153
   234|  peer 10.244.188.27
   235|  peer 10.244.188.28
   236|  traffic-statistics enable
   237| mtu 9000
   238| encapsulation ethernet
   239|#
   240|vsi VSI_3560_TRANS_PPPOE_POWERNET static
   241| pwsignal ldp
   242|  vsi-id 3560
   243|  peer 10.244.188.125
   244|  peer 10.244.188.27
   245| mtu 9000
   246| encapsulation ethernet
   247|#
   248|vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
   249| pwsignal ldp
   250|  vsi-id 23
   251|  peer 10.244.188.2
   252|  traffic-statistics enable
   253| mtu 9000
   254| encapsulation ethernet
   255|#
   256|vsi VSI_253_CY_POP0-2_POP25_PO_OLT1 static
   257| pwsignal ldp
   258|  vsi-id 253
   259|  peer 10.244.188.125
   260|  traffic-statistics enable
   261| mtu 9000
   262| encapsulation ethernet
   263|#
   264|vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
   265| pwsignal ldp
   266|  vsi-id 258
   267|  peer 10.244.188.125
   268|  traffic-statistics enable
   269| mtu 9000
   270| encapsulation ethernet
   271|#
   272|vsi VSI_110_POP00_02_POP11_VI_MGNT static
   273| pwsignal ldp
   274|  vsi-id 110
   275|  peer 10.244.189.11
   276|  traffic-statistics enable
   277| mtu 9000
   278| encapsulation ethernet
   279|#
   280|vsi VSI_111_POP00_02_POP11_VI_OLT1 static
   281| pwsignal ldp
   282|  vsi-id 111
   283|  peer 10.244.188.11
   284|  peer 10.244.188.11 pw POP00_POP11_ANT
   285|  peer 10.244.189.11
   286|  traffic-statistics enable
   287| mtu 9000
   288| encapsulation ethernet
   289|#
   290|vsi VSI_971_POP21_POP00_TR_PREF_SAP static
   291| pwsignal ldp
   292|  vsi-id 971
   293|  peer 10.244.188.21
   294| mtu 9000
   295| encapsulation ethernet
   296|#
   297|vsi VSI_3155_CY_POP00_PROV_LM_V_MAR static
   298| pwsignal ldp
   299|  vsi-id 3155
   300|  peer 10.244.188.28
   301|  peer 10.244.189.28
   302| mtu 9000
   303| encapsulation ethernet
   304|#
   305|vsi VSI_3154_CY_POP00_PROV_LM_V_RIC static
   306| pwsignal ldp
   307|  vsi-id 3154
   308|  peer 10.244.188.28
   309|  peer 10.244.189.28
   310| mtu 9000
   311| encapsulation ethernet
   312|#
   313|vsi VSI3906_PNI_META_POP00_CYBER static
   314| pwsignal ldp
   315|  vsi-id 3906
   316|  peer 10.244.188.1
   317| mtu 8000
   318| encapsulation ethernet
   319|#
   320|vsi VSI_3160_CY_POP00_PROV_NIC_TELE static
   321| pwsignal ldp
   322|  vsi-id 3160
   323|  peer 10.244.188.15
   324|  peer 10.244.189.15
   325| mtu 9000
   326| encapsulation ethernet
   327|#
   328|vsi VSI_113_POP00_02_POP11_VI_OLT1 static
   329| pwsignal ldp
   330|  vsi-id 113
   331|  peer 10.244.188.11
   332|  peer 10.244.189.11
   333|  traffic-statistics enable
   334| mtu 9000
   335| encapsulation ethernet
   336|#
   337|vsi VSI_150_CY_POP00_POP15_EXP_MGNT static
   338| pwsignal ldp
   339|  vsi-id 150
   340|  peer 10.244.189.15
   341|  traffic-statistics enable
   342| mtu 9000
   343| encapsulation ethernet
   344|#
   345|vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
   346| pwsignal ldp
   347|  vsi-id 3571
   348|  peer 10.244.188.20
   349|  traffic-statistics enable
   350| mtu 9000
   351| encapsulation ethernet
   352|#
   353|vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
   354| pwsignal ldp
   355|  vsi-id 151
   356|  peer 10.244.188.15
   357|  peer 10.244.189.15
   358|  traffic-statistics enable
   359| mtu 9000
   360| encapsulation ethernet
   361|#
   362|vsi VSI_3143_CY_POP00_PROV_AS52917 static
   363| pwsignal ldp
   364|  vsi-id 3143
   365|  peer 10.244.188.43
   366| mtu 9000
   367| encapsulation ethernet
   368|#
   369|vsi VSI_50_POP0-2_POP05_M_RIN_MGNT static
   370| pwsignal ldp
   371|  vsi-id 50
   372|  peer 10.244.188.5
   373|  traffic-statistics enable
   374| mtu 9000
   375| encapsulation ethernet
   376|#
   377|vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
   378| pwsignal ldp
   379|  vsi-id 51
   380|  peer 10.244.188.5
   381|  traffic-statistics enable
   382| mtu 9000
   383| encapsulation ethernet
   384|#
   385|vsi VSI_3150_POP00_PROV_VPM_MAIOLI static
   386| pwsignal ldp
   387|  vsi-id 3150
   388|  peer 10.244.188.50
   389|  traffic-statistics enable
   390| mtu 9000
   391| encapsulation ethernet
   392|#
   393|vsi VSI_3162_POP00_PROV_EQUATORIAL static
   394| pwsignal ldp
   395|  vsi-id 3162
   396|  peer 10.244.188.62
   397|  traffic-statistics enable
   398| mtu 9000
   399| encapsulation ethernet
   400|#
   401|vsi VSI_16_SERVIDORES_IP_PUBLICOS static
   402| pwsignal ldp
   403|  vsi-id 16
   404|  peer 10.244.188.20
   405| mtu 9000
   406| encapsulation ethernet
   407|#
   408|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
   409| pwsignal ldp
   410|  vsi-id 3581
   411|  peer 10.244.188.59
   412| mtu 9000
   413| encapsulation ethernet
   414|#
   415|vsi VSI_3261_POP00-02_PROV_VALESAT static
   416| pwsignal ldp
   417|  vsi-id 3261
   418|  peer 10.244.188.17
   419|  traffic-statistics enable
   420| mtu 9000
   421| encapsulation ethernet
   422|#
   423|vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
   424| pwsignal ldp
   425|  vsi-id 4000
   426|  peer 10.244.188.2
   427|  traffic-statistics enable
   428| mtu 9000
   429| encapsulation ethernet
   430|#
   431|vsi VSI_3252_POP00-02_PROV_BLUSTELE static
   432| pwsignal ldp
   433|  vsi-id 3252
   434|  peer 10.244.188.2
   435|  traffic-statistics enable
   436| mtu 9000
   437| encapsulation ethernet
   438|#
   439|vsi VSI_3266_POP00-02_PROV_WIANETSU static
   440| pwsignal ldp
   441|  vsi-id 3266
   442|  peer 10.244.188.2
   443|  traffic-statistics enable
   444| mtu 9000
   445| encapsulation ethernet
   446|#
   447|vsi VSI_3203_POP04_POP00_IXRS_BLUS static
   448| pwsignal ldp
   449|  vsi-id 3203
   450|  peer 10.244.188.4
   451|  traffic-statistics enable
   452| mtu 8000
   453| encapsulation ethernet
   454|#
   455|vsi VSI_3207_POP00_POP04_IXRS_CYBER static
   456| pwsignal ldp
   457|  vsi-id 3207
   458|  peer 10.244.188.4
   459|  traffic-statistics enable
   460| mtu 8000
   461| encapsulation ethernet
   462|#
   463|vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT static
   464| pwsignal ldp
   465|  vsi-id 80
   466|  peer 10.244.188.8
   467|  traffic-statistics enable
   468| mtu 9000
   469| encapsulation ethernet
   470|#
   471|vsi VSI_1003_BGP1_CYBER_CE03_CYBER static
   472| pwsignal ldp
   473|  vsi-id 1003
   474|  peer 10.244.188.17
   475|  traffic-statistics enable
   476| mtu 9000
   477| encapsulation ethernet
   478|#
   479|vsi VSI190_CY_POP0-2_POP19_HIP_MGNT static
   480| pwsignal ldp
   481|  vsi-id 190
   482|  peer 10.244.188.19
   483|  traffic-statistics enable
   484| mtu 9000
   485| encapsulation ethernet
   486|#
   487|vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4 static
   488| pwsignal ldp
   489|  vsi-id 3790
   490|  peer 10.244.188.1
   491|  traffic-statistics enable
   492| mtu 8000
   493| encapsulation ethernet
   494|#
   495|vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6 static
   496| pwsignal ldp
   497|  vsi-id 3791
   498|  peer 10.244.188.1
   499|  traffic-statistics enable
   500| mtu 8000
   501| encapsulation ethernet
   502|#
   503|vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
   504| pwsignal ldp
   505|  vsi-id 131
   506|  peer 10.244.188.13
   507|  traffic-statistics enable
   508| mtu 9000
   509| encapsulation ethernet
   510|#
   511|vsi VSI_3005_TRANSP_TELIU_STA_CASA static
   512| pwsignal ldp
   513|  vsi-id 3005
   514|  peer 10.244.188.2
   515|  traffic-statistics enable
   516| mtu 9000
   517| encapsulation ethernet
   518|#
   519|vsi VSI3904_PNI_META_POP00_CYBER static
   520| pwsignal ldp
   521|  vsi-id 3904
   522|  peer 10.244.188.1
   523| mtu 8000
   524| encapsulation ethernet
   525|#
   526|vsi VSI_3000_CYB_POP00-17_BGP1_BGP1 static
   527| pwsignal ldp
   528|  vsi-id 3000
   529|  peer 10.244.188.17
   530| mtu 9000
   531| encapsulation ethernet
   532|#
   533|vsi VSI_959_POP00_POP08_TRANSP_VERO static
   534| pwsignal ldp
   535|  vsi-id 959
   536|  peer 10.244.188.8
   537|  traffic-statistics enable
   538| mtu 9000
   539| encapsulation ethernet
   540|#
   541|vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA static
   542| pwsignal ldp
   543|  vsi-id 3532
   544|  peer 10.244.188.21
   545| mtu 9000
   546| encapsulation ethernet
   547|#
   548|vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA static
   549| pwsignal ldp
   550|  vsi-id 3533
   551|  peer 10.244.188.21
   552| mtu 9000
   553| encapsulation ethernet
   554|#
   555|vsi VSI_39_POP0-02_POP03_M_FLO_RADI static
   556| pwsignal ldp
   557|  vsi-id 39
   558|  peer 10.244.189.3
   559| mtu 9000
   560| encapsulation ethernet
   561|#
   562|vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
   563| pwsignal ldp
   564|  vsi-id 193
   565|  peer 10.244.188.19
   566|  traffic-statistics enable
   567| mtu 9000
   568| encapsulation ethernet
   569|#
   570|vsi VSI_3167_POP00_PROV_LUCFIBRA_L1 static
   571| pwsignal ldp
   572|  vsi-id 3167
   573|  peer 10.244.188.67
   574| mtu 9000
   575| encapsulation ethernet
   576|#
   577|vsi VSI_271_SC_POP0-2_POP27_CI_OLT1 static
   578| pwsignal ldp
   579|  vsi-id 271
   580|  peer 10.244.188.27
   581| mtu 9000
   582| encapsulation ethernet
   583|#
   584|vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
   585| pwsignal ldp
   586|  vsi-id 273
   587|  peer 10.244.188.27
   588| mtu 9000
   589| encapsulation ethernet
   590|#
   591|vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
   592| pwsignal ldp
   593|  vsi-id 11
   594|  peer 10.244.188.2
   595|  traffic-statistics enable
   596| mtu 9000
   597| encapsulation ethernet
   598|#
   599|vsi VSI_3902_EQUIN_POP00_CYBER_BGP1 static
   600| pwsignal ldp
   601|  vsi-id 3902
   602|  peer 10.244.188.1
   603|  traffic-statistics enable
   604| mtu 8000
   605| encapsulation ethernet
   606|#
   607|vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
   608| pwsignal ldp
   609|  vsi-id 12
   610|  peer 10.244.188.2
   611|  traffic-statistics enable
   612| mtu 9000
   613| encapsulation ethernet
   614|#
   615|vsi VSI_3107_POP00_POP02_TR_POA_SEG static
   616| pwsignal ldp
   617|  vsi-id 3107
   618|  peer 10.244.188.2
   619|  peer 10.244.188.125
   620|  peer 10.244.188.19
   621|  peer 10.244.188.17
   622|  peer 10.244.189.65
   623|  peer 10.244.188.20
   624|  peer 10.244.188.21
   625|  peer 10.244.189.11
   626|  peer 10.244.188.13
   627|  traffic-statistics enable
   628| mtu 9000
   629| encapsulation ethernet
   630|#
   631|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
   632| pwsignal ldp
   633|  vsi-id 3114
   634|  peer 10.244.189.14
   635|  traffic-statistics enable
   636| mtu 9000
   637| encapsulation ethernet
   638|#
   639|vsi VSI_3101_POP00_TRANS_CAM_SAPUCA static
   640| pwsignal ldp
   641|  vsi-id 3101
   642|  peer 10.244.188.8
   643|  peer 10.244.188.125
   644|  peer 10.244.188.15
   645|  peer 10.244.188.5
   646|  peer 10.244.188.22
   647|  traffic-statistics enable
   648| mtu 9000
   649| encapsulation ethernet
   650|#
   651|vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
   652| pwsignal ldp
   653|  vsi-id 3105
   654|  peer 10.244.188.2
   655|  peer 10.244.188.19
   656|  peer 10.244.188.4
   657|  peer 10.244.188.17
   658|  peer 10.244.188.125
   659|  peer 10.244.189.65
   660|  peer 10.244.188.20
   661|  peer 10.244.188.21
   662|  peer 10.244.189.11
   663|  traffic-statistics enable
   664| mtu 9000
   665| encapsulation ethernet
   666|#
   667|vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
   668| pwsignal ldp
   669|  vsi-id 3106
   670|  peer 10.244.188.2
   671|  peer 10.244.188.20
   672|  peer 10.244.189.11
   673|  traffic-statistics enable
   674| mtu 9000
   675| encapsulation ethernet
   676|#
   677|vsi VSI_3102_POP00_TRANS_CAM_SAPUCA static
   678| pwsignal ldp
   679|  vsi-id 3102
   680|  peer 10.244.188.125
   681|  peer 10.244.188.21
   682|  peer 10.244.188.22
   683|  traffic-statistics enable
   684| mtu 9000
   685| encapsulation ethernet
   686|#
   687|vsi VSI3511_POP12_TR_FENIX_CYBER_RN static
   688| pwsignal ldp
   689|  vsi-id 3511
   690|  peer 10.244.189.12
   691|  traffic-statistics enable
   692| mtu 9000
   693| encapsulation ethernet
   694|#
   695|vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
   696| pwsignal ldp
   697|  vsi-id 3341
   698|  peer 10.244.188.17
   699|  peer 10.244.188.62
   700|  peer 10.244.188.67
   701|  peer 10.244.188.19
   702|  peer 10.244.188.2
   703|  peer 10.244.189.11
   704|  peer 10.244.188.21
   705|  peer 10.244.188.44
   706|  traffic-statistics enable
   707| mtu 9000
   708| encapsulation ethernet
   709|#
   710|vsi VSI_3256_TRANSP_TELIU_DEDICADOS static
   711| pwsignal ldp
   712|  vsi-id 3256
   713|  peer 10.244.188.2
   714|  traffic-statistics enable
   715| mtu 9000
   716| encapsulation ethernet
   717|#
   718|vsi VSI_3163_POP00-02_POP63_VILLELA static
   719| pwsignal ldp
   720|  vsi-id 3163
   721|  peer 10.244.188.19
   722|  traffic-statistics enable
   723| mtu 9000
   724| encapsulation ethernet
   725|#
   726|vsi VSI_3149_CY_POP00_PROV_AS270998 static
   727| pwsignal ldp
   728|  vsi-id 3149
   729|  peer 10.244.188.49
   730|  traffic-statistics enable
   731| mtu 9000
   732| encapsulation ethernet
   733|#
   734|vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
   735| pwsignal ldp
   736|  vsi-id 17
   737|  peer 10.244.188.2
   738|  traffic-statistics enable
   739| mtu 9000
   740| encapsulation ethernet
   741|#
   742|vsi VSI_3108_POP00_POP02_TR_POA_SEG static
   743| pwsignal ldp
   744|  vsi-id 3108
   745|  peer 10.244.188.2
   746|  peer 10.244.188.18
   747|  traffic-statistics enable
   748| mtu 9000
   749| encapsulation ethernet
   750|#
   751|vsi VSI_181_POP0-2_POP18_CEIC_OLT1 static
   752| pwsignal ldp
   753|  vsi-id 181
   754|  peer 10.244.188.18
   755|  traffic-statistics enable
   756| mtu 9000
   757| encapsulation ethernet
   758|#
   759|vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT static
   760| pwsignal ldp
   761|  vsi-id 40
   762|  peer 10.244.188.19
   763|  traffic-statistics enable
   764| mtu 9000
   765| encapsulation ethernet
   766|#
   767|vsi VSI191_CY_POP0-2_POP19_HIP_OLT1 static
   768| pwsignal ldp
   769|  vsi-id 191
   770|  peer 10.244.188.19
   771|  traffic-statistics enable
   772| mtu 9000
   773| encapsulation ethernet
   774|#
   775|vsi VSI_140_POP0-2_POP14_LGRAN_OLT1 static
   776| description VLAN_140_POP14_OLT1
   777| pwsignal ldp
   778|  vsi-id 140
   779|  peer 10.244.189.14
   780|  traffic-statistics enable
   781| mtu 9000
   782| encapsulation ethernet
   783|#
   784|vsi VSI194_POP0-2_POP19_HIPIC_RSSUL static
   785| pwsignal ldp
   786|  vsi-id 194
   787|  peer 10.244.188.19
   788|  traffic-statistics enable
   789| mtu 9000
   790| encapsulation ethernet
   791|#
   792|vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
   793| pwsignal ldp
   794|  vsi-id 171
   795|  peer 10.244.188.17
   796|  traffic-statistics enable
   797| mtu 9000
   798| encapsulation ethernet
   799|#
   800|vsi VSI173_CY_POP0-2_POP17_ELE_OLT1 static
   801| pwsignal ldp
   802|  vsi-id 173
   803|  peer 10.244.188.17
   804|  traffic-statistics enable
   805| mtu 9000
   806| encapsulation ethernet
   807|#
   808|vsi VSI_13_CY_POP00_POP02_SAP_OLT1 static
   809| pwsignal ldp
   810|  vsi-id 13
   811|  peer 10.244.188.2
   812|  peer 10.244.188.49
   813|  traffic-statistics enable
   814| mtu 9000
   815| encapsulation ethernet
   816|#
   817|vsi VSI_281_SC_POP0-2_POP28_VR_OLT1 static
   818| pwsignal ldp
   819|  vsi-id 281
   820|  peer 10.244.189.28
   821| mtu 9000
   822| encapsulation ethernet
   823|#
   824|vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
   825| pwsignal ldp
   826|  vsi-id 141
   827|  peer 10.244.189.14
   828|  traffic-statistics enable
   829| mtu 9000
   830| encapsulation ethernet
   831|#
   832|vsi VSI_18_CY_POP00_POP02_SAP_RADI static
   833| pwsignal ldp
   834|  vsi-id 18
   835|  peer 10.244.188.2
   836|  traffic-statistics enable
   837| mtu 9000
   838| encapsulation ethernet
   839|#
   840|vsi VSI3119_POP00_TRAN_PROV_NEGETTI static
   841| pwsignal ldp
   842|  vsi-id 3119
   843|  peer 10.244.188.27
   844|  traffic-statistics enable
   845| mtu 9000
   846| encapsulation ethernet
   847|#
   848|vsi VSI_3208_PNI_GGC_ASN273461 static
   849| pwsignal ldp
   850|  vsi-id 3208
   851|  peer 10.244.188.1
   852|  traffic-statistics enable
   853| mtu 8000
   854| encapsulation ethernet
   855|#
   856|vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
   857| pwsignal ldp
   858|  vsi-id 4012
   859|  peer 10.244.188.2
   860|  traffic-statistics enable
   861| mtu 9000
   862| encapsulation ethernet
   863|#
   864|vsi VSI_3540_POP00-02_TRAN_MEDIANET static
   865| pwsignal ldp
   866|  vsi-id 3540
   867|  peer 10.244.188.5
   868|  traffic-statistics enable
   869| mtu 9000
   870| encapsulation ethernet
   871|#
   872|vsi VSI_73_CY_POP0-2_POP07_STE_OLT1 static
   873| pwsignal ldp
   874|  vsi-id 73
   875|  peer 10.244.188.7
   876|  traffic-statistics enable
   877| mtu 9000
   878| encapsulation ethernet
   879|#
   880|vsi VSI_3541_POP00-02_TRAN_MEDIANET static
   881| pwsignal ldp
   882|  vsi-id 3541
   883|  peer 10.244.188.5
   884|  traffic-statistics enable
   885| mtu 9000
   886| encapsulation ethernet
   887|#
   888|vsi VSI_1914_SEABORN_L1_ASN273461 static
   889| pwsignal ldp
   890|  vsi-id 1914
   891|  peer 10.244.188.17
   892|  traffic-statistics enable
   893| mtu 9000
   894| encapsulation ethernet
   895|#
   896|vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1 static
   897| pwsignal ldp
   898|  vsi-id 83
   899|  peer 10.244.188.8
   900|  traffic-statistics enable
   901| mtu 9000
   902| encapsulation ethernet
   903|#
   904|vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1 static
   905| pwsignal ldp
   906|  vsi-id 201
   907|  peer 10.244.188.20
   908|  traffic-statistics enable
   909| mtu 9000
   910| encapsulation ethernet
   911|#
   912|vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1 static
   913| pwsignal ldp
   914|  vsi-id 203
   915|  peer 10.244.188.20
   916|  traffic-statistics enable
   917| mtu 9000
   918| encapsulation ethernet
   919|#
   920|vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT static
   921| pwsignal ldp
   922|  vsi-id 200
   923|  peer 10.244.188.20
   924|  traffic-statistics enable
   925| mtu 9000
   926| encapsulation ethernet
   927|#
   928|vsi VSI_1395_POP00_POP95_DGT_SSP static
   929| pwsignal ldp
   930|  vsi-id 1395
   931|  peer 10.244.188.95
   932|  traffic-statistics enable
   933| mtu 1600
   934| encapsulation ethernet
   935|#
   936|vsi VSI_3147_BGP1CYBE_PROV_IDENTITY static
   937| pwsignal ldp
   938|  vsi-id 3147
   939|  peer 10.244.188.47
   940| mtu 9000
   941| encapsulation ethernet
   942|#
   943|vsi VSI_250_CY_POP0-2_POP25_PO_MGNT static
   944| pwsignal ldp
   945|  vsi-id 250
   946|  peer 10.244.188.125
   947| mtu 9000
   948| encapsulation ethernet
   949|#
   950|vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA static
   951| pwsignal ldp
   952|  vsi-id 3111
   953|  peer 10.244.188.60
   954|  traffic-statistics enable
   955| mtu 9000
   956| encapsulation ethernet
   957|#
   958|vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
   959| pwsignal ldp
   960|  vsi-id 133
   961|  peer 10.244.188.13
   962|  traffic-statistics enable
   963| mtu 9000
   964| encapsulation ethernet
   965|#
   966|vsi VSI_283_CY_POP0-2_POP28_VR_OLT1 static
   967| pwsignal ldp
   968|  vsi-id 283
   969|  peer 10.244.189.28
   970| mtu 9000
   971| encapsulation ethernet
   972|#
   973|vsi VSI_213_POP0-2_POP21_PREF_SAPUC static
   974| pwsignal ldp
   975|  vsi-id 213
   976|  peer 10.244.188.21
   977|  traffic-statistics enable
   978| mtu 9000
   979| encapsulation ethernet
   980|#
   981|vsi VSI3121_POP0-2_POP21_PREF_SAPUC static
   982| pwsignal ldp
   983|  vsi-id 3121
   984|  peer 10.244.188.21
   985|  traffic-statistics enable
   986| mtu 9000
   987| encapsulation ethernet
   988|#
   989|vsi VSI_965_POP21_POP00_TR_PREF_SAP static
   990| pwsignal ldp
   991|  vsi-id 965
   992|  peer 10.244.188.21
   993| mtu 9000
   994| encapsulation ethernet
   995|#
   996|vsi VSI_970_POP21_POP00_TR_PREF_SAP static
   997| pwsignal ldp
   998|  vsi-id 970
   999|  peer 10.244.188.21
  1000| mtu 9000
  1001| encapsulation ethernet
  1002|#
  1003|vsi VSI_905_POP21_POP00_TR_PREF_SAP static
  1004| pwsignal ldp
  1005|  vsi-id 905
  1006|  peer 10.244.188.21
  1007| mtu 9000
  1008| encapsulation ethernet
  1009|#
  1010|vsi VSI_906_POP21_POP00_TR_PREF_SAP static
  1011| pwsignal ldp
  1012|  vsi-id 906
  1013|  peer 10.244.188.21
  1014| mtu 9000
  1015| encapsulation ethernet
  1016|#
  1017|vsi VSI_907_POP21_POP00_TR_PREF_SAP static
  1018| pwsignal ldp
  1019|  vsi-id 907
  1020|  peer 10.244.188.21
  1021|  traffic-statistics enable
  1022| mtu 9000
  1023| encapsulation ethernet
  1024|#
  1025|vsi VSI_912_POP21_POP00_TR_PREF_SAP static
  1026| pwsignal ldp
  1027|  vsi-id 912
  1028|  peer 10.244.188.21
  1029|  traffic-statistics enable
  1030| mtu 9000
  1031| encapsulation ethernet
  1032|#
  1033|vsi VSI_913_POP21_POP00_TR_PREF_SAP static
  1034| pwsignal ldp
  1035|  vsi-id 913
  1036|  peer 10.244.188.21
  1037|  traffic-statistics enable
  1038| mtu 9000
  1039| encapsulation ethernet
  1040|#
  1041|vsi VSI_914_POP21_POP00_TR_PREF_SAP static
  1042| pwsignal ldp
  1043|  vsi-id 914
  1044|  peer 10.244.188.21
  1045|  traffic-statistics enable
  1046| mtu 9000
  1047| encapsulation ethernet
  1048|#
  1049|vsi VSI_915_POP21_POP00_TR_PREF_SAP static
  1050| pwsignal ldp
  1051|  vsi-id 915
  1052|  peer 10.244.188.21
  1053|  traffic-statistics enable
  1054| mtu 9000
  1055| encapsulation ethernet
  1056|#
  1057|vsi VSI_916_POP21_POP00_TR_PREF_SAP static
  1058| pwsignal ldp
  1059|  vsi-id 916
  1060|  peer 10.244.188.21
  1061|  traffic-statistics enable
  1062| mtu 9000
  1063| encapsulation ethernet
  1064|#
  1065|vsi VSI_917_POP21_POP00_TR_PREF_SAP static
  1066| pwsignal ldp
  1067|  vsi-id 917
  1068|  peer 10.244.188.21
  1069|  traffic-statistics enable
  1070| mtu 9000
  1071| encapsulation ethernet
  1072|#
  1073|vsi VSI_919_POP21_POP00_TR_PREF_SAP static
  1074| pwsignal ldp
  1075|  vsi-id 919
  1076|  peer 10.244.188.21
  1077|  traffic-statistics enable
  1078| mtu 9000
  1079| encapsulation ethernet
  1080|#
  1081|vsi VSI_920_POP21_POP00_TR_PREF_SAP static
  1082| pwsignal ldp
  1083|  vsi-id 920
  1084|  peer 10.244.188.21
  1085|  traffic-statistics enable
  1086| mtu 9000
  1087| encapsulation ethernet
  1088|#
  1089|vsi VSI_922_POP21_POP00_TR_PREF_SAP static
  1090| pwsignal ldp
  1091|  vsi-id 922
  1092|  peer 10.244.188.21
  1093|  traffic-statistics enable
  1094| mtu 9000
  1095| encapsulation ethernet
  1096|#
  1097|vsi VSI_923_POP21_POP00_TR_PREF_SAP static
  1098| pwsignal ldp
  1099|  vsi-id 923
  1100|  peer 10.244.188.21
  1101|  traffic-statistics enable
  1102| mtu 9000
  1103| encapsulation ethernet
  1104|#
  1105|vsi VSI_924_POP21_POP00_TR_PREF_SAP static
  1106| pwsignal ldp
  1107|  vsi-id 924
  1108|  peer 10.244.188.21
  1109|  traffic-statistics enable
  1110| mtu 9000
  1111| encapsulation ethernet
  1112|#
  1113|vsi VSI_926_POP21_POP00_TR_PREF_SAP static
  1114| pwsignal ldp
  1115|  vsi-id 926
  1116|  peer 10.244.188.21
  1117|  traffic-statistics enable
  1118| mtu 9000
  1119| encapsulation ethernet
  1120|#
  1121|vsi VSI_977_POP21_POP00_TR_PREF_SAP static
  1122| pwsignal ldp
  1123|  vsi-id 977
  1124|  peer 10.244.188.21
  1125| mtu 9000
  1126| encapsulation ethernet
  1127|#
  1128|vsi VSI_972_POP21_POP00_TR_PREF_SAP static
  1129| pwsignal ldp
  1130|  vsi-id 972
  1131|  peer 10.244.188.21
  1132| mtu 9000
  1133| encapsulation ethernet
  1134|#
  1135|vsi VSI_931_POP21_POP00_TR_PREF_SAP static
  1136| pwsignal ldp
  1137|  vsi-id 931
  1138|  peer 10.244.188.21
  1139|  traffic-statistics enable
  1140| mtu 9000
  1141| encapsulation ethernet
  1142|#
  1143|vsi VSI_934_POP21_POP00_TR_PREF_SAP static
  1144| pwsignal ldp
  1145|  vsi-id 934
  1146|  peer 10.244.188.21
  1147|  traffic-statistics enable
  1148| mtu 9000
  1149| encapsulation ethernet
  1150|#
  1151|vsi VSI_936_POP21_POP00_TR_PREF_SAP static
  1152| pwsignal ldp
  1153|  vsi-id 936
  1154|  peer 10.244.188.21
  1155|  traffic-statistics enable
  1156| mtu 9000
  1157| encapsulation ethernet
  1158|#
  1159|vsi VSI_938_POP21_POP00_TR_PREF_SAP static
  1160| pwsignal ldp
  1161|  vsi-id 938
  1162|  peer 10.244.188.21
  1163| mtu 9000
  1164| encapsulation ethernet
  1165|#
  1166|vsi VSI_939_POP21_POP00_TR_PREF_SAP static
  1167| pwsignal ldp
  1168|  vsi-id 939
  1169|  peer 10.244.188.21
  1170| mtu 9000
  1171| encapsulation ethernet
  1172|#
  1173|vsi VSI_940_POP21_POP00_TR_PREF_SAP static
  1174| pwsignal ldp
  1175|  vsi-id 940
  1176|  peer 10.244.188.21
  1177| mtu 9000
  1178| encapsulation ethernet
  1179|#
  1180|vsi VSI_941_POP21_POP00_TR_PREF_SAP static
  1181| pwsignal ldp
  1182|  vsi-id 941
  1183|  peer 10.244.188.21
  1184| mtu 9000
  1185| encapsulation ethernet
  1186|#
  1187|vsi VSI_942_POP21_POP00_TR_PREF_SAP static
  1188| pwsignal ldp
  1189|  vsi-id 942
  1190|  peer 10.244.188.21
  1191| mtu 9000
  1192| encapsulation ethernet
  1193|#
  1194|vsi VSI_945_POP21_POP00_TR_PREF_SAP static
  1195| pwsignal ldp
  1196|  vsi-id 945
  1197|  peer 10.244.188.21
  1198| mtu 9000
  1199| encapsulation ethernet
  1200|#
  1201|vsi VSI_946_POP21_POP00_TR_PREF_SAP static
  1202| pwsignal ldp
  1203|  vsi-id 946
  1204|  peer 10.244.188.21
  1205| mtu 9000
  1206| encapsulation ethernet
  1207|#
  1208|vsi VSI_947_POP21_POP00_TR_PREF_SAP static
  1209| pwsignal ldp
  1210|  vsi-id 947
  1211|  peer 10.244.188.21
  1212| mtu 9000
  1213| encapsulation ethernet
  1214|#
  1215|vsi VSI_948_POP21_POP00_TR_PREF_SAP static
  1216| pwsignal ldp
  1217|  vsi-id 948
  1218|  peer 10.244.188.21
  1219| mtu 9000
  1220| encapsulation ethernet
  1221|#
  1222|vsi VSI_949_POP21_POP00_TR_PREF_SAP static
  1223| pwsignal ldp
  1224|  vsi-id 949
  1225|  peer 10.244.188.21
  1226| mtu 9000
  1227| encapsulation ethernet
  1228|#
  1229|vsi VSI_952_POP21_POP00_TR_PREF_SAP static
  1230| pwsignal ldp
  1231|  vsi-id 952
  1232|  peer 10.244.188.21
  1233| mtu 9000
  1234| encapsulation ethernet
  1235|#
  1236|vsi VSI_953_POP21_POP00_TR_PREF_SAP static
  1237| pwsignal ldp
  1238|  vsi-id 953
  1239|  peer 10.244.188.21
  1240| mtu 9000
  1241| encapsulation ethernet
  1242|#
  1243|vsi VSI_956_POP21_POP00_TR_PREF_SAP static
  1244| pwsignal ldp
  1245|  vsi-id 956
  1246|  peer 10.244.188.21
  1247| mtu 9000
  1248| encapsulation ethernet
  1249|#
  1250|vsi VSI_957_POP21_POP00_TR_PREF_SAP static
  1251| pwsignal ldp
  1252|  vsi-id 957
  1253|  peer 10.244.188.21
  1254| mtu 9000
  1255| encapsulation ethernet
  1256|#
  1257|vsi VSI_958_POP21_POP00_TR_PREF_SAP static
  1258| pwsignal ldp
  1259|  vsi-id 958
  1260|  peer 10.244.188.21
  1261| mtu 9000
  1262| encapsulation ethernet
  1263|#
  1264|vsi VSI_960_POP21_POP00_TR_PREF_SAP static
  1265| pwsignal ldp
  1266|  vsi-id 960
  1267|  peer 10.244.188.21
  1268| mtu 9000
  1269| encapsulation ethernet
  1270|#
  1271|vsi VSI_963_POP21_POP00_TR_PREF_SAP static
  1272| pwsignal ldp
  1273|  vsi-id 963
  1274|  peer 10.244.188.21
  1275| mtu 9000
  1276| encapsulation ethernet
  1277|#
  1278|vsi VSI_966_POP21_POP00_TR_PREF_SAP static
  1279| pwsignal ldp
  1280|  vsi-id 966
  1281|  peer 10.244.188.21
  1282| mtu 9000
  1283| encapsulation ethernet
  1284|#
  1285|vsi VSI_968_POP21_POP00_TR_PREF_SAP static
  1286| pwsignal ldp
  1287|  vsi-id 968
  1288|  peer 10.244.188.21
  1289| mtu 9000
  1290| encapsulation ethernet
  1291|#
  1292|vsi VSI_973_POP21_POP00_TR_PREF_SAP static
  1293| pwsignal ldp
  1294|  vsi-id 973
  1295|  peer 10.244.188.21
  1296| mtu 9000
  1297| encapsulation ethernet
  1298|#
  1299|vsi VSI_982_POP21_POP00_TR_PREF_SAP static
  1300| pwsignal ldp
  1301|  vsi-id 982
  1302|  peer 10.244.188.21
  1303| mtu 9000
  1304| encapsulation ethernet
  1305|#
  1306|vsi VSI_990_POP21_POP00_TR_PREF_SAP static
  1307| pwsignal ldp
  1308|  vsi-id 990
  1309|  peer 10.244.188.21
  1310| mtu 9000
  1311| encapsulation ethernet
  1312|#
  1313|vsi VSI_3580_POP59_TR_INFRAWEB_PPOE static
  1314| pwsignal ldp
  1315|  vsi-id 3580
  1316|  peer 10.244.188.59
  1317|  traffic-statistics enable
  1318| mtu 9000
  1319| encapsulation ethernet
  1320|#
  1321|vsi VSI_3151_POP00_PROV_ARROBANET static
  1322| pwsignal ldp
  1323|  vsi-id 3151
  1324|  peer 10.244.188.51
  1325| mtu 9000
  1326| encapsulation ethernet
  1327|#
  1328|vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
  1329| pwsignal ldp
  1330|  vsi-id 53
  1331|  peer 10.244.188.5
  1332| mtu 9000
  1333| encapsulation ethernet
  1334|#
  1335|vsi VSI_985_POP21_POP00_TR_PREF_SAP static
  1336| pwsignal ldp
  1337|  vsi-id 985
  1338|  peer 10.244.188.21
  1339| mtu 9000
  1340| encapsulation ethernet
  1341|#
  1342|vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
  1343| pwsignal ldp
  1344|  vsi-id 3964
  1345|  peer 10.244.188.2
  1346| mtu 9000
  1347| encapsulation ethernet
  1348|#
  1349|vsi VSI_986_POP21_POP00_TR_PREF_SAP static
  1350| pwsignal ldp
  1351|  vsi-id 986
  1352|  peer 10.244.188.21
  1353| mtu 9000
  1354| encapsulation ethernet
  1355|#
  1356|vsi VSI_3905_POP17-00_TR_CIRION_L1 static
  1357| pwsignal ldp
  1358|  vsi-id 3905
  1359|  peer 10.244.188.17
  1360|  traffic-statistics enable
  1361| mtu 9000
  1362| encapsulation ethernet
  1363|#
  1364|vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
  1365| pwsignal ldp
  1366|  vsi-id 3602
  1367|  peer 10.244.188.5
  1368| mtu 9000
  1369| encapsulation ethernet
  1370|#
  1371|vsi VSI_251_CY_POP0-2_POP25_CO_OLT1 static
  1372| pwsignal ldp
  1373|  vsi-id 251
  1374|  peer 10.244.188.125
  1375| mtu 9000
  1376| encapsulation ethernet
  1377|#
  1378|explicit-path SW1POP04-00_VIA_POP11_VLAN3203
  1379| next hop 10.244.112.2
  1380| next hop 10.244.110.2
  1381| next hop 10.244.127.2
  1382| next hop 10.244.127.5
  1383| next hop 10.244.111.2
  1384| next hop 10.244.111.5
  1385|#
  1386|mpls ldp
  1387|#
  1388|#
  1389|mpls ldp remote-peer 10.244.188.1
  1390| remote-ip 10.244.188.1
  1391|#
  1392|mpls ldp remote-peer 10.244.188.2
  1393| remote-ip 10.244.188.2
  1394|#
  1395|mpls ldp remote-peer 10.244.188.4
  1396| remote-ip 10.244.188.4
  1397|#
  1398|mpls ldp remote-peer 10.244.188.5
  1399| remote-ip 10.244.188.5
  1400|#
  1401|mpls ldp remote-peer 10.244.188.7
  1402| remote-ip 10.244.188.7
  1403|#
  1404|mpls ldp remote-peer 10.244.188.8
  1405| remote-ip 10.244.188.8
  1406|#
  1407|mpls ldp remote-peer 10.244.188.10
  1408| remote-ip 10.244.188.10
  1409|#
  1410|mpls ldp remote-peer 10.244.188.11
  1411| remote-ip 10.244.188.11
  1412|#
  1413|mpls ldp remote-peer 10.244.188.13
  1414| remote-ip 10.244.188.13
  1415|#
  1416|mpls ldp remote-peer 10.244.188.15
  1417| remote-ip 10.244.188.15
  1418|#
  1419|mpls ldp remote-peer 10.244.188.17
  1420| remote-ip 10.244.188.17
  1421|#
  1422|mpls ldp remote-peer 10.244.188.18
  1423| remote-ip 10.244.188.18
  1424|#
  1425|mpls ldp remote-peer 10.244.188.19
  1426| remote-ip 10.244.188.19
  1427|#
  1428|mpls ldp remote-peer 10.244.188.20
  1429| remote-ip 10.244.188.20
  1430|#
  1431|mpls ldp remote-peer 10.244.188.21
  1432| remote-ip 10.244.188.21
  1433|#
  1434|mpls ldp remote-peer 10.244.188.22
  1435| remote-ip 10.244.188.22
  1436|#
  1437|mpls ldp remote-peer 10.244.188.27
  1438| remote-ip 10.244.188.27
  1439|#
  1440|mpls ldp remote-peer 10.244.188.28
  1441| remote-ip 10.244.188.28
  1442|#
  1443|mpls ldp remote-peer 10.244.188.43
  1444| remote-ip 10.244.188.43
  1445|#
  1446|mpls ldp remote-peer 10.244.188.47
  1447| remote-ip 10.244.188.47
  1448|#
  1449|mpls ldp remote-peer 10.244.188.49
  1450| remote-ip 10.244.188.49
  1451|#
  1452|mpls ldp remote-peer 10.244.188.50
  1453| remote-ip 10.244.188.50
  1454|#
  1455|mpls ldp remote-peer 10.244.188.51
  1456| remote-ip 10.244.188.51
  1457|#
  1458|mpls ldp remote-peer 10.244.188.59
  1459| remote-ip 10.244.188.59
  1460|#
  1461|mpls ldp remote-peer 10.244.188.60
  1462| remote-ip 10.244.188.60
  1463|#
  1464|mpls ldp remote-peer 10.244.188.62
  1465| remote-ip 10.244.188.62
  1466|#
  1467|mpls ldp remote-peer 10.244.188.67
  1468| remote-ip 10.244.188.67
  1469|#
  1470|mpls ldp remote-peer 10.244.188.99
  1471| remote-ip 10.244.188.99
  1472|#
  1473|mpls ldp remote-peer 10.244.188.125
  1474| remote-ip 10.244.188.125
  1475|#
  1476|mpls ldp remote-peer 10.244.189.3
  1477| remote-ip 10.244.189.3
  1478|#
  1479|mpls ldp remote-peer 10.244.189.5
  1480| remote-ip 10.244.189.5
  1481|#
  1482|mpls ldp remote-peer 10.244.189.10
  1483| remote-ip 10.244.189.10
  1484|#
  1485|mpls ldp remote-peer 10.244.189.11
  1486| remote-ip 10.244.189.11
  1487|#
  1488|mpls ldp remote-peer 10.244.189.12
  1489| remote-ip 10.244.189.12
  1490|#
  1491|mpls ldp remote-peer 10.244.189.14
  1492| remote-ip 10.244.189.14
  1493|#
  1494|mpls ldp remote-peer 10.244.189.15
  1495| remote-ip 10.244.189.15
  1496|#
  1497|mpls ldp remote-peer 10.244.189.28
  1498| remote-ip 10.244.189.28
  1499|#
  1500|mpls ldp remote-peer 10.244.189.65
  1501| remote-ip 10.244.189.65
  1502|#
  1503|mpls ldp remote-peer 10.244.189.67
  1504| remote-ip 10.244.189.67
  1505|#
  1506|rsa peer-public-key 10.244.110.6
  1507| public-key-code begin
  1508|  30820109
  1509|    02820100
  1510|      E09A5CC1 F761B429 D35C7D9A E4600853 5C186444 3D8D977F 2152D97E 9D512D50
  1511|      1059FF35 788CCE1D 45D34E7B 23B2E884 F19E936F 878E2B46 8599B6BE 2A882B1F
  1512|      BFC5F8B0 0B4454B2 E6B1B6DE ED926E55 B1D6ACAA CA8AF6F8 0CF8AFED 903F1077
  1513|      0D8E49DA A06E1BE7 621911D6 B96FCC7C EA5DB211 AF76367E CFFD906E 8212C753
  1514|      02C12382 0FFDB971 6F6D2CBD F57FB52A 9F175874 8A992F72 F5C43101 90209A8E
  1515|      388BDD8D 6A261AC0 2827EF28 E3BE372F 574EF7B3 3E5D5F7F DAE0B930 9F2DF2AE
  1516|      6760B695 01A30E1C AB83F389 8F47C30F 4E9CB918 E0134F81 8A245401 C4C7CA80
  1517|      3464BC48 53330D46 6F5FD1AB E1B69D38 536E9127 D90FF79A 7D4892B6 9D5B2D91
  1518|    0203
  1519|      010001
  1520| public-key-code end
  1521|peer-public-key end
  1522|#
  1523|pki realm default
  1524| certificate-check none
  1525|#
  1526|free-rule-template name default_free_rule
  1527|#
  1528|portal-access-profile name portal_access_profile
  1529|#
  1530|drop-profile default
  1531|#
  1532|vlan 4
  1533| description VLAN_4_PTP_CGNAT1_BGP1_CYBER
  1534|vlan 11
  1535| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1536|vlan 12
  1537| description VLAN_12_POP0_ARQU_OLT1_SCHOSSLER
  1538|vlan 13
  1539| description VLAN_13_POP00_ARQU_OLT1_SCHOSSLER
  1540|vlan 16
  1541| description VLAN16_SERVIDORES_IP_PUBLICO
  1542|vlan 17
  1543| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1544|vlan 18
  1545| description VALN_18_POP0_SAP_RAD
  1546|vlan 19
  1547| description VLAN19_GERENCIA_EQUIPAMENTOS
  1548|vlan 21
  1549| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1550|vlan 23
  1551| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1552|vlan 30
  1553| description VLAN_30_POP03_M_FOLRES_MGNT
  1554|vlan 31
  1555| description VLAN_31_POP03_M_FLORES_OLT1
  1556|vlan 39
  1557| description VLAN_39_POP03_M_FLORES_RADIOS
  1558|vlan 40
  1559| description VLAN_40_POP04_POA_HIPICA
  1560|vlan 41
  1561| description VLAN_41_POP04_PPPOE_CLIENTES
  1562|vlan 50
  1563| description VLAN_50_M_RINCAO_GERENCIA
  1564|vlan 51
  1565| description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
  1566|vlan 53
  1567| description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
  1568|vlan 60
  1569| description VLAN_60_POP06_B_VISTA_MGNT
  1570|vlan 61
  1571| description VLAN_61_POP06_B_VISTA_OLT1
  1572|vlan 70
  1573| description VLAN_70_POP07_S_TECLA_GERENCIA
  1574|vlan 71
  1575| description VLAN_71_POP07_S_TECLA_OLT1
  1576|vlan 73
  1577| description VLAN_73_POP07_S_TECLA_OLT1
  1578|vlan 80
  1579| description VLAN_80_POP08_FREITAS_MGNT
  1580|vlan 81
  1581| description VLAN_81_POP08_FREITAS_OLT1
  1582|vlan 83
  1583| description VLAN_83_CYBER_POP08_FREITAS_OLT1
  1584|vlan 90
  1585| description VLAN_90_POP09_ITACOLOMI_MGNT
  1586|vlan 91
  1587| description VLAN_91_POP09_ITACOLOMI_OLT1
  1588|vlan 100
  1589| description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
  1590|vlan 101
  1591| description VLAN_101_POP10_P_EUCALIPTOS_OLT1
  1592|vlan 110
  1593| description VLAN_110_POP11_COND_VIVAZ_MGNT
  1594|vlan 111
  1595| description VLAN_111_POP11_COND_VIVAZ_OLT1
  1596|vlan 113
  1597| description VLAN_113_POP11_COND_VIVAZ_OLT1
  1598|vlan 120
  1599| description vlan120_POP12_BETANIA_GERENCIA
  1600|vlan 121
  1601| description VLAN_121_POP12_BETANIA_OLT1
  1602|vlan 130
  1603| description VLAN_130_POP13_C_HAVANA_MGNT
  1604|vlan 131
  1605| description VLAN_131_POP13_C_HAVANA_OLT1
  1606|vlan 133
  1607| description VLAN_133_POP13_C_HAVANA_OLT1
  1608|vlan 140
  1609| description VLAN_140_POP14_LOMBA_GRANDE
  1610|vlan 141
  1611| description VLAN_141_POP14_LOMBA_GRANDE
  1612|vlan 150
  1613| description VLAN_150_POP15_EXPOINTER_GERENCIA
  1614|vlan 151
  1615| description VLAN_151_POP15_EXPOINTER_OLT1
  1616|vlan 160
  1617| description VLAN_160_POP16_CASTELINHO_MGNT
  1618|vlan 161
  1619| description VLAN_161_POP16_CASTELINHO_OLT1
  1620|vlan 169
  1621| description VLAN_169_POP16_CASTELINHO_RADIO
  1622|vlan 171
  1623| description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
  1624|vlan 173
  1625| description VLAN_173_POP17_ELEA_PPPOE_CYBER
  1626|vlan 181
  1627| description VLAN_181_POP18_CEIC_PROCEMPA
  1628|vlan 190
  1629| description VLAN_190_POP19_HIPICA_GERENCIA
  1630|vlan 191
  1631| description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
  1632|vlan 193
  1633| description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
  1634|vlan 194
  1635| description VLAN_194_POP19_TRANSP_RSSUL
  1636|vlan 200
  1637| description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
  1638|vlan 201
  1639| description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
  1640|vlan 203
  1641| description VLAN_203_POP20_S_JOAO_OLT1_CYBER
  1642|vlan 211
  1643| description VLAN_211_POP21_PREF_SAPUCAIA
  1644|vlan 213
  1645| description VLAN_213_POP21_PREF_SAPUCAIA
  1646|vlan 220
  1647| description VLAN_220_POP22_PIRATINI
  1648|vlan 250
  1649| description VLAN_250_POP25_GERENCIA
  1650|vlan 251
  1651| description VLAN_250_POP25_OLT1
  1652|vlan 253
  1653| description VLAN_253_POP25_OLT1_CYBERWEB
  1654|vlan 258
  1655| description VLAN_258_POP25_OLT1_SCHOSSLER
  1656|vlan 271
  1657| description VLAN_271_POP27_CIVIL_OLT1
  1658|vlan 273
  1659| description VLAN_273_POP27_CIVIL_OLT1
  1660|vlan 281
  1661| description VLAN_281_POP28_V_RICA_OLT1
  1662|vlan 283
  1663| description VLAN_283_POP28_V_RICA_OLT1
  1664|vlan 905
  1665| description VLAN_905_TRANS_PREF_SAPUCAIA
  1666|vlan 906
  1667| description VLAN_906_TRANS_PREF_SAPUCAIA
  1668|vlan 907
  1669| description VLAN_907_TRANS_PREF_SAPUCAIA
  1670|vlan 912
  1671| description VLAN_912_TRANS_PREF_SAPUCAIA
  1672|vlan 913
  1673| description VLAN_913_TRANS_PREF_SAPUCAIA
  1674|vlan 914
  1675| description VLAN_914_TRANS_PREF_SAPUCAIA
  1676|vlan 915
  1677| description VLAN_915_TRANS_PREF_SAPUCAIA
  1678|vlan 916
  1679| description VLAN_916_TRANS_PREF_SAPUCAIA
  1680|vlan 917
  1681| description VLAN_917_TRANS_PREF_SAPUCAIA
  1682|vlan 919
  1683| description VLAN_919_TRANS_PREF_SAPUCAIA
  1684|vlan 920
  1685| description VLAN_920_TRANS_PREF_SAPUCAIA
  1686|vlan 922
  1687| description VLAN_922_TRANS_PREF_SAPUCAIA
  1688|vlan 923
  1689| description VLAN_923_TRANS_PREF_SAPUCAIA
  1690|vlan 924
  1691| description VLAN_924_TRANS_PREF_SAPUCAIA
  1692|vlan 926
  1693| description VLAN_926_TRANS_PREF_SAPUCAIA
  1694|vlan 931
  1695| description VLAN_931_TRANS_PREF_SAPUCAIA
  1696|vlan 934
  1697| description VLAN_934_TRANS_PREF_SAPUCAIA
  1698|vlan 936
  1699| description VLAN_936_TRANS_PREF_SAPUCAIA
  1700|vlan 938
  1701| description VLAN_938_TRANS_PREF_SAPUCAIA
  1702|vlan 939
  1703| description VLAN_939_TRANS_PREF_SAPUCAIA
  1704|vlan 940
  1705| description VLAN_940_TRANS_PREF_SAPUCAIA
  1706|vlan 941
  1707| description VLAN_941_TRANS_PREF_SAPUCAIA
  1708|vlan 942
  1709| description VLAN_942_TRANS_PREF_SAPUCAIA
  1710|vlan 945
  1711| description VLAN_945_TRANS_PREF_SAPUCAIA
  1712|vlan 946
  1713| description VLAN_946_TRANS_PREF_SAPUCAIA
  1714|vlan 947
  1715| description VLAN_947_TRANS_PREF_SAPUCAIA
  1716|vlan 948
  1717| description VLAN_948_TRANS_PREF_SAPUCAIA
  1718|vlan 949
  1719| description VLAN_949_TRANS_PREF_SAPUCAIA
  1720|vlan 952
  1721| description VLAN_952_TRANS_PREF_SAPUCAIA
  1722|vlan 953
  1723| description VLAN_953_TRANS_PREF_SAPUCAIA
  1724|vlan 956
  1725| description VLAN_956_TRANS_PREF_SAPUCAIA
  1726|vlan 957
  1727| description VLAN_957_TRANS_PREF_SAPUCAIA
  1728|vlan 958
  1729| description VLAN_958_TRANS_PREF_SAPUCAIA
  1730|vlan 959
  1731| description VLAN_959_TRANSP_VERO
  1732|vlan 960
  1733| description VLAN_960_TRANS_PREF_SAPUCAIA
  1734|vlan 963
  1735| description VLAN_963_TRANS_PREF_SAPUCAIA
  1736|vlan 965
  1737| description VLAN_965_TRANS_PREF_SAPUCAIA
  1738|vlan 966
  1739| description VLAN_966_TRANS_PREF_SAPUCAIA
  1740|vlan 968
  1741| description VLAN_968_TRANS_PREF_SAPUCAIA
  1742|vlan 970
  1743| description VLAN_970_TRANS_PREF_SAPUCAIA
  1744|vlan 971
  1745| description VLAN_971_TRANS_PREF_SAPUCAIA
  1746|vlan 972
  1747| description VLAN_972_TRANS_PREF_SAPUCAIA
  1748|vlan 973
  1749| description VLAN_973_TRANS_PREF_SAPUCAIA
  1750|vlan 974
  1751| description VLAN_974_TRANSP_VERO
  1752|vlan 977
  1753| description VLAN_977_TRANS_PREF_SAPUCAIA
  1754|vlan 982
  1755| description VLAN_982_TRANS_PREF_SAPUCAIA
  1756|vlan 985
  1757| description VLAN_985_TRANSP_VERO
  1758|vlan 986
  1759| description VLAN_986_TRANS_PREF_SAPUCAIA
  1760|vlan 990
  1761| description VLAN_990_TRANS_PREF_SAPUCAIA
  1762|vlan 1001
  1763| description VLAN_1001_BGP1_CYBER_CE01
  1764|vlan 1003
  1765| description VLAN1003_BGP1_CYBER_CE03_CYBER
  1766|vlan 1100
  1767| description VLAN1100_SW1POP0_SW1POP0_MPLS1
  1768|vlan 1108
  1769| description VLAN1108_SW1POP00_SW1POP08_MPLS1
  1770|vlan 1111
  1771| description VLAN_1111_CGNAT1_CE01_OSPF
  1772|vlan 1112
  1773| description VLAN1112_SW1POP00_SW1POP12_MPLS1
  1774|vlan 1121
  1775| description VLAN_1121_SW1POP00_SW1POP21_MPLS1
  1776|vlan 1125
  1777| description VLAN_1125_SW1POP00_SW1POP25_MPLS1
  1778|vlan 1138
  1779| description VLAN_1138_VERO_CDN
  1780|vlan 1144
  1781| description VLAN_1144_SW1POP00_SW1POP44_MPLS1
  1782|vlan 1152
  1783| description VLAN_1152_SW1POP00_SW1POP52_OSPF1
  1784|vlan 1164
  1785| description VLAN_1164_LINK1_IPV4_VERO
  1786|vlan 1166
  1787| description VLAN_1166_SW1POP0_SW1POP66_OSPF
  1788|vlan 1195
  1789| description VLAN1195_SW1PO11_SW1PO95_DGTSSP
  1790|vlan 1264
  1791| description VLAN_1164_LINK1_IPV6_VERO
  1792|vlan 1295
  1793| description VLAN1295_SW1PO11_SW1PO95_DGTSSP
  1794|vlan 1395
  1795| description VLAN1395_SW1PO11_SW1PO95_DGTSSP
  1796|vlan 1914
  1797| description VLAN_1914_SEABORN_L1_BGP1_ASN273461
  1798|vlan 2311
  1799| description VLAN2311_TRANSP_VERO_POP14_L_GRANDE
  1800|vlan 2340
  1801| description VLAN2340_INFRAWEB_GERENCIA
  1802|vlan 2341
  1803| description VLAN2341_INFRAWEB_PPPOE
  1804|vlan 2733
  1805| description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
  1806|vlan 3000
  1807| description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
  1808|vlan 3005
  1809| description VLAN_3005_TRANSP_TELIUM_S_CASA
  1810|vlan 3101
  1811| description VLAN_3101_TRANP_CAMERAS_BRIGADA
  1812|vlan 3102
  1813| description VLAN_3102_TRANP_CAMERAS_BRIGADA
  1814|vlan 3105
  1815| description VLAN_3105_TRANSPORTE_SSP_POA
  1816|vlan 3106
  1817| description VLAN_3106_TRANSPORTE_SSP_POA
  1818|vlan 3107
  1819| description VLAN_3107_TRANSP_POA_MAIS_SEG
  1820|vlan 3108
  1821| description VLAN_3108_TRANSP_POA_MAIS_SEG
  1822|vlan 3111
  1823| description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
  1824|vlan 3114
  1825| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
  1826|vlan 3119
  1827| description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
  1828|vlan 3120
  1829| description VLAN_3120_BGP1_NE40_CE20_OSPF
  1830|vlan 3121
  1831| description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
  1832|vlan 3143
  1833| description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
  1834|vlan 3147
  1835| description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
  1836|vlan 3149
  1837| description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
  1838|vlan 3150
  1839| description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
  1840|vlan 3151
  1841| description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
  1842|vlan 3152
  1843| description VLAN3152_BGP1_CYBER_BGP1_BLUSTELECOM
  1844|vlan 3153
  1845| description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
  1846|vlan 3154
  1847| description VLAN_3154_CYBER_BGP1_LM_V_RICA_L1
  1848|vlan 3155
  1849| description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
  1850|vlan 3160
  1851| description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
  1852|vlan 3162
  1853| description VLAN_3162_BGP1_POP62_EQUATORIAL
  1854|vlan 3163
  1855| description VLAN3163_BGP1_CE63_VILLELA
  1856|vlan 3166
  1857| description VLAN_3166_CYBER_BGP1_WIANETSUL_L1
  1858|vlan 3167
  1859| description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
  1860|vlan 3203
  1861| description VLAN_3203_TRANSP_IXRS_BLUS
  1862|vlan 3207
  1863| description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
  1864|vlan 3208
  1865| description VLAN_3208_PNI_GGC_ASN273461
  1866|vlan 3252
  1867| description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
  1868|vlan 3256
  1869| description VLAN_3256_PPPOE_CLIENTES_TELIUM
  1870|vlan 3261
  1871| description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
  1872|vlan 3266
  1873| description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
  1874|vlan 3341
  1875| description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
  1876|vlan 3511
  1877| description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
  1878|vlan 3532
  1879| description VLAN_3532_TRANSP_CAM_CAMAQUA
  1880|vlan 3533
  1881| description VLAN_3533_TRANSP_CAM_CAMAQUA
  1882|vlan 3540
  1883| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
  1884|vlan 3541
  1885| description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
  1886|vlan 3550
  1887| description VLAN_3550_TRANSP_R_NEUTRA_LM
  1888|vlan 3560
  1889| description VLAN_3560_POWERNET_R_NEUTRA
  1890|vlan 3571
  1891| description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
  1892|vlan 3580
  1893| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
  1894|vlan 3581
  1895| description VLAN3581_RN_CYBER_NA_INFRAWEB
  1896|vlan 3592
  1897| description VLAN_3592_ALT_ADVANTA
  1898|vlan 3602
  1899| description VLAN_3602_TR_ADYL_POP14_ADVANTA
  1900|vlan 3790
  1901| description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
  1902|vlan 3791
  1903| description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
  1904|vlan 3902
  1905| description VLAN_3902_EQUINIX_CYBER_BGP1
  1906|vlan 3904
  1907| description VLAN3904_SW1POP01_SW1POP00_PNI_META
  1908|vlan 3905
  1909| description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
  1910|vlan 3906
  1911| description VLAN3906_SW1POP01_SW1POP00_PNI_META
  1912|vlan 3964
  1913| description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
  1914|vlan 4000
  1915| description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
  1916|vlan 4001
  1917| description VLAN_4001_BGP1CYBER_CGNAT1_SCHOSSLER
  1918|vlan 4012
  1919| description VLAN_4012_CGNAT1_BGP2
  1920|vlan 4094
  1921| description VLAN_4094_BLACKHOLE
  1922|#
  1923|aaa
  1924| authentication-scheme default
  1925|  authentication-mode local
  1926| authentication-scheme radius
  1927|  authentication-mode radius
  1928| authorization-scheme default
  1929|  authorization-mode local
  1930| accounting-scheme default
  1931|  accounting-mode none
  1932| local-aaa-user password policy administrator
  1933|  password history record number 0
  1934|  password expire 0
  1935| domain default
  1936|  authentication-scheme radius
  1937|  accounting-scheme default
  1938|  radius-server default
  1939| domain default_admin
  1940|  authentication-scheme default
  1941|  accounting-scheme default
  1942| local-user admin password irreversible-cipher $1c$q6&9:g>RA-$|\C)9;1bq4^uT098E$vO)BE[PjFpQ$DZWU=%(;o>$
  1943| local-user admin privilege level 15
  1944| local-user admin service-type ssh http
  1945| local-user future password irreversible-cipher $1c$Y5}lDwN=E:$!DRV>(;)M~pr*6ESw7~@vzIg4OQmiWIP|2TP!*u6$
  1946| local-user future privilege level 15
  1947| local-user future service-type ssh
  1948| local-user zandona password irreversible-cipher $1c$Ln|t*R>'-8$p/SsDlFwfE)KQH>Q$5VR-F7/00i=:(QGD&CU(dhR$
  1949| local-user zandona privilege level 15
  1950| local-user zandona service-type telnet ssh http
  1951|#
  1952|ntp-service server disable
  1953|ntp-service ipv6 server disable
  1954|ntp-service unicast-server 200.189.40.8
  1955|ntp-service unicast-server 200.160.0.8
  1956|#
  1957|interface Vlanif2
  1958| description VLAN_2_GERENCIA
  1959| ip address 10.244.0.98 255.255.255.252
  1960|#
  1961|interface Vlanif11
  1962| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1963| l2 binding vsi VSI_11_CY_POP00_POP02_SAP_OLT1
  1964|#
  1965|interface Vlanif12
  1966| description VLAN_12_POP0_SAP_OLT1
  1967| l2 binding vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1
  1968|#
  1969|interface Vlanif13
  1970| description VLAN_13_POP00_ARQU_OLT1_CYBER
  1971| l2 binding vsi VSI_13_CY_POP00_POP02_SAP_OLT1
  1972|#
  1973|interface Vlanif16
  1974| description VLAN16_SERVIDORES_IP_PUBLICO
  1975| l2 binding vsi VSI_16_SERVIDORES_IP_PUBLICOS
  1976|#
  1977|interface Vlanif17
  1978| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1979| l2 binding vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV
  1980|#
  1981|interface Vlanif18
  1982| description VALN_18_POP0_SAP_RAD
  1983| l2 binding vsi VSI_18_CY_POP00_POP02_SAP_RADI
  1984|#
  1985|interface Vlanif21
  1986| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1987| l2 binding vsi VSI_21_CY_POP00_POP02_POA_OLT1
  1988|#
  1989|interface Vlanif23
  1990| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1991| l2 binding vsi VSI_23_CY_POP00_POP02_POA_OLT1
  1992|#
  1993|interface Vlanif30
  1994| description VLAN_30_POP03_M_FOLRES_MGNT
  1995| l2 binding vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT
  1996|#
  1997|interface Vlanif31
  1998| description VLAN_31_POP03_M_FLORES_OLT1
  1999| l2 binding vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1
  2000|#
  2001|