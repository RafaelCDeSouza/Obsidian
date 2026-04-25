[[SW1POP00]]

     1|```yaml
     2|User Authentication
     3|(admin@10.244.189.0) Password:
     4|
     5|Info: The max number of VTY users is 10, and the number
     6|      of current VTY users on line is 1.
     7|      The current login time is 2026-04-01 19:05:25-03:00.
     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-03-27 04:07:17-03:00  Password will expire in: -
     9|
    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    11|<SW1POP00_CYBER>sys
    12|Enter system view, return user view with Ctrl+Z.
    13|[SW1POP00_CYBER]sho
    14|[SW1POP00_CYBER]displ
    15|[SW1POP00_CYBER]display run
    16|[SW1POP00_CYBER]display run
    17|                        ^
    18|Error: Unrecognized command found at '^' position.
    19|[SW1POP00_CYBER]display cu
    20|!Software Version V200R023C00SPC500
    21|#
    22|sysname SW1POP00_CYBER
    23|#
    24|vlan batch 2 4 10 to 13 16 to 19 21 23 30 to 31 39 to 41 50 to 51 53
    25|vlan batch 60 to 61 70 to 71 73 80 to 81 83 90 to 91 100 to 101 110 to 111 113 120 to 121
    26|vlan batch 130 to 131 133 140 to 141 150 to 151 160 to 161 169 171 173 181 190 to 191
    27|vlan batch 193 to 194 200 to 201 203 211 213 220 250 to 251 253 258 271
    28|vlan batch 273 281 283 905 to 907 912 to 917 919 to 920 922 to 924 926 931 934
    29|vlan batch 936 938 to 942 945 to 949 952 to 953 956 to 960 963 965 to 966 968 970 to 974 977
    30|vlan batch 982 985 to 986 990 1001 1003 1100 1108 1111 to 1112 1121 1125
    31|vlan batch 1138 1144 1152 1164 1166 1195 1264 1295 1395 1914
    32|vlan batch 2311 2340 to 2341 2733 3000 3005 3101 to 3102 3105 to 3108 3111 3114 3119 to 3121
    33|vlan batch 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3167 3203 3207 to 3208 3252 3256
    34|vlan batch 3261 3266 3341 3511 3532 to 3533 3540 to 3541 3550 3560 3571 3580 to 3581
    35|vlan batch 3592 3602 3790 to 3791 3902 3904 to 3906 3964 4000 to 4001 4012 4094
    36|#
    37|authentication-profile name default_authen_profile
    38| authentication ipv6-control enable
    39|authentication-profile name dot1x_authen_profile
    40| authentication ipv6-control enable
    41|authentication-profile name dot1xmac_authen_profile
    42| authentication ipv6-control enable
    43|authentication-profile name mac_authen_profile
    44| authentication ipv6-control enable
    45|authentication-profile name multi_authen_profile
    46| authentication ipv6-control enable
    47|authentication-profile name portal_authen_profile
    48| authentication ipv6-control enable
    49|#
    50|set save-configuration delay 1
    51|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    52|#
    53|http server-source all-interface
    54|#
    55|clock timezone Brasilia minus 03:00:00
    56|#
    57|ddr isolation disable
    58|#
    59|undo mac-address learning self-healing enable
    60|#
    61|capwap unknown-unicast cir 0
    62|#
    63|diffserv domain default
    64|#
    65|radius-server template default
    66|#
    67|bfd
    68|#
    69|mpls lsr-id 10.244.189.0
    70|mpls
    71| mpls te
    72| mpls rsvp-te
    73| mpls te cspf
    74|#
    75|mpls l2vpn
    76|#
    77|vsi VSI_21_CY_POP00_POP02_POA_OLT1 static
    78| pwsignal ldp
    79|  vsi-id 21
    80|  peer 10.244.188.2
    81|  traffic-statistics enable
    82| mtu 9000
    83| encapsulation ethernet
    84|#
    85|vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1 static
    86| pwsignal ldp
    87|  vsi-id 41
    88|  peer 10.244.188.19
    89|  traffic-statistics enable
    90| mtu 9000
    91| encapsulation ethernet
    92|#
    93|vsi VSI_3120_POP00_POP20_BGP1_CE20 static
    94| pwsignal ldp
    95|  vsi-id 3120
    96|  peer 10.244.188.20
    97| mtu 9000
    98| encapsulation ethernet
    99|#
   100|vsi VSI_161_CY_POP0-2_POP16_CA_OLT1 static
   101| pwsignal ldp
   102|  vsi-id 161
   103|  peer 10.244.189.3
   104|  traffic-statistics enable
   105| mtu 9000
   106| encapsulation ethernet
   107|#
   108|vsi VSI_169_CY_POP0-2_POP16_CA_RADI static
   109| pwsignal ldp
   110|  vsi-id 169
   111|  peer 10.244.189.3
   112|  traffic-statistics enable
   113| mtu 9000
   114| encapsulation ethernet
   115|#
   116|vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1 static
   117| pwsignal ldp
   118|  vsi-id 31
   119|  peer 10.244.189.3
   120|  traffic-statistics enable
   121| mtu 9000
   122| encapsulation ethernet
   123|#
   124|vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
   125| pwsignal ldp
   126|  vsi-id 61
   127|  peer 10.244.188.7
   128|  traffic-statistics enable
   129| mtu 9000
   130| encapsulation ethernet
   131|#
   132|vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1 static
   133| pwsignal ldp
   134|  vsi-id 91
   135|  peer 10.244.189.3
   136|  traffic-statistics enable
   137| mtu 9000
   138| encapsulation ethernet
   139|#
   140|vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1 static
   141| pwsignal ldp
   142|  vsi-id 101
   143|  peer 10.244.189.10
   144|  traffic-statistics enable
   145| mtu 9000
   146| encapsulation ethernet
   147|#
   148|vsi VSI_160_CY_POP0-2_POP16_CA_MGNT static
   149| pwsignal ldp
   150|  vsi-id 160
   151|  peer 10.244.189.3
   152|  traffic-statistics enable
   153| mtu 9000
   154| encapsulation ethernet
   155|#
   156|vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT static
   157| pwsignal ldp
   158|  vsi-id 90
   159|  peer 10.244.189.3
   160|  traffic-statistics enable
   161| mtu 9000
   162| encapsulation ethernet
   163|#
   164|vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
   165| pwsignal ldp
   166|  vsi-id 60
   167|  peer 10.244.188.7
   168|  traffic-statistics enable
   169| mtu 9000
   170| encapsulation ethernet
   171|#
   172|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   173| pwsignal ldp
   174|  vsi-id 30
   175|  peer 10.244.189.3
   176|  traffic-statistics enable
   177| mtu 9000
   178| encapsulation ethernet
   179|#
   180|vsi VSI_71_CY_POP0-2_POP07_STE_OLT1 static
   181| pwsignal ldp
   182|  vsi-id 71
   183|  peer 10.244.188.7
   184|  traffic-statistics enable
   185| mtu 9000
   186| encapsulation ethernet
   187|#
   188|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
   189| pwsignal ldp
   190|  vsi-id 121
   191|  peer 10.244.189.12
   192|  traffic-statistics enable
   193| mtu 9000
   194| encapsulation ethernet
   195|#
   196|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
   197| pwsignal ldp
   198|  vsi-id 120
   199|  peer 10.244.189.12
   200|  traffic-statistics enable
   201| mtu 9000
   202| encapsulation ethernet
   203|#
   204|vsi VSI_70_CY_POP0-2_POP07_STE_MGNT static
   205| pwsignal ldp
   206|  vsi-id 70
   207|  peer 10.244.188.7
   208|  traffic-statistics enable
   209| mtu 9000
   210| encapsulation ethernet
   211|#
   212|vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT static
   213| pwsignal ldp
   214|  vsi-id 100
   215|  peer 10.244.189.10
   216|  traffic-statistics enable
   217| mtu 9000
   218| encapsulation ethernet
   219|#
   220|vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
   221| pwsignal ldp
   222|  vsi-id 130
   223|  peer 10.244.188.2
   224|  peer 10.244.189.65
   225|  traffic-statistics enable
   226| mtu 9000
   227| encapsulation ethernet
   228|#
   229|vsi VSI_81_POP0-2_POP08_FREITA_OLT1 static
   230| pwsignal ldp
   231|  vsi-id 81
   232|  peer 10.244.188.8
   233|  traffic-statistics enable
   234| mtu 9000
   235| encapsulation ethernet
   236|#
   237|vsi VSI_3153_CY_POP00_PROV_LM_CIVIL static
   238| pwsignal ldp
   239|  vsi-id 3153
   240|  peer 10.244.188.27
   241|  peer 10.244.188.28
   242|  traffic-statistics enable
   243| mtu 9000
   244| encapsulation ethernet
   245|#
   246|vsi VSI_3560_TRANS_PPPOE_POWERNET static
   247| pwsignal ldp
   248|  vsi-id 3560
   249|  peer 10.244.188.125
   250|  peer 10.244.188.27
   251| mtu 9000
   252| encapsulation ethernet
   253|#
   254|vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
   255| pwsignal ldp
   256|  vsi-id 23
   257|  peer 10.244.188.2
   258|  traffic-statistics enable
   259| mtu 9000
   260| encapsulation ethernet
   261|#
   262|vsi VSI_253_CY_POP0-2_POP25_PO_OLT1 static
   263| pwsignal ldp
   264|  vsi-id 253
   265|  peer 10.244.188.125
   266|  traffic-statistics enable
   267| mtu 9000
   268| encapsulation ethernet
   269|#
   270|vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
   271| pwsignal ldp
   272|  vsi-id 258
   273|  peer 10.244.188.125
   274|  traffic-statistics enable
   275| mtu 9000
   276| encapsulation ethernet
   277|#
   278|vsi VSI_110_POP00_02_POP11_VI_MGNT static
   279| pwsignal ldp
   280|  vsi-id 110
   281|  peer 10.244.189.11
   282|  traffic-statistics enable
   283| mtu 9000
   284| encapsulation ethernet
   285|#
   286|vsi VSI_111_POP00_02_POP11_VI_OLT1 static
   287| pwsignal ldp
   288|  vsi-id 111
   289|  peer 10.244.188.11
   290|  peer 10.244.188.11 pw POP00_POP11_ANT
   291|  peer 10.244.189.11
   292|  traffic-statistics enable
   293| mtu 9000
   294| encapsulation ethernet
   295|#
   296|vsi VSI_971_POP21_POP00_TR_PREF_SAP static
   297| pwsignal ldp
   298|  vsi-id 971
   299|  peer 10.244.188.21
   300| mtu 9000
   301| encapsulation ethernet
   302|#
   303|vsi VSI_3155_CY_POP00_PROV_LM_V_MAR static
   304| pwsignal ldp
   305|  vsi-id 3155
   306|  peer 10.244.188.28
   307|  peer 10.244.189.28
   308| mtu 9000
   309| encapsulation ethernet
   310|#
   311|vsi VSI_3154_CY_POP00_PROV_LM_V_RIC static
   312| pwsignal ldp
   313|  vsi-id 3154
   314|  peer 10.244.188.28
   315|  peer 10.244.189.28
   316| mtu 9000
   317| encapsulation ethernet
   318|#
   319|vsi VSI3906_PNI_META_POP00_CYBER static
   320| pwsignal ldp
   321|  vsi-id 3906
   322|  peer 10.244.188.1
   323| mtu 8000
   324| encapsulation ethernet
   325|#
   326|vsi VSI_3160_CY_POP00_PROV_NIC_TELE static
   327| pwsignal ldp
   328|  vsi-id 3160
   329|  peer 10.244.188.15
   330|  peer 10.244.189.15
   331| mtu 9000
   332| encapsulation ethernet
   333|#
   334|vsi VSI_113_POP00_02_POP11_VI_OLT1 static
   335| pwsignal ldp
   336|  vsi-id 113
   337|  peer 10.244.188.11
   338|  peer 10.244.189.11
   339|  traffic-statistics enable
   340| mtu 9000
   341| encapsulation ethernet
   342|#
   343|vsi VSI_150_CY_POP00_POP15_EXP_MGNT static
   344| pwsignal ldp
   345|  vsi-id 150
   346|  peer 10.244.189.15
   347|  traffic-statistics enable
   348| mtu 9000
   349| encapsulation ethernet
   350|#
   351|vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
   352| pwsignal ldp
   353|  vsi-id 3571
   354|  peer 10.244.188.20
   355|  traffic-statistics enable
   356| mtu 9000
   357| encapsulation ethernet
   358|#
   359|vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
   360| pwsignal ldp
   361|  vsi-id 151
   362|  peer 10.244.188.15
   363|  peer 10.244.189.15
   364|  traffic-statistics enable
   365| mtu 9000
   366| encapsulation ethernet
   367|#
   368|vsi VSI_3143_CY_POP00_PROV_AS52917 static
   369| pwsignal ldp
   370|  vsi-id 3143
   371|  peer 10.244.188.43
   372| mtu 9000
   373| encapsulation ethernet
   374|#
   375|vsi VSI_50_POP0-2_POP05_M_RIN_MGNT static
   376| pwsignal ldp
   377|  vsi-id 50
   378|  peer 10.244.188.5
   379|  traffic-statistics enable
   380| mtu 9000
   381| encapsulation ethernet
   382|#
   383|vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
   384| pwsignal ldp
   385|  vsi-id 51
   386|  peer 10.244.188.5
   387|  traffic-statistics enable
   388| mtu 9000
   389| encapsulation ethernet
   390|#
   391|vsi VSI_3150_POP00_PROV_VPM_MAIOLI static
   392| pwsignal ldp
   393|  vsi-id 3150
   394|  peer 10.244.188.50
   395|  traffic-statistics enable
   396| mtu 9000
   397| encapsulation ethernet
   398|#
   399|vsi VSI_3162_POP00_PROV_EQUATORIAL static
   400| pwsignal ldp
   401|  vsi-id 3162
   402|  peer 10.244.188.62
   403|  traffic-statistics enable
   404| mtu 9000
   405| encapsulation ethernet
   406|#
   407|vsi VSI_16_SERVIDORES_IP_PUBLICOS static
   408| pwsignal ldp
   409|  vsi-id 16
   410|  peer 10.244.188.20
   411| mtu 9000
   412| encapsulation ethernet
   413|#
   414|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
   415| pwsignal ldp
   416|  vsi-id 3581
   417|  peer 10.244.188.59
   418| mtu 9000
   419| encapsulation ethernet
   420|#
   421|vsi VSI_3261_POP00-02_PROV_VALESAT static
   422| pwsignal ldp
   423|  vsi-id 3261
   424|  peer 10.244.188.17
   425|  traffic-statistics enable
   426| mtu 9000
   427| encapsulation ethernet
   428|#
   429|vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
   430| pwsignal ldp
   431|  vsi-id 4000
   432|  peer 10.244.188.2
   433|  traffic-statistics enable
   434| mtu 9000
   435| encapsulation ethernet
   436|#
   437|vsi VSI_3252_POP00-02_PROV_BLUSTELE static
   438| pwsignal ldp
   439|  vsi-id 3252
   440|  peer 10.244.188.2
   441|  traffic-statistics enable
   442| mtu 9000
   443| encapsulation ethernet
   444|#
   445|vsi VSI_3266_POP00-02_PROV_WIANETSU static
   446| pwsignal ldp
   447|  vsi-id 3266
   448|  peer 10.244.188.2
   449|  traffic-statistics enable
   450| mtu 9000
   451| encapsulation ethernet
   452|#
   453|vsi VSI_3203_POP04_POP00_IXRS_BLUS static
   454| pwsignal ldp
   455|  vsi-id 3203
   456|  peer 10.244.188.4
   457|  traffic-statistics enable
   458| mtu 8000
   459| encapsulation ethernet
   460|#
   461|vsi VSI_3207_POP00_POP04_IXRS_CYBER static
   462| pwsignal ldp
   463|  vsi-id 3207
   464|  peer 10.244.188.4
   465|  traffic-statistics enable
   466| mtu 8000
   467| encapsulation ethernet
   468|#
   469|vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT static
   470| pwsignal ldp
   471|  vsi-id 80
   472|  peer 10.244.188.8
   473|  traffic-statistics enable
   474| mtu 9000
   475| encapsulation ethernet
   476|#
   477|vsi VSI_1003_BGP1_CYBER_CE03_CYBER static
   478| pwsignal ldp
   479|  vsi-id 1003
   480|  peer 10.244.188.17
   481|  traffic-statistics enable
   482| mtu 9000
   483| encapsulation ethernet
   484|#
   485|vsi VSI190_CY_POP0-2_POP19_HIP_MGNT static
   486| pwsignal ldp
   487|  vsi-id 190
   488|  peer 10.244.188.19
   489|  traffic-statistics enable
   490| mtu 9000
   491| encapsulation ethernet
   492|#
   493|vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4 static
   494| pwsignal ldp
   495|  vsi-id 3790
   496|  peer 10.244.188.1
   497|  traffic-statistics enable
   498| mtu 8000
   499| encapsulation ethernet
   500|#
   501|vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6 static
   502| pwsignal ldp
   503|  vsi-id 3791
   504|  peer 10.244.188.1
   505|  traffic-statistics enable
   506| mtu 8000
   507| encapsulation ethernet
   508|#
   509|vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
   510| pwsignal ldp
   511|  vsi-id 131
   512|  peer 10.244.188.13
   513|  traffic-statistics enable
   514| mtu 9000
   515| encapsulation ethernet
   516|#
   517|vsi VSI_3005_TRANSP_TELIU_STA_CASA static
   518| pwsignal ldp
   519|  vsi-id 3005
   520|  peer 10.244.188.2
   521|  traffic-statistics enable
   522| mtu 9000
   523| encapsulation ethernet
   524|#
   525|vsi VSI3904_PNI_META_POP00_CYBER static
   526| pwsignal ldp
   527|  vsi-id 3904
   528|  peer 10.244.188.1
   529| mtu 8000
   530| encapsulation ethernet
   531|#
   532|vsi VSI_3000_CYB_POP00-17_BGP1_BGP1 static
   533| pwsignal ldp
   534|  vsi-id 3000
   535|  peer 10.244.188.17
   536| mtu 9000
   537| encapsulation ethernet
   538|#
   539|vsi VSI_959_POP00_POP08_TRANSP_VERO static
   540| pwsignal ldp
   541|  vsi-id 959
   542|  peer 10.244.188.8
   543|  traffic-statistics enable
   544| mtu 9000
   545| encapsulation ethernet
   546|#
   547|vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA static
   548| pwsignal ldp
   549|  vsi-id 3532
   550|  peer 10.244.188.21
   551| mtu 9000
   552| encapsulation ethernet
   553|#
   554|vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA static
   555| pwsignal ldp
   556|  vsi-id 3533
   557|  peer 10.244.188.21
   558| mtu 9000
   559| encapsulation ethernet
   560|#
   561|vsi VSI_39_POP0-02_POP03_M_FLO_RADI static
   562| pwsignal ldp
   563|  vsi-id 39
   564|  peer 10.244.189.3
   565| mtu 9000
   566| encapsulation ethernet
   567|#
   568|vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
   569| pwsignal ldp
   570|  vsi-id 193
   571|  peer 10.244.188.19
   572|  traffic-statistics enable
   573| mtu 9000
   574| encapsulation ethernet
   575|#
   576|vsi VSI_3167_POP00_PROV_LUCFIBRA_L1 static
   577| pwsignal ldp
   578|  vsi-id 3167
   579|  peer 10.244.188.67
   580| mtu 9000
   581| encapsulation ethernet
   582|#
   583|vsi VSI_271_SC_POP0-2_POP27_CI_OLT1 static
   584| pwsignal ldp
   585|  vsi-id 271
   586|  peer 10.244.188.27
   587| mtu 9000
   588| encapsulation ethernet
   589|#
   590|vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
   591| pwsignal ldp
   592|  vsi-id 273
   593|  peer 10.244.188.27
   594| mtu 9000
   595| encapsulation ethernet
   596|#
   597|vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
   598| pwsignal ldp
   599|  vsi-id 11
   600|  peer 10.244.188.2
   601|  traffic-statistics enable
   602| mtu 9000
   603| encapsulation ethernet
   604|#
   605|vsi VSI_3902_EQUIN_POP00_CYBER_BGP1 static
   606| pwsignal ldp
   607|  vsi-id 3902
   608|  peer 10.244.188.1
   609|  traffic-statistics enable
   610| mtu 8000
   611| encapsulation ethernet
   612|#
   613|vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
   614| pwsignal ldp
   615|  vsi-id 12
   616|  peer 10.244.188.2
   617|  traffic-statistics enable
   618| mtu 9000
   619| encapsulation ethernet
   620|#
   621|vsi VSI_3107_POP00_POP02_TR_POA_SEG static
   622| pwsignal ldp
   623|  vsi-id 3107
   624|  peer 10.244.188.2
   625|  peer 10.244.188.125
   626|  peer 10.244.188.19
   627|  peer 10.244.188.17
   628|  peer 10.244.189.65
   629|  peer 10.244.188.20
   630|  peer 10.244.188.21
   631|  peer 10.244.189.11
   632|  peer 10.244.188.13
   633|  traffic-statistics enable
   634| mtu 9000
   635| encapsulation ethernet
   636|#
   637|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
   638| pwsignal ldp
   639|  vsi-id 3114
   640|  peer 10.244.189.14
   641|  traffic-statistics enable
   642| mtu 9000
   643| encapsulation ethernet
   644|#
   645|vsi VSI_3101_POP00_TRANS_CAM_SAPUCA static
   646| pwsignal ldp
   647|  vsi-id 3101
   648|  peer 10.244.188.8
   649|  peer 10.244.188.125
   650|  peer 10.244.188.15
   651|  peer 10.244.188.5
   652|  peer 10.244.188.22
   653|  traffic-statistics enable
   654| mtu 9000
   655| encapsulation ethernet
   656|#
   657|vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
   658| pwsignal ldp
   659|  vsi-id 3105
   660|  peer 10.244.188.2
   661|  peer 10.244.188.19
   662|  peer 10.244.188.4
   663|  peer 10.244.188.17
   664|  peer 10.244.188.125
   665|  peer 10.244.189.65
   666|  peer 10.244.188.20
   667|  peer 10.244.188.21
   668|  peer 10.244.189.11
   669|  traffic-statistics enable
   670| mtu 9000
   671| encapsulation ethernet
   672|#
   673|vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
   674| pwsignal ldp
   675|  vsi-id 3106
   676|  peer 10.244.188.2
   677|  peer 10.244.188.20
   678|  peer 10.244.189.11
   679|  traffic-statistics enable
   680| mtu 9000
   681| encapsulation ethernet
   682|#
   683|vsi VSI_3102_POP00_TRANS_CAM_SAPUCA static
   684| pwsignal ldp
   685|  vsi-id 3102
   686|  peer 10.244.188.125
   687|  peer 10.244.188.21
   688|  peer 10.244.188.22
   689|  traffic-statistics enable
   690| mtu 9000
   691| encapsulation ethernet
   692|#
   693|vsi VSI3511_POP12_TR_FENIX_CYBER_RN static
   694| pwsignal ldp
   695|  vsi-id 3511
   696|  peer 10.244.189.12
   697|  traffic-statistics enable
   698| mtu 9000
   699| encapsulation ethernet
   700|#
   701|vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
   702| pwsignal ldp
   703|  vsi-id 3341
   704|  peer 10.244.188.17
   705|  peer 10.244.188.62
   706|  peer 10.244.188.67
   707|  peer 10.244.188.19
   708|  peer 10.244.188.2
   709|  peer 10.244.189.11
   710|  peer 10.244.188.21
   711|  peer 10.244.188.44
   712|  traffic-statistics enable
   713| mtu 9000
   714| encapsulation ethernet
   715|#
   716|vsi VSI_3256_TRANSP_TELIU_DEDICADOS static
   717| pwsignal ldp
   718|  vsi-id 3256
   719|  peer 10.244.188.2
   720|  traffic-statistics enable
   721| mtu 9000
   722| encapsulation ethernet
   723|#
   724|vsi VSI_3163_POP00-02_POP63_VILLELA static
   725| pwsignal ldp
   726|  vsi-id 3163
   727|  peer 10.244.188.19
   728|  traffic-statistics enable
   729| mtu 9000
   730| encapsulation ethernet
   731|#
   732|vsi VSI_3149_CY_POP00_PROV_AS270998 static
   733| pwsignal ldp
   734|  vsi-id 3149
   735|  peer 10.244.188.49
   736|  traffic-statistics enable
   737| mtu 9000
   738| encapsulation ethernet
   739|#
   740|vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
   741| pwsignal ldp
   742|  vsi-id 17
   743|  peer 10.244.188.2
   744|  traffic-statistics enable
   745| mtu 9000
   746| encapsulation ethernet
   747|#
   748|vsi VSI_3108_POP00_POP02_TR_POA_SEG static
   749| pwsignal ldp
   750|  vsi-id 3108
   751|  peer 10.244.188.2
   752|  peer 10.244.188.18
   753|  traffic-statistics enable
   754| mtu 9000
   755| encapsulation ethernet
   756|#
   757|vsi VSI_181_POP0-2_POP18_CEIC_OLT1 static
   758| pwsignal ldp
   759|  vsi-id 181
   760|  peer 10.244.188.18
   761|  traffic-statistics enable
   762| mtu 9000
   763| encapsulation ethernet
   764|#
   765|vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT static
   766| pwsignal ldp
   767|  vsi-id 40
   768|  peer 10.244.188.19
   769|  traffic-statistics enable
   770| mtu 9000
   771| encapsulation ethernet
   772|#
   773|vsi VSI191_CY_POP0-2_POP19_HIP_OLT1 static
   774| pwsignal ldp
   775|  vsi-id 191
   776|  peer 10.244.188.19
   777|  traffic-statistics enable
   778| mtu 9000
   779| encapsulation ethernet
   780|#
   781|vsi VSI_140_POP0-2_POP14_LGRAN_OLT1 static
   782| description VLAN_140_POP14_OLT1
   783| pwsignal ldp
   784|  vsi-id 140
   785|  peer 10.244.189.14
   786|  traffic-statistics enable
   787| mtu 9000
   788| encapsulation ethernet
   789|#
   790|vsi VSI194_POP0-2_POP19_HIPIC_RSSUL static
   791| pwsignal ldp
   792|  vsi-id 194
   793|  peer 10.244.188.19
   794|  traffic-statistics enable
   795| mtu 9000
   796| encapsulation ethernet
   797|#
   798|vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
   799| pwsignal ldp
   800|  vsi-id 171
   801|  peer 10.244.188.17
   802|  traffic-statistics enable
   803| mtu 9000
   804| encapsulation ethernet
   805|#
   806|vsi VSI173_CY_POP0-2_POP17_ELE_OLT1 static
   807| pwsignal ldp
   808|  vsi-id 173
   809|  peer 10.244.188.17
   810|  traffic-statistics enable
   811| mtu 9000
   812| encapsulation ethernet
   813|#
   814|vsi VSI_13_CY_POP00_POP02_SAP_OLT1 static
   815| pwsignal ldp
   816|  vsi-id 13
   817|  peer 10.244.188.2
   818|  peer 10.244.188.49
   819|  traffic-statistics enable
   820| mtu 9000
   821| encapsulation ethernet
   822|#
   823|vsi VSI_281_SC_POP0-2_POP28_VR_OLT1 static
   824| pwsignal ldp
   825|  vsi-id 281
   826|  peer 10.244.189.28
   827| mtu 9000
   828| encapsulation ethernet
   829|#
   830|vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
   831| pwsignal ldp
   832|  vsi-id 141
   833|  peer 10.244.189.14
   834|  traffic-statistics enable
   835| mtu 9000
   836| encapsulation ethernet
   837|#
   838|vsi VSI_18_CY_POP00_POP02_SAP_RADI static
   839| pwsignal ldp
   840|  vsi-id 18
   841|  peer 10.244.188.2
   842|  traffic-statistics enable
   843| mtu 9000
   844| encapsulation ethernet
   845|#
   846|vsi VSI3119_POP00_TRAN_PROV_NEGETTI static
   847| pwsignal ldp
   848|  vsi-id 3119
   849|  peer 10.244.188.27
   850|  traffic-statistics enable
   851| mtu 9000
   852| encapsulation ethernet
   853|#
   854|vsi VSI_3208_PNI_GGC_ASN273461 static
   855| pwsignal ldp
   856|  vsi-id 3208
   857|  peer 10.244.188.1
   858|  traffic-statistics enable
   859| mtu 8000
   860| encapsulation ethernet
   861|#
   862|vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
   863| pwsignal ldp
   864|  vsi-id 4012
   865|  peer 10.244.188.2
   866|  traffic-statistics enable
   867| mtu 9000
   868| encapsulation ethernet
   869|#
   870|vsi VSI_3540_POP00-02_TRAN_MEDIANET static
   871| pwsignal ldp
   872|  vsi-id 3540
   873|  peer 10.244.188.5
   874|  traffic-statistics enable
   875| mtu 9000
   876| encapsulation ethernet
   877|#
   878|vsi VSI_73_CY_POP0-2_POP07_STE_OLT1 static
   879| pwsignal ldp
   880|  vsi-id 73
   881|  peer 10.244.188.7
   882|  traffic-statistics enable
   883| mtu 9000
   884| encapsulation ethernet
   885|#
   886|vsi VSI_3541_POP00-02_TRAN_MEDIANET static
   887| pwsignal ldp
   888|  vsi-id 3541
   889|  peer 10.244.188.5
   890|  traffic-statistics enable
   891| mtu 9000
   892| encapsulation ethernet
   893|#
   894|vsi VSI_1914_SEABORN_L1_ASN273461 static
   895| pwsignal ldp
   896|  vsi-id 1914
   897|  peer 10.244.188.17
   898|  traffic-statistics enable
   899| mtu 9000
   900| encapsulation ethernet
   901|#
   902|vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1 static
   903| pwsignal ldp
   904|  vsi-id 83
   905|  peer 10.244.188.8
   906|  traffic-statistics enable
   907| mtu 9000
   908| encapsulation ethernet
   909|#
   910|vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1 static
   911| pwsignal ldp
   912|  vsi-id 201
   913|  peer 10.244.188.20
   914|  traffic-statistics enable
   915| mtu 9000
   916| encapsulation ethernet
   917|#
   918|vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1 static
   919| pwsignal ldp
   920|  vsi-id 203
   921|  peer 10.244.188.20
   922|  traffic-statistics enable
   923| mtu 9000
   924| encapsulation ethernet
   925|#
   926|vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT static
   927| pwsignal ldp
   928|  vsi-id 200
   929|  peer 10.244.188.20
   930|  traffic-statistics enable
   931| mtu 9000
   932| encapsulation ethernet
   933|#
   934|vsi VSI_1395_POP00_POP95_DGT_SSP static
   935| pwsignal ldp
   936|  vsi-id 1395
   937|  peer 10.244.188.95
   938|  traffic-statistics enable
   939| mtu 1600
   940| encapsulation ethernet
   941|#
   942|vsi VSI_3147_BGP1CYBE_PROV_IDENTITY static
   943| pwsignal ldp
   944|  vsi-id 3147
   945|  peer 10.244.188.47
   946| mtu 9000
   947| encapsulation ethernet
   948|#
   949|vsi VSI_250_CY_POP0-2_POP25_PO_MGNT static
   950| pwsignal ldp
   951|  vsi-id 250
   952|  peer 10.244.188.125
   953| mtu 9000
   954| encapsulation ethernet
   955|#
   956|vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA static
   957| pwsignal ldp
   958|  vsi-id 3111
   959|  peer 10.244.188.60
   960|  traffic-statistics enable
   961| mtu 9000
   962| encapsulation ethernet
   963|#
   964|vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
   965| pwsignal ldp
   966|  vsi-id 133
   967|  peer 10.244.188.13
   968|  traffic-statistics enable
   969| mtu 9000
   970| encapsulation ethernet
   971|#
   972|vsi VSI_283_CY_POP0-2_POP28_VR_OLT1 static
   973| pwsignal ldp
   974|  vsi-id 283
   975|  peer 10.244.189.28
   976| mtu 9000
   977| encapsulation ethernet
   978|#
   979|vsi VSI_213_POP0-2_POP21_PREF_SAPUC static
   980| pwsignal ldp
   981|  vsi-id 213
   982|  peer 10.244.188.21
   983|  traffic-statistics enable
   984| mtu 9000
   985| encapsulation ethernet
   986|#
   987|vsi VSI3121_POP0-2_POP21_PREF_SAPUC static
   988| pwsignal ldp
   989|  vsi-id 3121
   990|  peer 10.244.188.21
   991|  traffic-statistics enable
   992| mtu 9000
   993| encapsulation ethernet
   994|#
   995|vsi VSI_965_POP21_POP00_TR_PREF_SAP static
   996| pwsignal ldp
   997|  vsi-id 965
   998|  peer 10.244.188.21
   999| mtu 9000
  1000| encapsulation ethernet
  1001|#
  1002|vsi VSI_970_POP21_POP00_TR_PREF_SAP static
  1003| pwsignal ldp
  1004|  vsi-id 970
  1005|  peer 10.244.188.21
  1006| mtu 9000
  1007| encapsulation ethernet
  1008|#
  1009|vsi VSI_905_POP21_POP00_TR_PREF_SAP static
  1010| pwsignal ldp
  1011|  vsi-id 905
  1012|  peer 10.244.188.21
  1013| mtu 9000
  1014| encapsulation ethernet
  1015|#
  1016|vsi VSI_906_POP21_POP00_TR_PREF_SAP static
  1017| pwsignal ldp
  1018|  vsi-id 906
  1019|  peer 10.244.188.21
  1020| mtu 9000
  1021| encapsulation ethernet
  1022|#
  1023|vsi VSI_907_POP21_POP00_TR_PREF_SAP static
  1024| pwsignal ldp
  1025|  vsi-id 907
  1026|  peer 10.244.188.21
  1027|  traffic-statistics enable
  1028| mtu 9000
  1029| encapsulation ethernet
  1030|#
  1031|vsi VSI_912_POP21_POP00_TR_PREF_SAP static
  1032| pwsignal ldp
  1033|  vsi-id 912
  1034|  peer 10.244.188.21
  1035|  traffic-statistics enable
  1036| mtu 9000
  1037| encapsulation ethernet
  1038|#
  1039|vsi VSI_913_POP21_POP00_TR_PREF_SAP static
  1040| pwsignal ldp
  1041|  vsi-id 913
  1042|  peer 10.244.188.21
  1043|  traffic-statistics enable
  1044| mtu 9000
  1045| encapsulation ethernet
  1046|#
  1047|vsi VSI_914_POP21_POP00_TR_PREF_SAP static
  1048| pwsignal ldp
  1049|  vsi-id 914
  1050|  peer 10.244.188.21
  1051|  traffic-statistics enable
  1052| mtu 9000
  1053| encapsulation ethernet
  1054|#
  1055|vsi VSI_915_POP21_POP00_TR_PREF_SAP static
  1056| pwsignal ldp
  1057|  vsi-id 915
  1058|  peer 10.244.188.21
  1059|  traffic-statistics enable
  1060| mtu 9000
  1061| encapsulation ethernet
  1062|#
  1063|vsi VSI_916_POP21_POP00_TR_PREF_SAP static
  1064| pwsignal ldp
  1065|  vsi-id 916
  1066|  peer 10.244.188.21
  1067|  traffic-statistics enable
  1068| mtu 9000
  1069| encapsulation ethernet
  1070|#
  1071|vsi VSI_917_POP21_POP00_TR_PREF_SAP static
  1072| pwsignal ldp
  1073|  vsi-id 917
  1074|  peer 10.244.188.21
  1075|  traffic-statistics enable
  1076| mtu 9000
  1077| encapsulation ethernet
  1078|#
  1079|vsi VSI_919_POP21_POP00_TR_PREF_SAP static
  1080| pwsignal ldp
  1081|  vsi-id 919
  1082|  peer 10.244.188.21
  1083|  traffic-statistics enable
  1084| mtu 9000
  1085| encapsulation ethernet
  1086|#
  1087|vsi VSI_920_POP21_POP00_TR_PREF_SAP static
  1088| pwsignal ldp
  1089|  vsi-id 920
  1090|  peer 10.244.188.21
  1091|  traffic-statistics enable
  1092| mtu 9000
  1093| encapsulation ethernet
  1094|#
  1095|vsi VSI_922_POP21_POP00_TR_PREF_SAP static
  1096| pwsignal ldp
  1097|  vsi-id 922
  1098|  peer 10.244.188.21
  1099|  traffic-statistics enable
  1100| mtu 9000
  1101| encapsulation ethernet
  1102|#
  1103|vsi VSI_923_POP21_POP00_TR_PREF_SAP static
  1104| pwsignal ldp
  1105|  vsi-id 923
  1106|  peer 10.244.188.21
  1107|  traffic-statistics enable
  1108| mtu 9000
  1109| encapsulation ethernet
  1110|#
  1111|vsi VSI_924_POP21_POP00_TR_PREF_SAP static
  1112| pwsignal ldp
  1113|  vsi-id 924
  1114|  peer 10.244.188.21
  1115|  traffic-statistics enable
  1116| mtu 9000
  1117| encapsulation ethernet
  1118|#
  1119|vsi VSI_926_POP21_POP00_TR_PREF_SAP static
  1120| pwsignal ldp
  1121|  vsi-id 926
  1122|  peer 10.244.188.21
  1123|  traffic-statistics enable
  1124| mtu 9000
  1125| encapsulation ethernet
  1126|#
  1127|vsi VSI_977_POP21_POP00_TR_PREF_SAP static
  1128| pwsignal ldp
  1129|  vsi-id 977
  1130|  peer 10.244.188.21
  1131| mtu 9000
  1132| encapsulation ethernet
  1133|#
  1134|vsi VSI_972_POP21_POP00_TR_PREF_SAP static
  1135| pwsignal ldp
  1136|  vsi-id 972
  1137|  peer 10.244.188.21
  1138| mtu 9000
  1139| encapsulation ethernet
  1140|#
  1141|vsi VSI_931_POP21_POP00_TR_PREF_SAP static
  1142| pwsignal ldp
  1143|  vsi-id 931
  1144|  peer 10.244.188.21
  1145|  traffic-statistics enable
  1146| mtu 9000
  1147| encapsulation ethernet
  1148|#
  1149|vsi VSI_934_POP21_POP00_TR_PREF_SAP static
  1150| pwsignal ldp
  1151|  vsi-id 934
  1152|  peer 10.244.188.21
  1153|  traffic-statistics enable
  1154| mtu 9000
  1155| encapsulation ethernet
  1156|#
  1157|vsi VSI_936_POP21_POP00_TR_PREF_SAP static
  1158| pwsignal ldp
  1159|  vsi-id 936
  1160|  peer 10.244.188.21
  1161|  traffic-statistics enable
  1162| mtu 9000
  1163| encapsulation ethernet
  1164|#
  1165|vsi VSI_938_POP21_POP00_TR_PREF_SAP static
  1166| pwsignal ldp
  1167|  vsi-id 938
  1168|  peer 10.244.188.21
  1169| mtu 9000
  1170| encapsulation ethernet
  1171|#
  1172|vsi VSI_939_POP21_POP00_TR_PREF_SAP static
  1173| pwsignal ldp
  1174|  vsi-id 939
  1175|  peer 10.244.188.21
  1176| mtu 9000
  1177| encapsulation ethernet
  1178|#
  1179|vsi VSI_940_POP21_POP00_TR_PREF_SAP static
  1180| pwsignal ldp
  1181|  vsi-id 940
  1182|  peer 10.244.188.21
  1183| mtu 9000
  1184| encapsulation ethernet
  1185|#
  1186|vsi VSI_941_POP21_POP00_TR_PREF_SAP static
  1187| pwsignal ldp
  1188|  vsi-id 941
  1189|  peer 10.244.188.21
  1190| mtu 9000
  1191| encapsulation ethernet
  1192|#
  1193|vsi VSI_942_POP21_POP00_TR_PREF_SAP static
  1194| pwsignal ldp
  1195|  vsi-id 942
  1196|  peer 10.244.188.21
  1197| mtu 9000
  1198| encapsulation ethernet
  1199|#
  1200|vsi VSI_945_POP21_POP00_TR_PREF_SAP static
  1201| pwsignal ldp
  1202|  vsi-id 945
  1203|  peer 10.244.188.21
  1204| mtu 9000
  1205| encapsulation ethernet
  1206|#
  1207|vsi VSI_946_POP21_POP00_TR_PREF_SAP static
  1208| pwsignal ldp
  1209|  vsi-id 946
  1210|  peer 10.244.188.21
  1211| mtu 9000
  1212| encapsulation ethernet
  1213|#
  1214|vsi VSI_947_POP21_POP00_TR_PREF_SAP static
  1215| pwsignal ldp
  1216|  vsi-id 947
  1217|  peer 10.244.188.21
  1218| mtu 9000
  1219| encapsulation ethernet
  1220|#
  1221|vsi VSI_948_POP21_POP00_TR_PREF_SAP static
  1222| pwsignal ldp
  1223|  vsi-id 948
  1224|  peer 10.244.188.21
  1225| mtu 9000
  1226| encapsulation ethernet
  1227|#
  1228|vsi VSI_949_POP21_POP00_TR_PREF_SAP static
  1229| pwsignal ldp
  1230|  vsi-id 949
  1231|  peer 10.244.188.21
  1232| mtu 9000
  1233| encapsulation ethernet
  1234|#
  1235|vsi VSI_952_POP21_POP00_TR_PREF_SAP static
  1236| pwsignal ldp
  1237|  vsi-id 952
  1238|  peer 10.244.188.21
  1239| mtu 9000
  1240| encapsulation ethernet
  1241|#
  1242|vsi VSI_953_POP21_POP00_TR_PREF_SAP static
  1243| pwsignal ldp
  1244|  vsi-id 953
  1245|  peer 10.244.188.21
  1246| mtu 9000
  1247| encapsulation ethernet
  1248|#
  1249|vsi VSI_956_POP21_POP00_TR_PREF_SAP static
  1250| pwsignal ldp
  1251|  vsi-id 956
  1252|  peer 10.244.188.21
  1253| mtu 9000
  1254| encapsulation ethernet
  1255|#
  1256|vsi VSI_957_POP21_POP00_TR_PREF_SAP static
  1257| pwsignal ldp
  1258|  vsi-id 957
  1259|  peer 10.244.188.21
  1260| mtu 9000
  1261| encapsulation ethernet
  1262|#
  1263|vsi VSI_958_POP21_POP00_TR_PREF_SAP static
  1264| pwsignal ldp
  1265|  vsi-id 958
  1266|  peer 10.244.188.21
  1267| mtu 9000
  1268| encapsulation ethernet
  1269|#
  1270|vsi VSI_960_POP21_POP00_TR_PREF_SAP static
  1271| pwsignal ldp
  1272|  vsi-id 960
  1273|  peer 10.244.188.21
  1274| mtu 9000
  1275| encapsulation ethernet
  1276|#
  1277|vsi VSI_963_POP21_POP00_TR_PREF_SAP static
  1278| pwsignal ldp
  1279|  vsi-id 963
  1280|  peer 10.244.188.21
  1281| mtu 9000
  1282| encapsulation ethernet
  1283|#
  1284|vsi VSI_966_POP21_POP00_TR_PREF_SAP static
  1285| pwsignal ldp
  1286|  vsi-id 966
  1287|  peer 10.244.188.21
  1288| mtu 9000
  1289| encapsulation ethernet
  1290|#
  1291|vsi VSI_968_POP21_POP00_TR_PREF_SAP static
  1292| pwsignal ldp
  1293|  vsi-id 968
  1294|  peer 10.244.188.21
  1295| mtu 9000
  1296| encapsulation ethernet
  1297|#
  1298|vsi VSI_973_POP21_POP00_TR_PREF_SAP static
  1299| pwsignal ldp
  1300|  vsi-id 973
  1301|  peer 10.244.188.21
  1302| mtu 9000
  1303| encapsulation ethernet
  1304|#
  1305|vsi VSI_982_POP21_POP00_TR_PREF_SAP static
  1306| pwsignal ldp
  1307|  vsi-id 982
  1308|  peer 10.244.188.21
  1309| mtu 9000
  1310| encapsulation ethernet
  1311|#
  1312|vsi VSI_990_POP21_POP00_TR_PREF_SAP static
  1313| pwsignal ldp
  1314|  vsi-id 990
  1315|  peer 10.244.188.21
  1316| mtu 9000
  1317| encapsulation ethernet
  1318|#
  1319|vsi VSI_3580_POP59_TR_INFRAWEB_PPOE static
  1320| pwsignal ldp
  1321|  vsi-id 3580
  1322|  peer 10.244.188.59
  1323|  traffic-statistics enable
  1324| mtu 9000
  1325| encapsulation ethernet
  1326|#
  1327|vsi VSI_3151_POP00_PROV_ARROBANET static
  1328| pwsignal ldp
  1329|  vsi-id 3151
  1330|  peer 10.244.188.51
  1331| mtu 9000
  1332| encapsulation ethernet
  1333|#
  1334|vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
  1335| pwsignal ldp
  1336|  vsi-id 53
  1337|  peer 10.244.188.5
  1338| mtu 9000
  1339| encapsulation ethernet
  1340|#
  1341|vsi VSI_985_POP21_POP00_TR_PREF_SAP static
  1342| pwsignal ldp
  1343|  vsi-id 985
  1344|  peer 10.244.188.21
  1345| mtu 9000
  1346| encapsulation ethernet
  1347|#
  1348|vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
  1349| pwsignal ldp
  1350|  vsi-id 3964
  1351|  peer 10.244.188.2
  1352| mtu 9000
  1353| encapsulation ethernet
  1354|#
  1355|vsi VSI_986_POP21_POP00_TR_PREF_SAP static
  1356| pwsignal ldp
  1357|  vsi-id 986
  1358|  peer 10.244.188.21
  1359| mtu 9000
  1360| encapsulation ethernet
  1361|#
  1362|vsi VSI_3905_POP17-00_TR_CIRION_L1 static
  1363| pwsignal ldp
  1364|  vsi-id 3905
  1365|  peer 10.244.188.17
  1366|  traffic-statistics enable
  1367| mtu 9000
  1368| encapsulation ethernet
  1369|#
  1370|vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
  1371| pwsignal ldp
  1372|  vsi-id 3602
  1373|  peer 10.244.188.5
  1374| mtu 9000
  1375| encapsulation ethernet
  1376|#
  1377|vsi VSI_251_CY_POP0-2_POP25_CO_OLT1 static
  1378| pwsignal ldp
  1379|  vsi-id 251
  1380|  peer 10.244.188.125
  1381| mtu 9000
  1382| encapsulation ethernet
  1383|#
  1384|explicit-path SW1POP04-00_VIA_POP11_VLAN3203
  1385| next hop 10.244.112.2
  1386| next hop 10.244.110.2
  1387| next hop 10.244.127.2
  1388| next hop 10.244.127.5
  1389| next hop 10.244.111.2
  1390| next hop 10.244.111.5
  1391|#
  1392|mpls ldp
  1393|#
  1394|#
  1395|mpls ldp remote-peer 10.244.188.1
  1396| remote-ip 10.244.188.1
  1397|#
  1398|mpls ldp remote-peer 10.244.188.2
  1399| remote-ip 10.244.188.2
  1400|#
  1401|mpls ldp remote-peer 10.244.188.4
  1402| remote-ip 10.244.188.4
  1403|#
  1404|mpls ldp remote-peer 10.244.188.5
  1405| remote-ip 10.244.188.5
  1406|#
  1407|mpls ldp remote-peer 10.244.188.7
  1408| remote-ip 10.244.188.7
  1409|#
  1410|mpls ldp remote-peer 10.244.188.8
  1411| remote-ip 10.244.188.8
  1412|#
  1413|mpls ldp remote-peer 10.244.188.10
  1414| remote-ip 10.244.188.10
  1415|#
  1416|mpls ldp remote-peer 10.244.188.11
  1417| remote-ip 10.244.188.11
  1418|#
  1419|mpls ldp remote-peer 10.244.188.13
  1420| remote-ip 10.244.188.13
  1421|#
  1422|mpls ldp remote-peer 10.244.188.15
  1423| remote-ip 10.244.188.15
  1424|#
  1425|mpls ldp remote-peer 10.244.188.17
  1426| remote-ip 10.244.188.17
  1427|#
  1428|mpls ldp remote-peer 10.244.188.18
  1429| remote-ip 10.244.188.18
  1430|#
  1431|mpls ldp remote-peer 10.244.188.19
  1432| remote-ip 10.244.188.19
  1433|#
  1434|mpls ldp remote-peer 10.244.188.20
  1435| remote-ip 10.244.188.20
  1436|#
  1437|mpls ldp remote-peer 10.244.188.21
  1438| remote-ip 10.244.188.21
  1439|#
  1440|mpls ldp remote-peer 10.244.188.22
  1441| remote-ip 10.244.188.22
  1442|#
  1443|mpls ldp remote-peer 10.244.188.27
  1444| remote-ip 10.244.188.27
  1445|#
  1446|mpls ldp remote-peer 10.244.188.28
  1447| remote-ip 10.244.188.28
  1448|#
  1449|mpls ldp remote-peer 10.244.188.43
  1450| remote-ip 10.244.188.43
  1451|#
  1452|mpls ldp remote-peer 10.244.188.47
  1453| remote-ip 10.244.188.47
  1454|#
  1455|mpls ldp remote-peer 10.244.188.49
  1456| remote-ip 10.244.188.49
  1457|#
  1458|mpls ldp remote-peer 10.244.188.50
  1459| remote-ip 10.244.188.50
  1460|#
  1461|mpls ldp remote-peer 10.244.188.51
  1462| remote-ip 10.244.188.51
  1463|#
  1464|mpls ldp remote-peer 10.244.188.59
  1465| remote-ip 10.244.188.59
  1466|#
  1467|mpls ldp remote-peer 10.244.188.60
  1468| remote-ip 10.244.188.60
  1469|#
  1470|mpls ldp remote-peer 10.244.188.62
  1471| remote-ip 10.244.188.62
  1472|#
  1473|mpls ldp remote-peer 10.244.188.67
  1474| remote-ip 10.244.188.67
  1475|#
  1476|mpls ldp remote-peer 10.244.188.99
  1477| remote-ip 10.244.188.99
  1478|#
  1479|mpls ldp remote-peer 10.244.188.125
  1480| remote-ip 10.244.188.125
  1481|#
  1482|mpls ldp remote-peer 10.244.189.3
  1483| remote-ip 10.244.189.3
  1484|#
  1485|mpls ldp remote-peer 10.244.189.5
  1486| remote-ip 10.244.189.5
  1487|#
  1488|mpls ldp remote-peer 10.244.189.10
  1489| remote-ip 10.244.189.10
  1490|#
  1491|mpls ldp remote-peer 10.244.189.11
  1492| remote-ip 10.244.189.11
  1493|#
  1494|mpls ldp remote-peer 10.244.189.12
  1495| remote-ip 10.244.189.12
  1496|#
  1497|mpls ldp remote-peer 10.244.189.14
  1498| remote-ip 10.244.189.14
  1499|#
  1500|mpls ldp remote-peer 10.244.189.15
  1501| remote-ip 10.244.189.15
  1502|#
  1503|mpls ldp remote-peer 10.244.189.28
  1504| remote-ip 10.244.189.28
  1505|#
  1506|mpls ldp remote-peer 10.244.189.65
  1507| remote-ip 10.244.189.65
  1508|#
  1509|mpls ldp remote-peer 10.244.189.67
  1510| remote-ip 10.244.189.67
  1511|#
  1512|rsa peer-public-key 10.244.110.6
  1513| public-key-code begin
  1514|  30820109
  1515|    02820100
  1516|      E09A5CC1 F761B429 D35C7D9A E4600853 5C186444 3D8D977F 2152D97E 9D512D50
  1517|      1059FF35 788CCE1D 45D34E7B 23B2E884 F19E936F 878E2B46 8599B6BE 2A882B1F
  1518|      BFC5F8B0 0B4454B2 E6B1B6DE ED926E55 B1D6ACAA CA8AF6F8 0CF8AFED 903F1077
  1519|      0D8E49DA A06E1BE7 621911D6 B96FCC7C EA5DB211 AF76367E CFFD906E 8212C753
  1520|      02C12382 0FFDB971 6F6D2CBD F57FB52A 9F175874 8A992F72 F5C43101 90209A8E
  1521|      388BDD8D 6A261AC0 2827EF28 E3BE372F 574EF7B3 3E5D5F7F DAE0B930 9F2DF2AE
  1522|      6760B695 01A30E1C AB83F389 8F47C30F 4E9CB918 E0134F81 8A245401 C4C7CA80
  1523|      3464BC48 53330D46 6F5FD1AB E1B69D38 536E9127 D90FF79A 7D4892B6 9D5B2D91
  1524|    0203
  1525|      010001
  1526| public-key-code end
  1527|peer-public-key end
  1528|#
  1529|pki realm default
  1530| certificate-check none
  1531|#
  1532|free-rule-template name default_free_rule
  1533|#
  1534|portal-access-profile name portal_access_profile
  1535|#
  1536|drop-profile default
  1537|#
  1538|vlan 4
  1539| description VLAN_4_PTP_CGNAT1_BGP1_CYBER
  1540|vlan 11
  1541| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1542|vlan 12
  1543| description VLAN_12_POP0_ARQU_OLT1_SCHOSSLER
  1544|vlan 13
  1545| description VLAN_13_POP00_ARQU_OLT1_SCHOSSLER
  1546|vlan 16
  1547| description VLAN16_SERVIDORES_IP_PUBLICO
  1548|vlan 17
  1549| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1550|vlan 18
  1551| description VALN_18_POP0_SAP_RAD
  1552|vlan 19
  1553| description VLAN19_GERENCIA_EQUIPAMENTOS
  1554|vlan 21
  1555| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1556|vlan 23
  1557| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1558|vlan 30
  1559| description VLAN_30_POP03_M_FOLRES_MGNT
  1560|vlan 31
  1561| description VLAN_31_POP03_M_FLORES_OLT1
  1562|vlan 39
  1563| description VLAN_39_POP03_M_FLORES_RADIOS
  1564|vlan 40
  1565| description VLAN_40_POP04_POA_HIPICA
  1566|vlan 41
  1567| description VLAN_41_POP04_PPPOE_CLIENTES
  1568|vlan 50
  1569| description VLAN_50_M_RINCAO_GERENCIA
  1570|vlan 51
  1571| description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
  1572|vlan 53
  1573| description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
  1574|vlan 60
  1575| description VLAN_60_POP06_B_VISTA_MGNT
  1576|vlan 61
  1577| description VLAN_61_POP06_B_VISTA_OLT1
  1578|vlan 70
  1579| description VLAN_70_POP07_S_TECLA_GERENCIA
  1580|vlan 71
  1581| description VLAN_71_POP07_S_TECLA_OLT1
  1582|vlan 73
  1583| description VLAN_73_POP07_S_TECLA_OLT1
  1584|vlan 80
  1585| description VLAN_80_POP08_FREITAS_MGNT
  1586|vlan 81
  1587| description VLAN_81_POP08_FREITAS_OLT1
  1588|vlan 83
  1589| description VLAN_83_CYBER_POP08_FREITAS_OLT1
  1590|vlan 90
  1591| description VLAN_90_POP09_ITACOLOMI_MGNT
  1592|vlan 91
  1593| description VLAN_91_POP09_ITACOLOMI_OLT1
  1594|vlan 100
  1595| description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
  1596|vlan 101
  1597| description VLAN_101_POP10_P_EUCALIPTOS_OLT1
  1598|vlan 110
  1599| description VLAN_110_POP11_COND_VIVAZ_MGNT
  1600|vlan 111
  1601| description VLAN_111_POP11_COND_VIVAZ_OLT1
  1602|vlan 113
  1603| description VLAN_113_POP11_COND_VIVAZ_OLT1
  1604|vlan 120
  1605| description vlan120_POP12_BETANIA_GERENCIA
  1606|vlan 121
  1607| description VLAN_121_POP12_BETANIA_OLT1
  1608|vlan 130
  1609| description VLAN_130_POP13_C_HAVANA_MGNT
  1610|vlan 131
  1611| description VLAN_131_POP13_C_HAVANA_OLT1
  1612|vlan 133
  1613| description VLAN_133_POP13_C_HAVANA_OLT1
  1614|vlan 140
  1615| description VLAN_140_POP14_LOMBA_GRANDE
  1616|vlan 141
  1617| description VLAN_141_POP14_LOMBA_GRANDE
  1618|vlan 150
  1619| description VLAN_150_POP15_EXPOINTER_GERENCIA
  1620|vlan 151
  1621| description VLAN_151_POP15_EXPOINTER_OLT1
  1622|vlan 160
  1623| description VLAN_160_POP16_CASTELINHO_MGNT
  1624|vlan 161
  1625| description VLAN_161_POP16_CASTELINHO_OLT1
  1626|vlan 169
  1627| description VLAN_169_POP16_CASTELINHO_RADIO
  1628|vlan 171
  1629| description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
  1630|vlan 173
  1631| description VLAN_173_POP17_ELEA_PPPOE_CYBER
  1632|vlan 181
  1633| description VLAN_181_POP18_CEIC_PROCEMPA
  1634|vlan 190
  1635| description VLAN_190_POP19_HIPICA_GERENCIA
  1636|vlan 191
  1637| description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
  1638|vlan 193
  1639| description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
  1640|vlan 194
  1641| description VLAN_194_POP19_TRANSP_RSSUL
  1642|vlan 200
  1643| description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
  1644|vlan 201
  1645| description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
  1646|vlan 203
  1647| description VLAN_203_POP20_S_JOAO_OLT1_CYBER
  1648|vlan 211
  1649| description VLAN_211_POP21_PREF_SAPUCAIA
  1650|vlan 213
  1651| description VLAN_213_POP21_PREF_SAPUCAIA
  1652|vlan 220
  1653| description VLAN_220_POP22_PIRATINI
  1654|vlan 250
  1655| description VLAN_250_POP25_GERENCIA
  1656|vlan 251
  1657| description VLAN_250_POP25_OLT1
  1658|vlan 253
  1659| description VLAN_253_POP25_OLT1_CYBERWEB
  1660|vlan 258
  1661| description VLAN_258_POP25_OLT1_SCHOSSLER
  1662|vlan 271
  1663| description VLAN_271_POP27_CIVIL_OLT1
  1664|vlan 273
  1665| description VLAN_273_POP27_CIVIL_OLT1
  1666|vlan 281
  1667| description VLAN_281_POP28_V_RICA_OLT1
  1668|vlan 283
  1669| description VLAN_283_POP28_V_RICA_OLT1
  1670|vlan 905
  1671| description VLAN_905_TRANS_PREF_SAPUCAIA
  1672|vlan 906
  1673| description VLAN_906_TRANS_PREF_SAPUCAIA
  1674|vlan 907
  1675| description VLAN_907_TRANS_PREF_SAPUCAIA
  1676|vlan 912
  1677| description VLAN_912_TRANS_PREF_SAPUCAIA
  1678|vlan 913
  1679| description VLAN_913_TRANS_PREF_SAPUCAIA
  1680|vlan 914
  1681| description VLAN_914_TRANS_PREF_SAPUCAIA
  1682|vlan 915
  1683| description VLAN_915_TRANS_PREF_SAPUCAIA
  1684|vlan 916
  1685| description VLAN_916_TRANS_PREF_SAPUCAIA
  1686|vlan 917
  1687| description VLAN_917_TRANS_PREF_SAPUCAIA
  1688|vlan 919
  1689| description VLAN_919_TRANS_PREF_SAPUCAIA
  1690|vlan 920
  1691| description VLAN_920_TRANS_PREF_SAPUCAIA
  1692|vlan 922
  1693| description VLAN_922_TRANS_PREF_SAPUCAIA
  1694|vlan 923
  1695| description VLAN_923_TRANS_PREF_SAPUCAIA
  1696|vlan 924
  1697| description VLAN_924_TRANS_PREF_SAPUCAIA
  1698|vlan 926
  1699| description VLAN_926_TRANS_PREF_SAPUCAIA
  1700|vlan 931
  1701| description VLAN_931_TRANS_PREF_SAPUCAIA
  1702|vlan 934
  1703| description VLAN_934_TRANS_PREF_SAPUCAIA
  1704|vlan 936
  1705| description VLAN_936_TRANS_PREF_SAPUCAIA
  1706|vlan 938
  1707| description VLAN_938_TRANS_PREF_SAPUCAIA
  1708|vlan 939
  1709| description VLAN_939_TRANS_PREF_SAPUCAIA
  1710|vlan 940
  1711| description VLAN_940_TRANS_PREF_SAPUCAIA
  1712|vlan 941
  1713| description VLAN_941_TRANS_PREF_SAPUCAIA
  1714|vlan 942
  1715| description VLAN_942_TRANS_PREF_SAPUCAIA
  1716|vlan 945
  1717| description VLAN_945_TRANS_PREF_SAPUCAIA
  1718|vlan 946
  1719| description VLAN_946_TRANS_PREF_SAPUCAIA
  1720|vlan 947
  1721| description VLAN_947_TRANS_PREF_SAPUCAIA
  1722|vlan 948
  1723| description VLAN_948_TRANS_PREF_SAPUCAIA
  1724|vlan 949
  1725| description VLAN_949_TRANS_PREF_SAPUCAIA
  1726|vlan 952
  1727| description VLAN_952_TRANS_PREF_SAPUCAIA
  1728|vlan 953
  1729| description VLAN_953_TRANS_PREF_SAPUCAIA
  1730|vlan 956
  1731| description VLAN_956_TRANS_PREF_SAPUCAIA
  1732|vlan 957
  1733| description VLAN_957_TRANS_PREF_SAPUCAIA
  1734|vlan 958
  1735| description VLAN_958_TRANS_PREF_SAPUCAIA
  1736|vlan 959
  1737| description VLAN_959_TRANSP_VERO
  1738|vlan 960
  1739| description VLAN_960_TRANS_PREF_SAPUCAIA
  1740|vlan 963
  1741| description VLAN_963_TRANS_PREF_SAPUCAIA
  1742|vlan 965
  1743| description VLAN_965_TRANS_PREF_SAPUCAIA
  1744|vlan 966
  1745| description VLAN_966_TRANS_PREF_SAPUCAIA
  1746|vlan 968
  1747| description VLAN_968_TRANS_PREF_SAPUCAIA
  1748|vlan 970
  1749| description VLAN_970_TRANS_PREF_SAPUCAIA
  1750|vlan 971
  1751| description VLAN_971_TRANS_PREF_SAPUCAIA
  1752|vlan 972
  1753| description VLAN_972_TRANS_PREF_SAPUCAIA
  1754|vlan 973
  1755| description VLAN_973_TRANS_PREF_SAPUCAIA
  1756|vlan 974
  1757| description VLAN_974_TRANSP_VERO
  1758|vlan 977
  1759| description VLAN_977_TRANS_PREF_SAPUCAIA
  1760|vlan 982
  1761| description VLAN_982_TRANS_PREF_SAPUCAIA
  1762|vlan 985
  1763| description VLAN_985_TRANSP_VERO
  1764|vlan 986
  1765| description VLAN_986_TRANS_PREF_SAPUCAIA
  1766|vlan 990
  1767| description VLAN_990_TRANS_PREF_SAPUCAIA
  1768|vlan 1001
  1769| description VLAN_1001_BGP1_CYBER_CE01
  1770|vlan 1003
  1771| description VLAN1003_BGP1_CYBER_CE03_CYBER
  1772|vlan 1100
  1773| description VLAN1100_SW1POP0_SW1POP0_MPLS1
  1774|vlan 1108
  1775| description VLAN1108_SW1POP00_SW1POP08_MPLS1
  1776|vlan 1111
  1777| description VLAN_1111_CGNAT1_CE01_OSPF
  1778|vlan 1112
  1779| description VLAN1112_SW1POP00_SW1POP12_MPLS1
  1780|vlan 1121
  1781| description VLAN_1121_SW1POP00_SW1POP21_MPLS1
  1782|vlan 1125
  1783| description VLAN_1125_SW1POP00_SW1POP25_MPLS1
  1784|vlan 1138
  1785| description VLAN_1138_VERO_CDN
  1786|vlan 1144
  1787| description VLAN_1144_SW1POP00_SW1POP44_MPLS1
  1788|vlan 1152
  1789| description VLAN_1152_SW1POP00_SW1POP52_OSPF1
  1790|vlan 1164
  1791| description VLAN_1164_LINK1_IPV4_VERO
  1792|vlan 1166
  1793| description VLAN_1166_SW1POP0_SW1POP66_OSPF
  1794|vlan 1195
  1795| description VLAN1195_SW1PO11_SW1PO95_DGTSSP
  1796|vlan 1264
  1797| description VLAN_1164_LINK1_IPV6_VERO
  1798|vlan 1295
  1799| description VLAN1295_SW1PO11_SW1PO95_DGTSSP
  1800|vlan 1395
  1801| description VLAN1395_SW1PO11_SW1PO95_DGTSSP
  1802|vlan 1914
  1803| description VLAN_1914_SEABORN_L1_BGP1_ASN273461
  1804|vlan 2311
  1805| description VLAN2311_TRANSP_VERO_POP14_L_GRANDE
  1806|vlan 2340
  1807| description VLAN2340_INFRAWEB_GERENCIA
  1808|vlan 2341
  1809| description VLAN2341_INFRAWEB_PPPOE
  1810|vlan 2733
  1811| description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
  1812|vlan 3000
  1813| description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
  1814|vlan 3005
  1815| description VLAN_3005_TRANSP_TELIUM_S_CASA
  1816|vlan 3101
  1817| description VLAN_3101_TRANP_CAMERAS_BRIGADA
  1818|vlan 3102
  1819| description VLAN_3102_TRANP_CAMERAS_BRIGADA
  1820|vlan 3105
  1821| description VLAN_3105_TRANSPORTE_SSP_POA
  1822|vlan 3106
  1823| description VLAN_3106_TRANSPORTE_SSP_POA
  1824|vlan 3107
  1825| description VLAN_3107_TRANSP_POA_MAIS_SEG
  1826|vlan 3108
  1827| description VLAN_3108_TRANSP_POA_MAIS_SEG
  1828|vlan 3111
  1829| description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
  1830|vlan 3114
  1831| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
  1832|vlan 3119
  1833| description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
  1834|vlan 3120
  1835| description VLAN_3120_BGP1_NE40_CE20_OSPF
  1836|vlan 3121
  1837| description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
  1838|vlan 3143
  1839| description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
  1840|vlan 3147
  1841| description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
  1842|vlan 3149
  1843| description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
  1844|vlan 3150
  1845| description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
  1846|vlan 3151
  1847| description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
  1848|vlan 3152
  1849| description VLAN3152_BGP1_CYBER_BGP1_BLUSTELECOM
  1850|vlan 3153
  1851| description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
  1852|vlan 3154
  1853| description VLAN_3154_CYBER_BGP1_LM_V_RICA_L1
  1854|vlan 3155
  1855| description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
  1856|vlan 3160
  1857| description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
  1858|vlan 3162
  1859| description VLAN_3162_BGP1_POP62_EQUATORIAL
  1860|vlan 3163
  1861| description VLAN3163_BGP1_CE63_VILLELA
  1862|vlan 3166
  1863| description VLAN_3166_CYBER_BGP1_WIANETSUL_L1
  1864|vlan 3167
  1865| description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
  1866|vlan 3203
  1867| description VLAN_3203_TRANSP_IXRS_BLUS
  1868|vlan 3207
  1869| description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
  1870|vlan 3208
  1871| description VLAN_3208_PNI_GGC_ASN273461
  1872|vlan 3252
  1873| description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
  1874|vlan 3256
  1875| description VLAN_3256_PPPOE_CLIENTES_TELIUM
  1876|vlan 3261
  1877| description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
  1878|vlan 3266
  1879| description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
  1880|vlan 3341
  1881| description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
  1882|vlan 3511
  1883| description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
  1884|vlan 3532
  1885| description VLAN_3532_TRANSP_CAM_CAMAQUA
  1886|vlan 3533
  1887| description VLAN_3533_TRANSP_CAM_CAMAQUA
  1888|vlan 3540
  1889| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
  1890|vlan 3541
  1891| description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
  1892|vlan 3550
  1893| description VLAN_3550_TRANSP_R_NEUTRA_LM
  1894|vlan 3560
  1895| description VLAN_3560_POWERNET_R_NEUTRA
  1896|vlan 3571
  1897| description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
  1898|vlan 3580
  1899| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
  1900|vlan 3581
  1901| description VLAN3581_RN_CYBER_NA_INFRAWEB
  1902|vlan 3592
  1903| description VLAN_3592_ALT_ADVANTA
  1904|vlan 3602
  1905| description VLAN_3602_TR_ADYL_POP14_ADVANTA
  1906|vlan 3790
  1907| description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
  1908|vlan 3791
  1909| description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
  1910|vlan 3902
  1911| description VLAN_3902_EQUINIX_CYBER_BGP1
  1912|vlan 3904
  1913| description VLAN3904_SW1POP01_SW1POP00_PNI_META
  1914|vlan 3905
  1915| description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
  1916|vlan 3906
  1917| description VLAN3906_SW1POP01_SW1POP00_PNI_META
  1918|vlan 3964
  1919| description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
  1920|vlan 4000
  1921| description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
  1922|vlan 4001
  1923| description VLAN_4001_BGP1CYBER_CGNAT1_SCHOSSLER
  1924|vlan 4012
  1925| description VLAN_4012_CGNAT1_BGP2
  1926|vlan 4094
  1927| description VLAN_4094_BLACKHOLE
  1928|#
  1929|aaa
  1930| authentication-scheme default
  1931|  authentication-mode local
  1932| authentication-scheme radius
  1933|  authentication-mode radius
  1934| authorization-scheme default
  1935|  authorization-mode local
  1936| accounting-scheme default
  1937|  accounting-mode none
  1938| local-aaa-user password policy administrator
  1939|  password history record number 0
  1940|  password expire 0
  1941| domain default
  1942|  authentication-scheme radius
  1943|  accounting-scheme default
  1944|  radius-server default
  1945| domain default_admin
  1946|  authentication-scheme default
  1947|  accounting-scheme default
  1948| local-user admin password irreversible-cipher $1c$q6&9:g>RA-$|\C)9;1bq4^uT098E$vO)BE[PjFpQ$DZWU=%(;o>$
  1949| local-user admin privilege level 15
  1950| local-user admin service-type ssh http
  1951| local-user future password irreversible-cipher $1c$Y5}lDwN=E:$!DRV>(;)M~pr*6ESw7~@vzIg4OQmiWIP|2TP!*u6$
  1952| local-user future privilege level 15
  1953| local-user future service-type ssh
  1954| local-user zandona password irreversible-cipher $1c$Ln|t*R>'-8$p/SsDlFwfE)KQH>Q$5VR-F7/00i=:(QGD&CU(dhR$
  1955| local-user zandona privilege level 15
  1956| local-user zandona service-type telnet ssh http
  1957|#
  1958|ntp-service server disable
  1959|ntp-service ipv6 server disable
  1960|ntp-service unicast-server 200.189.40.8
  1961|ntp-service unicast-server 200.160.0.8
  1962|#
  1963|interface Vlanif2
  1964| description VLAN_2_GERENCIA
  1965| ip address 10.244.0.98 255.255.255.252
  1966|#
  1967|interface Vlanif11
  1968| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1969| l2 binding vsi VSI_11_CY_POP00_POP02_SAP_OLT1
  1970|#
  1971|interface Vlanif12
  1972| description VLAN_12_POP0_SAP_OLT1
  1973| l2 binding vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1
  1974|#
  1975|interface Vlanif13
  1976| description VLAN_13_POP00_ARQU_OLT1_CYBER
  1977| l2 binding vsi VSI_13_CY_POP00_POP02_SAP_OLT1
  1978|#
  1979|interface Vlanif16
  1980| description VLAN16_SERVIDORES_IP_PUBLICO
  1981| l2 binding vsi VSI_16_SERVIDORES_IP_PUBLICOS
  1982|#
  1983|interface Vlanif17
  1984| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1985| l2 binding vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV
  1986|#
  1987|interface Vlanif18
  1988| description VALN_18_POP0_SAP_RAD
  1989| l2 binding vsi VSI_18_CY_POP00_POP02_SAP_RADI
  1990|#
  1991|interface Vlanif21
  1992| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1993| l2 binding vsi VSI_21_CY_POP00_POP02_POA_OLT1
  1994|#
  1995|interface Vlanif23
  1996| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1997| l2 binding vsi VSI_23_CY_POP00_POP02_POA_OLT1
  1998|#
  1999|interface Vlanif30
  2000| description VLAN_30_POP03_M_FOLRES_MGNT
  2001|