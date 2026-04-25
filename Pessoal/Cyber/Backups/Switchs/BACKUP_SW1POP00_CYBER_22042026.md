[[SW1POP00]]

     1|```yaml
     2|User Authentication
     3|(admin@10.244.189.0) Password:
     4|
     5|Info: The max number of VTY users is 10, and the number
     6|      of current VTY users on line is 1.
     7|      The current login time is 2026-04-22 11:13:23-03:00.
     8|Info: Lastest accessed IP: 10.244.19.90  Time: 2026-04-22 11:07:17-03:00  Password will expire in: -
     9|
    10|Info: Smart-upgrade is currently disabled. Enable Smart-upgrade to get recommended version information.
    11|<SW1POP00_CYBER>displ
    12|<SW1POP00_CYBER>display curr
    13|<SW1POP00_CYBER>display current-configuration
    14|!Software Version V200R023C00SPC500
    15|#
    16|sysname SW1POP00_CYBER
    17|#
    18|vlan batch 2 4 10 to 13 16 to 19 21 23 30 to 31 39 to 41 50 to 51 53
    19|vlan batch 60 to 61 70 to 71 73 80 to 81 83 90 to 91 100 to 101 110 to 111 113 120 to 121
    20|vlan batch 130 to 131 133 140 to 141 150 to 151 160 to 161 169 171 173 181 190 to 191
    21|vlan batch 193 to 194 200 to 201 203 211 213 220 230 to 231 233 250 to 251 253
    22|vlan batch 258 271 273 281 283 905 to 907 912 to 917 919 to 920 922 to 924 926
    23|vlan batch 931 934 936 938 to 942 945 to 949 952 to 953 956 to 960 963 965 to 966 968
    24|vlan batch 970 to 974 977 982 985 to 986 990 1001 1003 1100 1108 1111 to 1112
    25|vlan batch 1121 1125 1138 1144 1152 1164 1166 1195 1264 1295
    26|vlan batch 1395 1914 2311 2340 to 2341 2733 3000 3005 3101 to 3102 3105 to 3108 3111
    27|vlan batch 3114 3119 to 3121 3143 3147 3149 to 3155 3160 3162 to 3163 3166 to 3167 3203 3207 to 3208
    28|vlan batch 3252 3256 3261 3266 3341 3511 3532 to 3533 3540 to 3541 3550 3560
    29|vlan batch 3571 3580 to 3581 3592 3602 3790 to 3791 3902 3904 to 3906 3964 4000 to 4001 4012
    30|vlan batch 4094
    31|#
    32|authentication-profile name default_authen_profile
    33| authentication ipv6-control enable
    34|authentication-profile name dot1x_authen_profile
    35| authentication ipv6-control enable
    36|authentication-profile name dot1xmac_authen_profile
    37| authentication ipv6-control enable
    38|authentication-profile name mac_authen_profile
    39| authentication ipv6-control enable
    40|authentication-profile name multi_authen_profile
    41| authentication ipv6-control enable
    42|authentication-profile name portal_authen_profile
    43| authentication ipv6-control enable
    44|#
    45|set save-configuration delay 1
    46|set save-configuration backup-to-server server 10.244.244.250 transport-type ftp user backups password %^%#z<fx&-0ygD&B'gOhZ28EVx3B=ku;/L,%Yi#@T6KL%^%# path huawei
    47|#
    48|http server-source all-interface
    49|#
    50|clock timezone Brasilia minus 03:00:00
    51|#
    52|ddr isolation disable
    53|#
    54|undo mac-address learning self-healing enable
    55|#
    56|capwap unknown-unicast cir 0
    57|#
    58|diffserv domain default
    59|#
    60|radius-server template default
    61|#
    62|bfd
    63|#
    64|mpls lsr-id 10.244.189.0
    65|mpls
    66| mpls te
    67| mpls rsvp-te
    68| mpls te cspf
    69|#
    70|mpls l2vpn
    71|#
    72|vsi VSI_21_CY_POP00_POP02_POA_OLT1 static
    73| pwsignal ldp
    74|  vsi-id 21
    75|  peer 10.244.188.2
    76|  traffic-statistics enable
    77| mtu 9000
    78| encapsulation ethernet
    79|#
    80|vsi VSI_41_CY_POP0-2_POP04_HIP_OLT1 static
    81| pwsignal ldp
    82|  vsi-id 41
    83|  peer 10.244.188.19
    84|  traffic-statistics enable
    85| mtu 9000
    86| encapsulation ethernet
    87|#
    88|vsi VSI_3120_POP00_POP20_BGP1_CE20 static
    89| pwsignal ldp
    90|  vsi-id 3120
    91|  peer 10.244.188.20
    92| mtu 9000
    93| encapsulation ethernet
    94|#
    95|vsi VSI_161_CY_POP0-2_POP16_CA_OLT1 static
    96| pwsignal ldp
    97|  vsi-id 161
    98|  peer 10.244.189.3
    99|  traffic-statistics enable
   100| mtu 9000
   101| encapsulation ethernet
   102|#
   103|vsi VSI_169_CY_POP0-2_POP16_CA_RADI static
   104| pwsignal ldp
   105|  vsi-id 169
   106|  peer 10.244.189.3
   107|  traffic-statistics enable
   108| mtu 9000
   109| encapsulation ethernet
   110|#
   111|vsi VSI_31_CY_POP0-2_POP03_M_F_OLT1 static
   112| pwsignal ldp
   113|  vsi-id 31
   114|  peer 10.244.189.3
   115|  traffic-statistics enable
   116| mtu 9000
   117| encapsulation ethernet
   118|#
   119|vsi VSI_61_CY_POP0-2_POP06_B_V_OLT1 static
   120| pwsignal ldp
   121|  vsi-id 61
   122|  peer 10.244.188.7
   123|  traffic-statistics enable
   124| mtu 9000
   125| encapsulation ethernet
   126|#
   127|vsi VSI_91_CY_POP0-2_POP09_ITA_OLT1 static
   128| pwsignal ldp
   129|  vsi-id 91
   130|  peer 10.244.189.3
   131|  traffic-statistics enable
   132| mtu 9000
   133| encapsulation ethernet
   134|#
   135|vsi VSI_101_CY_POP0-2_POP10_PQ_OLT1 static
   136| pwsignal ldp
   137|  vsi-id 101
   138|  peer 10.244.189.10
   139|  traffic-statistics enable
   140| mtu 9000
   141| encapsulation ethernet
   142|#
   143|vsi VSI_160_CY_POP0-2_POP16_CA_MGNT static
   144| pwsignal ldp
   145|  vsi-id 160
   146|  peer 10.244.189.3
   147|  traffic-statistics enable
   148| mtu 9000
   149| encapsulation ethernet
   150|#
   151|vsi VSI_90_CY_POP0-2_POP09_ITA_MGNT static
   152| pwsignal ldp
   153|  vsi-id 90
   154|  peer 10.244.189.3
   155|  traffic-statistics enable
   156| mtu 9000
   157| encapsulation ethernet
   158|#
   159|vsi VSI_60_CY_POP0-2_POP06_B_V_MGNT static
   160| pwsignal ldp
   161|  vsi-id 60
   162|  peer 10.244.188.7
   163|  traffic-statistics enable
   164| mtu 9000
   165| encapsulation ethernet
   166|#
   167|vsi VSI_30_CY_POP0-2_POP03_M_F_MGNT static
   168| pwsignal ldp
   169|  vsi-id 30
   170|  peer 10.244.189.3
   171|  traffic-statistics enable
   172| mtu 9000
   173| encapsulation ethernet
   174|#
   175|vsi VSI_71_CY_POP0-2_POP07_STE_OLT1 static
   176| pwsignal ldp
   177|  vsi-id 71
   178|  peer 10.244.188.7
   179|  traffic-statistics enable
   180| mtu 9000
   181| encapsulation ethernet
   182|#
   183|vsi VSI_121_CY_POP0-2_POP12_BE_OLT1 static
   184| pwsignal ldp
   185|  vsi-id 121
   186|  peer 10.244.189.12
   187|  traffic-statistics enable
   188| mtu 9000
   189| encapsulation ethernet
   190|#
   191|vsi VSI_120_CY_POP0-2_POP12_BE_MGNT static
   192| pwsignal ldp
   193|  vsi-id 120
   194|  peer 10.244.189.12
   195|  traffic-statistics enable
   196| mtu 9000
   197| encapsulation ethernet
   198|#
   199|vsi VSI_70_CY_POP0-2_POP07_STE_MGNT static
   200| pwsignal ldp
   201|  vsi-id 70
   202|  peer 10.244.188.7
   203|  traffic-statistics enable
   204| mtu 9000
   205| encapsulation ethernet
   206|#
   207|vsi VSI_100_CY_POP0-2_POP10_PQ_MGNT static
   208| pwsignal ldp
   209|  vsi-id 100
   210|  peer 10.244.189.10
   211|  traffic-statistics enable
   212| mtu 9000
   213| encapsulation ethernet
   214|#
   215|vsi VSI_130_POP0-2_POP13_C_HA_MGNT static
   216| pwsignal ldp
   217|  vsi-id 130
   218|  peer 10.244.188.2
   219|  peer 10.244.189.65
   220|  traffic-statistics enable
   221| mtu 9000
   222| encapsulation ethernet
   223|#
   224|vsi VSI_81_POP0-2_POP08_FREITA_OLT1 static
   225| pwsignal ldp
   226|  vsi-id 81
   227|  peer 10.244.188.8
   228|  traffic-statistics enable
   229| mtu 9000
   230| encapsulation ethernet
   231|#
   232|vsi VSI_3153_CY_POP00_PROV_LM_CIVIL static
   233| pwsignal ldp
   234|  vsi-id 3153
   235|  peer 10.244.188.27
   236|  peer 10.244.188.28
   237|  traffic-statistics enable
   238| mtu 9000
   239| encapsulation ethernet
   240|#
   241|vsi VSI_3560_TRANS_PPPOE_POWERNET static
   242| pwsignal ldp
   243|  vsi-id 3560
   244|  peer 10.244.188.125
   245|  peer 10.244.188.27
   246| mtu 9000
   247| encapsulation ethernet
   248|#
   249|vsi VSI_23_CY_POP00_POP02_POA_OLT1 static
   250| pwsignal ldp
   251|  vsi-id 23
   252|  peer 10.244.188.2
   253|  traffic-statistics enable
   254| mtu 9000
   255| encapsulation ethernet
   256|#
   257|vsi VSI_253_CY_POP0-2_POP25_PO_OLT1 static
   258| pwsignal ldp
   259|  vsi-id 253
   260|  peer 10.244.188.125
   261|  traffic-statistics enable
   262| mtu 9000
   263| encapsulation ethernet
   264|#
   265|vsi VSI_258_CY_POP0-2_POP25_PO_OLT1 static
   266| pwsignal ldp
   267|  vsi-id 258
   268|  peer 10.244.188.125
   269|  traffic-statistics enable
   270| mtu 9000
   271| encapsulation ethernet
   272|#
   273|vsi VSI_110_POP00_02_POP11_VI_MGNT static
   274| pwsignal ldp
   275|  vsi-id 110
   276|  peer 10.244.189.11
   277|  traffic-statistics enable
   278| mtu 9000
   279| encapsulation ethernet
   280|#
   281|vsi VSI_111_POP00_02_POP11_VI_OLT1 static
   282| pwsignal ldp
   283|  vsi-id 111
   284|  peer 10.244.188.11
   285|  peer 10.244.188.11 pw POP00_POP11_ANT
   286|  peer 10.244.189.11
   287|  traffic-statistics enable
   288| mtu 9000
   289| encapsulation ethernet
   290|#
   291|vsi VSI_971_POP21_POP00_TR_PREF_SAP static
   292| pwsignal ldp
   293|  vsi-id 971
   294|  peer 10.244.188.21
   295| mtu 9000
   296| encapsulation ethernet
   297|#
   298|vsi VSI_3155_CY_POP00_PROV_LM_V_MAR static
   299| pwsignal ldp
   300|  vsi-id 3155
   301|  peer 10.244.188.28
   302|  peer 10.244.189.28
   303| mtu 9000
   304| encapsulation ethernet
   305|#
   306|vsi VSI_3154_CY_POP00_PROV_LM_V_RIC static
   307| pwsignal ldp
   308|  vsi-id 3154
   309|  peer 10.244.188.28
   310|  peer 10.244.189.28
   311| mtu 9000
   312| encapsulation ethernet
   313|#
   314|vsi VSI3906_PNI_META_POP00_CYBER static
   315| pwsignal ldp
   316|  vsi-id 3906
   317|  peer 10.244.188.1
   318| mtu 8000
   319| encapsulation ethernet
   320|#
   321|vsi VSI_3160_CY_POP00_PROV_NIC_TELE static
   322| pwsignal ldp
   323|  vsi-id 3160
   324|  peer 10.244.188.15
   325|  peer 10.244.189.15
   326| mtu 9000
   327| encapsulation ethernet
   328|#
   329|vsi VSI_113_POP00_02_POP11_VI_OLT1 static
   330| pwsignal ldp
   331|  vsi-id 113
   332|  peer 10.244.188.11
   333|  peer 10.244.189.11
   334|  traffic-statistics enable
   335| mtu 9000
   336| encapsulation ethernet
   337|#
   338|vsi VSI_150_CY_POP00_POP15_EXP_MGNT static
   339| pwsignal ldp
   340|  vsi-id 150
   341|  peer 10.244.189.15
   342|  traffic-statistics enable
   343| mtu 9000
   344| encapsulation ethernet
   345|#
   346|vsi VSI_3571_POP0-2_RNEUTRA_LP_SAND static
   347| pwsignal ldp
   348|  vsi-id 3571
   349|  peer 10.244.188.20
   350|  traffic-statistics enable
   351| mtu 9000
   352| encapsulation ethernet
   353|#
   354|vsi VSI_151_CY_POP0-2_POP15_EX_OLT1 static
   355| pwsignal ldp
   356|  vsi-id 151
   357|  peer 10.244.188.15
   358|  peer 10.244.189.15
   359|  traffic-statistics enable
   360| mtu 9000
   361| encapsulation ethernet
   362|#
   363|vsi VSI_3143_CY_POP00_PROV_AS52917 static
   364| pwsignal ldp
   365|  vsi-id 3143
   366|  peer 10.244.188.43
   367| mtu 9000
   368| encapsulation ethernet
   369|#
   370|vsi VSI_50_POP0-2_POP05_M_RIN_MGNT static
   371| pwsignal ldp
   372|  vsi-id 50
   373|  peer 10.244.188.5
   374|  traffic-statistics enable
   375| mtu 9000
   376| encapsulation ethernet
   377|#
   378|vsi VSI_51_POP0-2_POP05_M_RIN_OLT1 static
   379| pwsignal ldp
   380|  vsi-id 51
   381|  peer 10.244.188.5
   382|  traffic-statistics enable
   383| mtu 9000
   384| encapsulation ethernet
   385|#
   386|vsi VSI_3150_POP00_PROV_VPM_MAIOLI static
   387| pwsignal ldp
   388|  vsi-id 3150
   389|  peer 10.244.188.50
   390|  traffic-statistics enable
   391| mtu 9000
   392| encapsulation ethernet
   393|#
   394|vsi VSI_3162_POP00_PROV_EQUATORIAL static
   395| pwsignal ldp
   396|  vsi-id 3162
   397|  peer 10.244.188.62
   398|  traffic-statistics enable
   399| mtu 9000
   400| encapsulation ethernet
   401|#
   402|vsi VSI_16_SERVIDORES_IP_PUBLICOS static
   403| pwsignal ldp
   404|  vsi-id 16
   405|  peer 10.244.188.20
   406| mtu 9000
   407| encapsulation ethernet
   408|#
   409|vsi VSI_3581_RN_CYBER_NA_INFRAWEB static
   410| pwsignal ldp
   411|  vsi-id 3581
   412|  peer 10.244.188.59
   413| mtu 9000
   414| encapsulation ethernet
   415|#
   416|vsi VSI_3261_POP00-02_PROV_VALESAT static
   417| pwsignal ldp
   418|  vsi-id 3261
   419|  peer 10.244.188.17
   420|  traffic-statistics enable
   421| mtu 9000
   422| encapsulation ethernet
   423|#
   424|vsi VSI_4000_BGP1_CYBER_BGP2_SCHOSS static
   425| pwsignal ldp
   426|  vsi-id 4000
   427|  peer 10.244.188.2
   428|  traffic-statistics enable
   429| mtu 9000
   430| encapsulation ethernet
   431|#
   432|vsi VSI_3252_POP00-02_PROV_BLUSTELE static
   433| pwsignal ldp
   434|  vsi-id 3252
   435|  peer 10.244.188.2
   436|  traffic-statistics enable
   437| mtu 9000
   438| encapsulation ethernet
   439|#
   440|vsi VSI_3266_POP00-02_PROV_WIANETSU static
   441| pwsignal ldp
   442|  vsi-id 3266
   443|  peer 10.244.188.2
   444|  traffic-statistics enable
   445| mtu 9000
   446| encapsulation ethernet
   447|#
   448|vsi VSI_3203_POP04_POP00_IXRS_BLUS static
   449| pwsignal ldp
   450|  vsi-id 3203
   451|  peer 10.244.188.4
   452|  traffic-statistics enable
   453| mtu 8000
   454| encapsulation ethernet
   455|#
   456|vsi VSI_3207_POP00_POP04_IXRS_CYBER static
   457| pwsignal ldp
   458|  vsi-id 3207
   459|  peer 10.244.188.4
   460|  traffic-statistics enable
   461| mtu 8000
   462| encapsulation ethernet
   463|#
   464|vsi VSI_80_CY_POP0-2_POP08_FRE_MGNT static
   465| pwsignal ldp
   466|  vsi-id 80
   467|  peer 10.244.188.8
   468|  traffic-statistics enable
   469| mtu 9000
   470| encapsulation ethernet
   471|#
   472|vsi VSI_1003_BGP1_CYBER_CE03_CYBER static
   473| pwsignal ldp
   474|  vsi-id 1003
   475|  peer 10.244.188.20
   476|  traffic-statistics enable
   477| mtu 9000
   478| encapsulation ethernet
   479|#
   480|vsi VSI190_CY_POP0-2_POP19_HIP_MGNT static
   481| pwsignal ldp
   482|  vsi-id 190
   483|  peer 10.244.188.19
   484|  traffic-statistics enable
   485| mtu 9000
   486| encapsulation ethernet
   487|#
   488|vsi VSI_3790_BGP1_CYBER_IX_SP_IPV4 static
   489| pwsignal ldp
   490|  vsi-id 3790
   491|  peer 10.244.188.1
   492|  traffic-statistics enable
   493| mtu 8000
   494| encapsulation ethernet
   495|#
   496|vsi VSI_3791_BGP1_CYBER_IX_SP_IPV6 static
   497| pwsignal ldp
   498|  vsi-id 3791
   499|  peer 10.244.188.1
   500|  traffic-statistics enable
   501| mtu 8000
   502| encapsulation ethernet
   503|#
   504|vsi VSI_131_POP0-2_POP13_C_HAV_OLT1 static
   505| pwsignal ldp
   506|  vsi-id 131
   507|  peer 10.244.188.13
   508|  traffic-statistics enable
   509| mtu 9000
   510| encapsulation ethernet
   511|#
   512|vsi VSI_3005_TRANSP_TELIU_STA_CASA static
   513| pwsignal ldp
   514|  vsi-id 3005
   515|  peer 10.244.188.2
   516|  traffic-statistics enable
   517| mtu 9000
   518| encapsulation ethernet
   519|#
   520|vsi VSI3904_PNI_META_POP00_CYBER static
   521| pwsignal ldp
   522|  vsi-id 3904
   523|  peer 10.244.188.1
   524| mtu 8000
   525| encapsulation ethernet
   526|#
   527|vsi VSI_3000_CYB_POP00-20_BGP1_BGP1 static
   528| pwsignal ldp
   529|  vsi-id 3000
   530|  peer 10.244.188.20
   531| mtu 9000
   532| encapsulation ethernet
   533|#
   534|vsi VSI_959_POP00_POP08_TRANSP_VERO static
   535| pwsignal ldp
   536|  vsi-id 959
   537|  peer 10.244.188.8
   538|  traffic-statistics enable
   539| mtu 9000
   540| encapsulation ethernet
   541|#
   542|vsi VSI_3532_POP00_TRAN_CAM_CAMAQUA static
   543| pwsignal ldp
   544|  vsi-id 3532
   545|  peer 10.244.188.21
   546| mtu 9000
   547| encapsulation ethernet
   548|#
   549|vsi VSI_3533_POP00_TRAN_CAM_CAMAQUA static
   550| pwsignal ldp
   551|  vsi-id 3533
   552|  peer 10.244.188.21
   553| mtu 9000
   554| encapsulation ethernet
   555|#
   556|vsi VSI_39_POP0-02_POP03_M_FLO_RADI static
   557| pwsignal ldp
   558|  vsi-id 39
   559|  peer 10.244.189.3
   560| mtu 9000
   561| encapsulation ethernet
   562|#
   563|vsi VSI193_CY_POP0-2_POP19_HIP_OLT1 static
   564| pwsignal ldp
   565|  vsi-id 193
   566|  peer 10.244.188.19
   567|  traffic-statistics enable
   568| mtu 9000
   569| encapsulation ethernet
   570|#
   571|vsi VSI_3167_POP00_PROV_LUCFIBRA_L1 static
   572| pwsignal ldp
   573|  vsi-id 3167
   574|  peer 10.244.188.67
   575| mtu 9000
   576| encapsulation ethernet
   577|#
   578|vsi VSI_271_SC_POP0-2_POP27_CI_OLT1 static
   579| pwsignal ldp
   580|  vsi-id 271
   581|  peer 10.244.188.27
   582| mtu 9000
   583| encapsulation ethernet
   584|#
   585|vsi VSI_273_CY_POP0-2_POP27_CI_OLT1 static
   586| pwsignal ldp
   587|  vsi-id 273
   588|  peer 10.244.188.27
   589| mtu 9000
   590| encapsulation ethernet
   591|#
   592|vsi VSI_11_CY_POP00_POP02_SAP_OLT1 static
   593| pwsignal ldp
   594|  vsi-id 11
   595|  peer 10.244.188.2
   596|  traffic-statistics enable
   597| mtu 9000
   598| encapsulation ethernet
   599|#
   600|vsi VSI_3902_EQUIN_POP00_CYBER_BGP1 static
   601| pwsignal ldp
   602|  vsi-id 3902
   603|  peer 10.244.188.1
   604|  traffic-statistics enable
   605| mtu 8000
   606| encapsulation ethernet
   607|#
   608|vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1 static
   609| pwsignal ldp
   610|  vsi-id 12
   611|  peer 10.244.188.2
   612|  traffic-statistics enable
   613| mtu 9000
   614| encapsulation ethernet
   615|#
   616|vsi VSI_3107_POP00_POP02_TR_POA_SEG static
   617| pwsignal ldp
   618|  vsi-id 3107
   619|  peer 10.244.188.2
   620|  peer 10.244.188.125
   621|  peer 10.244.188.19
   622|  peer 10.244.188.17
   623|  peer 10.244.189.65
   624|  peer 10.244.188.20
   625|  peer 10.244.188.21
   626|  peer 10.244.189.11
   627|  peer 10.244.188.13
   628|  traffic-statistics enable
   629| mtu 9000
   630| encapsulation ethernet
   631|#
   632|vsi VSI3114_POP00_POP14_LOMBA_BGP1 static
   633| pwsignal ldp
   634|  vsi-id 3114
   635|  peer 10.244.189.14
   636|  traffic-statistics enable
   637| mtu 9000
   638| encapsulation ethernet
   639|#
   640|vsi VSI_3101_POP00_TRANS_CAM_SAPUCA static
   641| pwsignal ldp
   642|  vsi-id 3101
   643|  peer 10.244.188.8
   644|  peer 10.244.188.125
   645|  peer 10.244.188.15
   646|  peer 10.244.188.5
   647|  peer 10.244.188.22
   648|  traffic-statistics enable
   649| mtu 9000
   650| encapsulation ethernet
   651|#
   652|vsi VSI_3105_POP00_POP02_TR_CAM_SSP static
   653| pwsignal ldp
   654|  vsi-id 3105
   655|  peer 10.244.188.2
   656|  peer 10.244.188.19
   657|  peer 10.244.188.4
   658|  peer 10.244.188.17
   659|  peer 10.244.188.125
   660|  peer 10.244.189.65
   661|  peer 10.244.188.20
   662|  peer 10.244.188.21
   663|  peer 10.244.189.11
   664|  traffic-statistics enable
   665| mtu 9000
   666| encapsulation ethernet
   667|#
   668|vsi VSI_3106_POP00_POP02_TR_CAM_SSP static
   669| pwsignal ldp
   670|  vsi-id 3106
   671|  peer 10.244.188.2
   672|  peer 10.244.188.20
   673|  peer 10.244.189.11
   674|  traffic-statistics enable
   675| mtu 9000
   676| encapsulation ethernet
   677|#
   678|vsi VSI_3102_POP00_TRANS_CAM_SAPUCA static
   679| pwsignal ldp
   680|  vsi-id 3102
   681|  peer 10.244.188.125
   682|  peer 10.244.188.21
   683|  peer 10.244.188.22
   684|  traffic-statistics enable
   685| mtu 9000
   686| encapsulation ethernet
   687|#
   688|vsi VSI3511_POP12_TR_FENIX_CYBER_RN static
   689| pwsignal ldp
   690|  vsi-id 3511
   691|  peer 10.244.189.12
   692|  traffic-statistics enable
   693| mtu 9000
   694| encapsulation ethernet
   695|#
   696|vsi VSI_3341_POP62_TR_EQUAT_SUBSTA static
   697| pwsignal ldp
   698|  vsi-id 3341
   699|  peer 10.244.188.17
   700|  peer 10.244.188.62
   701|  peer 10.244.188.67
   702|  peer 10.244.188.19
   703|  peer 10.244.188.2
   704|  peer 10.244.189.11
   705|  peer 10.244.188.21
   706|  peer 10.244.188.44
   707|  traffic-statistics enable
   708| mtu 9000
   709| encapsulation ethernet
   710|#
   711|vsi VSI_3256_TRANSP_TELIU_DEDICADOS static
   712| pwsignal ldp
   713|  vsi-id 3256
   714|  peer 10.244.188.2
   715|  traffic-statistics enable
   716| mtu 9000
   717| encapsulation ethernet
   718|#
   719|vsi VSI_3163_POP00-02_POP63_VILLELA static
   720| pwsignal ldp
   721|  vsi-id 3163
   722|  peer 10.244.188.19
   723|  traffic-statistics enable
   724| mtu 9000
   725| encapsulation ethernet
   726|#
   727|vsi VSI_3149_CY_POP00_PROV_AS270998 static
   728| pwsignal ldp
   729|  vsi-id 3149
   730|  peer 10.244.188.49
   731|  traffic-statistics enable
   732| mtu 9000
   733| encapsulation ethernet
   734|#
   735|vsi VSI_17_CY_POP00-02_SRV_IPS_PRIV static
   736| pwsignal ldp
   737|  vsi-id 17
   738|  peer 10.244.188.2
   739|  traffic-statistics enable
   740| mtu 9000
   741| encapsulation ethernet
   742|#
   743|vsi VSI_3108_POP00_POP02_TR_POA_SEG static
   744| pwsignal ldp
   745|  vsi-id 3108
   746|  peer 10.244.188.2
   747|  peer 10.244.188.18
   748|  traffic-statistics enable
   749| mtu 9000
   750| encapsulation ethernet
   751|#
   752|vsi VSI_181_POP0-2_POP18_CEIC_OLT1 static
   753| pwsignal ldp
   754|  vsi-id 181
   755|  peer 10.244.188.18
   756|  traffic-statistics enable
   757| mtu 9000
   758| encapsulation ethernet
   759|#
   760|vsi VSI_40_SC_POP0-2_POP19_HIP_MGNT static
   761| pwsignal ldp
   762|  vsi-id 40
   763|  peer 10.244.188.19
   764|  traffic-statistics enable
   765| mtu 9000
   766| encapsulation ethernet
   767|#
   768|vsi VSI191_CY_POP0-2_POP19_HIP_OLT1 static
   769| pwsignal ldp
   770|  vsi-id 191
   771|  peer 10.244.188.19
   772|  traffic-statistics enable
   773| mtu 9000
   774| encapsulation ethernet
   775|#
   776|vsi VSI_140_POP0-2_POP14_LGRAN_OLT1 static
   777| description VLAN_140_POP14_OLT1
   778| pwsignal ldp
   779|  vsi-id 140
   780|  peer 10.244.189.14
   781|  traffic-statistics enable
   782| mtu 9000
   783| encapsulation ethernet
   784|#
   785|vsi VSI194_POP0-2_POP19_HIPIC_RSSUL static
   786| pwsignal ldp
   787|  vsi-id 194
   788|  peer 10.244.188.19
   789|  traffic-statistics enable
   790| mtu 9000
   791| encapsulation ethernet
   792|#
   793|vsi VSI171_CY_POP0-2_POP17_ELE_OLT1 static
   794| pwsignal ldp
   795|  vsi-id 171
   796|  peer 10.244.188.17
   797|  traffic-statistics enable
   798| mtu 9000
   799| encapsulation ethernet
   800|#
   801|vsi VSI173_CY_POP0-2_POP17_ELE_OLT1 static
   802| pwsignal ldp
   803|  vsi-id 173
   804|  peer 10.244.188.17
   805|  traffic-statistics enable
   806| mtu 9000
   807| encapsulation ethernet
   808|#
   809|vsi VSI_13_CY_POP00_POP02_SAP_OLT1 static
   810| pwsignal ldp
   811|  vsi-id 13
   812|  peer 10.244.188.2
   813|  peer 10.244.188.49
   814|  traffic-statistics enable
   815| mtu 9000
   816| encapsulation ethernet
   817|#
   818|vsi VSI_281_SC_POP0-2_POP28_VR_OLT1 static
   819| pwsignal ldp
   820|  vsi-id 281
   821|  peer 10.244.189.28
   822| mtu 9000
   823| encapsulation ethernet
   824|#
   825|vsi VSI_141_POP0-2_POP14_LGRAN_OLT1 static
   826| pwsignal ldp
   827|  vsi-id 141
   828|  peer 10.244.189.14
   829|  traffic-statistics enable
   830| mtu 9000
   831| encapsulation ethernet
   832|#
   833|vsi VSI_18_CY_POP00_POP02_SAP_RADI static
   834| pwsignal ldp
   835|  vsi-id 18
   836|  peer 10.244.188.2
   837|  traffic-statistics enable
   838| mtu 9000
   839| encapsulation ethernet
   840|#
   841|vsi VSI3119_POP00_TRAN_PROV_NEGETTI static
   842| pwsignal ldp
   843|  vsi-id 3119
   844|  peer 10.244.188.27
   845|  traffic-statistics enable
   846| mtu 9000
   847| encapsulation ethernet
   848|#
   849|vsi VSI_3208_PNI_GGC_ASN273461 static
   850| pwsignal ldp
   851|  vsi-id 3208
   852|  peer 10.244.188.1
   853|  traffic-statistics enable
   854| mtu 8000
   855| encapsulation ethernet
   856|#
   857|vsi VSI_4012_POP0_POP02_CGNAT1_BGP2 static
   858| pwsignal ldp
   859|  vsi-id 4012
   860|  peer 10.244.188.2
   861|  traffic-statistics enable
   862| mtu 9000
   863| encapsulation ethernet
   864|#
   865|vsi VSI_3540_POP00-02_TRAN_MEDIANET static
   866| pwsignal ldp
   867|  vsi-id 3540
   868|  peer 10.244.188.5
   869|  traffic-statistics enable
   870| mtu 9000
   871| encapsulation ethernet
   872|#
   873|vsi VSI_73_CY_POP0-2_POP07_STE_OLT1 static
   874| pwsignal ldp
   875|  vsi-id 73
   876|  peer 10.244.188.7
   877|  traffic-statistics enable
   878| mtu 9000
   879| encapsulation ethernet
   880|#
   881|vsi VSI_3541_POP00-02_TRAN_MEDIANET static
   882| pwsignal ldp
   883|  vsi-id 3541
   884|  peer 10.244.188.5
   885|  traffic-statistics enable
   886| mtu 9000
   887| encapsulation ethernet
   888|#
   889|vsi VSI_1914_SEABORN_L1_ASN273461 static
   890| pwsignal ldp
   891|  vsi-id 1914
   892|  peer 10.244.188.17
   893|  traffic-statistics enable
   894| mtu 9000
   895| encapsulation ethernet
   896|#
   897|vsi VSI_83_CY_POP0-2_POP08_FRE_OLT1 static
   898| pwsignal ldp
   899|  vsi-id 83
   900|  peer 10.244.188.8
   901|  traffic-statistics enable
   902| mtu 9000
   903| encapsulation ethernet
   904|#
   905|vsi VSI_201_SC_POP0-2_POP20_SJ_OLT1 static
   906| pwsignal ldp
   907|  vsi-id 201
   908|  peer 10.244.188.20
   909|  traffic-statistics enable
   910| mtu 9000
   911| encapsulation ethernet
   912|#
   913|vsi VSI_203_SC_POP0-2_POP20_SJ_OLT1 static
   914| pwsignal ldp
   915|  vsi-id 203
   916|  peer 10.244.188.20
   917|  traffic-statistics enable
   918| mtu 9000
   919| encapsulation ethernet
   920|#
   921|vsi VSI_200_SC_POP0-2_POP20_SJ_MGNT static
   922| pwsignal ldp
   923|  vsi-id 200
   924|  peer 10.244.188.20
   925|  traffic-statistics enable
   926| mtu 9000
   927| encapsulation ethernet
   928|#
   929|vsi VSI_1395_POP00_POP95_DGT_SSP static
   930| pwsignal ldp
   931|  vsi-id 1395
   932|  peer 10.244.188.95
   933|  traffic-statistics enable
   934| mtu 1600
   935| encapsulation ethernet
   936|#
   937|vsi VSI_3147_BGP1CYBE_PROV_IDENTITY static
   938| pwsignal ldp
   939|  vsi-id 3147
   940|  peer 10.244.188.47
   941| mtu 9000
   942| encapsulation ethernet
   943|#
   944|vsi VSI_250_CY_POP0-2_POP25_PO_MGNT static
   945| pwsignal ldp
   946|  vsi-id 250
   947|  peer 10.244.188.125
   948| mtu 9000
   949| encapsulation ethernet
   950|#
   951|vsi VSI_3111_POP00_TR_CAM_DGT_TRAMA static
   952| pwsignal ldp
   953|  vsi-id 3111
   954|  peer 10.244.188.60
   955|  traffic-statistics enable
   956| mtu 9000
   957| encapsulation ethernet
   958|#
   959|vsi VSI_133_POP0-2_POP13_C_HAV_OLT1 static
   960| pwsignal ldp
   961|  vsi-id 133
   962|  peer 10.244.188.13
   963|  traffic-statistics enable
   964| mtu 9000
   965| encapsulation ethernet
   966|#
   967|vsi VSI_283_CY_POP0-2_POP28_VR_OLT1 static
   968| pwsignal ldp
   969|  vsi-id 283
   970|  peer 10.244.189.28
   971| mtu 9000
   972| encapsulation ethernet
   973|#
   974|vsi VSI_213_POP0-2_POP21_PREF_SAPUC static
   975| pwsignal ldp
   976|  vsi-id 213
   977|  peer 10.244.188.21
   978|  traffic-statistics enable
   979| mtu 9000
   980| encapsulation ethernet
   981|#
   982|vsi VSI3121_POP0-2_POP21_PREF_SAPUC static
   983| pwsignal ldp
   984|  vsi-id 3121
   985|  peer 10.244.188.21
   986|  traffic-statistics enable
   987| mtu 9000
   988| encapsulation ethernet
   989|#
   990|vsi VSI_965_POP21_POP00_TR_PREF_SAP static
   991| pwsignal ldp
   992|  vsi-id 965
   993|  peer 10.244.188.21
   994| mtu 9000
   995| encapsulation ethernet
   996|#
   997|vsi VSI_970_POP21_POP00_TR_PREF_SAP static
   998| pwsignal ldp
   999|  vsi-id 970
  1000|  peer 10.244.188.21
  1001| mtu 9000
  1002| encapsulation ethernet
  1003|#
  1004|vsi VSI_905_POP21_POP00_TR_PREF_SAP static
  1005| pwsignal ldp
  1006|  vsi-id 905
  1007|  peer 10.244.188.21
  1008| mtu 9000
  1009| encapsulation ethernet
  1010|#
  1011|vsi VSI_906_POP21_POP00_TR_PREF_SAP static
  1012| pwsignal ldp
  1013|  vsi-id 906
  1014|  peer 10.244.188.21
  1015| mtu 9000
  1016| encapsulation ethernet
  1017|#
  1018|vsi VSI_907_POP21_POP00_TR_PREF_SAP static
  1019| pwsignal ldp
  1020|  vsi-id 907
  1021|  peer 10.244.188.21
  1022|  traffic-statistics enable
  1023| mtu 9000
  1024| encapsulation ethernet
  1025|#
  1026|vsi VSI_912_POP21_POP00_TR_PREF_SAP static
  1027| pwsignal ldp
  1028|  vsi-id 912
  1029|  peer 10.244.188.21
  1030|  traffic-statistics enable
  1031| mtu 9000
  1032| encapsulation ethernet
  1033|#
  1034|vsi VSI_913_POP21_POP00_TR_PREF_SAP static
  1035| pwsignal ldp
  1036|  vsi-id 913
  1037|  peer 10.244.188.21
  1038|  traffic-statistics enable
  1039| mtu 9000
  1040| encapsulation ethernet
  1041|#
  1042|vsi VSI_914_POP21_POP00_TR_PREF_SAP static
  1043| pwsignal ldp
  1044|  vsi-id 914
  1045|  peer 10.244.188.21
  1046|  traffic-statistics enable
  1047| mtu 9000
  1048| encapsulation ethernet
  1049|#
  1050|vsi VSI_915_POP21_POP00_TR_PREF_SAP static
  1051| pwsignal ldp
  1052|  vsi-id 915
  1053|  peer 10.244.188.21
  1054|  traffic-statistics enable
  1055| mtu 9000
  1056| encapsulation ethernet
  1057|#
  1058|vsi VSI_916_POP21_POP00_TR_PREF_SAP static
  1059| pwsignal ldp
  1060|  vsi-id 916
  1061|  peer 10.244.188.21
  1062|  traffic-statistics enable
  1063| mtu 9000
  1064| encapsulation ethernet
  1065|#
  1066|vsi VSI_917_POP21_POP00_TR_PREF_SAP static
  1067| pwsignal ldp
  1068|  vsi-id 917
  1069|  peer 10.244.188.21
  1070|  traffic-statistics enable
  1071| mtu 9000
  1072| encapsulation ethernet
  1073|#
  1074|vsi VSI_919_POP21_POP00_TR_PREF_SAP static
  1075| pwsignal ldp
  1076|  vsi-id 919
  1077|  peer 10.244.188.21
  1078|  traffic-statistics enable
  1079| mtu 9000
  1080| encapsulation ethernet
  1081|#
  1082|vsi VSI_920_POP21_POP00_TR_PREF_SAP static
  1083| pwsignal ldp
  1084|  vsi-id 920
  1085|  peer 10.244.188.21
  1086|  traffic-statistics enable
  1087| mtu 9000
  1088| encapsulation ethernet
  1089|#
  1090|vsi VSI_922_POP21_POP00_TR_PREF_SAP static
  1091| pwsignal ldp
  1092|  vsi-id 922
  1093|  peer 10.244.188.21
  1094|  traffic-statistics enable
  1095| mtu 9000
  1096| encapsulation ethernet
  1097|#
  1098|vsi VSI_923_POP21_POP00_TR_PREF_SAP static
  1099| pwsignal ldp
  1100|  vsi-id 923
  1101|  peer 10.244.188.21
  1102|  traffic-statistics enable
  1103| mtu 9000
  1104| encapsulation ethernet
  1105|#
  1106|vsi VSI_924_POP21_POP00_TR_PREF_SAP static
  1107| pwsignal ldp
  1108|  vsi-id 924
  1109|  peer 10.244.188.21
  1110|  traffic-statistics enable
  1111| mtu 9000
  1112| encapsulation ethernet
  1113|#
  1114|vsi VSI_926_POP21_POP00_TR_PREF_SAP static
  1115| pwsignal ldp
  1116|  vsi-id 926
  1117|  peer 10.244.188.21
  1118|  traffic-statistics enable
  1119| mtu 9000
  1120| encapsulation ethernet
  1121|#
  1122|vsi VSI_977_POP21_POP00_TR_PREF_SAP static
  1123| pwsignal ldp
  1124|  vsi-id 977
  1125|  peer 10.244.188.21
  1126| mtu 9000
  1127| encapsulation ethernet
  1128|#
  1129|vsi VSI_972_POP21_POP00_TR_PREF_SAP static
  1130| pwsignal ldp
  1131|  vsi-id 972
  1132|  peer 10.244.188.21
  1133| mtu 9000
  1134| encapsulation ethernet
  1135|#
  1136|vsi VSI_931_POP21_POP00_TR_PREF_SAP static
  1137| pwsignal ldp
  1138|  vsi-id 931
  1139|  peer 10.244.188.21
  1140|  traffic-statistics enable
  1141| mtu 9000
  1142| encapsulation ethernet
  1143|#
  1144|vsi VSI_934_POP21_POP00_TR_PREF_SAP static
  1145| pwsignal ldp
  1146|  vsi-id 934
  1147|  peer 10.244.188.21
  1148|  traffic-statistics enable
  1149| mtu 9000
  1150| encapsulation ethernet
  1151|#
  1152|vsi VSI_936_POP21_POP00_TR_PREF_SAP static
  1153| pwsignal ldp
  1154|  vsi-id 936
  1155|  peer 10.244.188.21
  1156|  traffic-statistics enable
  1157| mtu 9000
  1158| encapsulation ethernet
  1159|#
  1160|vsi VSI_938_POP21_POP00_TR_PREF_SAP static
  1161| pwsignal ldp
  1162|  vsi-id 938
  1163|  peer 10.244.188.21
  1164| mtu 9000
  1165| encapsulation ethernet
  1166|#
  1167|vsi VSI_939_POP21_POP00_TR_PREF_SAP static
  1168| pwsignal ldp
  1169|  vsi-id 939
  1170|  peer 10.244.188.21
  1171| mtu 9000
  1172| encapsulation ethernet
  1173|#
  1174|vsi VSI_940_POP21_POP00_TR_PREF_SAP static
  1175| pwsignal ldp
  1176|  vsi-id 940
  1177|  peer 10.244.188.21
  1178| mtu 9000
  1179| encapsulation ethernet
  1180|#
  1181|vsi VSI_941_POP21_POP00_TR_PREF_SAP static
  1182| pwsignal ldp
  1183|  vsi-id 941
  1184|  peer 10.244.188.21
  1185| mtu 9000
  1186| encapsulation ethernet
  1187|#
  1188|vsi VSI_942_POP21_POP00_TR_PREF_SAP static
  1189| pwsignal ldp
  1190|  vsi-id 942
  1191|  peer 10.244.188.21
  1192| mtu 9000
  1193| encapsulation ethernet
  1194|#
  1195|vsi VSI_945_POP21_POP00_TR_PREF_SAP static
  1196| pwsignal ldp
  1197|  vsi-id 945
  1198|  peer 10.244.188.21
  1199| mtu 9000
  1200| encapsulation ethernet
  1201|#
  1202|vsi VSI_946_POP21_POP00_TR_PREF_SAP static
  1203| pwsignal ldp
  1204|  vsi-id 946
  1205|  peer 10.244.188.21
  1206| mtu 9000
  1207| encapsulation ethernet
  1208|#
  1209|vsi VSI_947_POP21_POP00_TR_PREF_SAP static
  1210| pwsignal ldp
  1211|  vsi-id 947
  1212|  peer 10.244.188.21
  1213| mtu 9000
  1214| encapsulation ethernet
  1215|#
  1216|vsi VSI_948_POP21_POP00_TR_PREF_SAP static
  1217| pwsignal ldp
  1218|  vsi-id 948
  1219|  peer 10.244.188.21
  1220| mtu 9000
  1221| encapsulation ethernet
  1222|#
  1223|vsi VSI_949_POP21_POP00_TR_PREF_SAP static
  1224| pwsignal ldp
  1225|  vsi-id 949
  1226|  peer 10.244.188.21
  1227| mtu 9000
  1228| encapsulation ethernet
  1229|#
  1230|vsi VSI_952_POP21_POP00_TR_PREF_SAP static
  1231| pwsignal ldp
  1232|  vsi-id 952
  1233|  peer 10.244.188.21
  1234| mtu 9000
  1235| encapsulation ethernet
  1236|#
  1237|vsi VSI_953_POP21_POP00_TR_PREF_SAP static
  1238| pwsignal ldp
  1239|  vsi-id 953
  1240|  peer 10.244.188.21
  1241| mtu 9000
  1242| encapsulation ethernet
  1243|#
  1244|vsi VSI_956_POP21_POP00_TR_PREF_SAP static
  1245| pwsignal ldp
  1246|  vsi-id 956
  1247|  peer 10.244.188.21
  1248| mtu 9000
  1249| encapsulation ethernet
  1250|#
  1251|vsi VSI_957_POP21_POP00_TR_PREF_SAP static
  1252| pwsignal ldp
  1253|  vsi-id 957
  1254|  peer 10.244.188.21
  1255| mtu 9000
  1256| encapsulation ethernet
  1257|#
  1258|vsi VSI_958_POP21_POP00_TR_PREF_SAP static
  1259| pwsignal ldp
  1260|  vsi-id 958
  1261|  peer 10.244.188.21
  1262| mtu 9000
  1263| encapsulation ethernet
  1264|#
  1265|vsi VSI_960_POP21_POP00_TR_PREF_SAP static
  1266| pwsignal ldp
  1267|  vsi-id 960
  1268|  peer 10.244.188.21
  1269| mtu 9000
  1270| encapsulation ethernet
  1271|#
  1272|vsi VSI_963_POP21_POP00_TR_PREF_SAP static
  1273| pwsignal ldp
  1274|  vsi-id 963
  1275|  peer 10.244.188.21
  1276| mtu 9000
  1277| encapsulation ethernet
  1278|#
  1279|vsi VSI_966_POP21_POP00_TR_PREF_SAP static
  1280| pwsignal ldp
  1281|  vsi-id 966
  1282|  peer 10.244.188.21
  1283| mtu 9000
  1284| encapsulation ethernet
  1285|#
  1286|vsi VSI_968_POP21_POP00_TR_PREF_SAP static
  1287| pwsignal ldp
  1288|  vsi-id 968
  1289|  peer 10.244.188.21
  1290| mtu 9000
  1291| encapsulation ethernet
  1292|#
  1293|vsi VSI_973_POP21_POP00_TR_PREF_SAP static
  1294| pwsignal ldp
  1295|  vsi-id 973
  1296|  peer 10.244.188.21
  1297| mtu 9000
  1298| encapsulation ethernet
  1299|#
  1300|vsi VSI_982_POP21_POP00_TR_PREF_SAP static
  1301| pwsignal ldp
  1302|  vsi-id 982
  1303|  peer 10.244.188.21
  1304| mtu 9000
  1305| encapsulation ethernet
  1306|#
  1307|vsi VSI_990_POP21_POP00_TR_PREF_SAP static
  1308| pwsignal ldp
  1309|  vsi-id 990
  1310|  peer 10.244.188.21
  1311| mtu 9000
  1312| encapsulation ethernet
  1313|#
  1314|vsi VSI_3580_POP59_TR_INFRAWEB_PPOE static
  1315| pwsignal ldp
  1316|  vsi-id 3580
  1317|  peer 10.244.188.59
  1318|  traffic-statistics enable
  1319| mtu 9000
  1320| encapsulation ethernet
  1321|#
  1322|vsi VSI_3151_POP00_PROV_ARROBANET static
  1323| pwsignal ldp
  1324|  vsi-id 3151
  1325|  peer 10.244.188.51
  1326| mtu 9000
  1327| encapsulation ethernet
  1328|#
  1329|vsi VSI_53_POP0-2_POP05_M_RIN_OLT1 static
  1330| pwsignal ldp
  1331|  vsi-id 53
  1332|  peer 10.244.188.5
  1333| mtu 9000
  1334| encapsulation ethernet
  1335|#
  1336|vsi VSI_985_POP21_POP00_TR_PREF_SAP static
  1337| pwsignal ldp
  1338|  vsi-id 985
  1339|  peer 10.244.188.21
  1340| mtu 9000
  1341| encapsulation ethernet
  1342|#
  1343|vsi VSI_3964_POP02-11_TR_ALT_CAIX01 static
  1344| pwsignal ldp
  1345|  vsi-id 3964
  1346|  peer 10.244.188.2
  1347| mtu 9000
  1348| encapsulation ethernet
  1349|#
  1350|vsi VSI_986_POP21_POP00_TR_PREF_SAP static
  1351| pwsignal ldp
  1352|  vsi-id 986
  1353|  peer 10.244.188.21
  1354| mtu 9000
  1355| encapsulation ethernet
  1356|#
  1357|vsi VSI_3905_POP17-00_TR_CIRION_L1 static
  1358| pwsignal ldp
  1359|  vsi-id 3905
  1360|  peer 10.244.188.17
  1361|  traffic-statistics enable
  1362| mtu 9000
  1363| encapsulation ethernet
  1364|#
  1365|vsi VSI_3602_POP0-2_TR_ADYL_ADVANTA static
  1366| pwsignal ldp
  1367|  vsi-id 3602
  1368|  peer 10.244.188.5
  1369| mtu 9000
  1370| encapsulation ethernet
  1371|#
  1372|vsi VSI_230_POP0-2_POP23_EST_MGNT static
  1373| pwsignal ldp
  1374|  vsi-id 230
  1375|  peer 10.244.189.15
  1376|  traffic-statistics enable
  1377| mtu 9000
  1378| encapsulation ethernet
  1379|#
  1380|vsi VSI_251_CY_POP0-2_POP25_CO_OLT1 static
  1381| pwsignal ldp
  1382|  vsi-id 251
  1383|  peer 10.244.188.125
  1384| mtu 9000
  1385| encapsulation ethernet
  1386|#
  1387|vsi VSI_231_POP0-2_POP23_EST_OLT1 static
  1388| pwsignal ldp
  1389|  vsi-id 231
  1390|  peer 10.244.189.15
  1391|  traffic-statistics enable
  1392| mtu 9000
  1393| encapsulation ethernet
  1394|#
  1395|vsi VSI_233_POP0-2_POP23_EST_OLT1 static
  1396| pwsignal ldp
  1397|  vsi-id 233
  1398|  peer 10.244.189.15
  1399|  traffic-statistics enable
  1400| mtu 9000
  1401| encapsulation ethernet
  1402|#
  1403|explicit-path SW1POP04-00_VIA_POP11_VLAN3203
  1404| next hop 10.244.112.2
  1405| next hop 10.244.110.2
  1406| next hop 10.244.127.2
  1407| next hop 10.244.127.5
  1408| next hop 10.244.111.2
  1409| next hop 10.244.111.5
  1410|#
  1411|mpls ldp
  1412|#
  1413|#
  1414|mpls ldp remote-peer 10.244.188.1
  1415| remote-ip 10.244.188.1
  1416|#
  1417|mpls ldp remote-peer 10.244.188.2
  1418| remote-ip 10.244.188.2
  1419|#
  1420|mpls ldp remote-peer 10.244.188.4
  1421| remote-ip 10.244.188.4
  1422|#
  1423|mpls ldp remote-peer 10.244.188.5
  1424| remote-ip 10.244.188.5
  1425|#
  1426|mpls ldp remote-peer 10.244.188.7
  1427| remote-ip 10.244.188.7
  1428|#
  1429|mpls ldp remote-peer 10.244.188.8
  1430| remote-ip 10.244.188.8
  1431|#
  1432|mpls ldp remote-peer 10.244.188.10
  1433| remote-ip 10.244.188.10
  1434|#
  1435|mpls ldp remote-peer 10.244.188.11
  1436| remote-ip 10.244.188.11
  1437|#
  1438|mpls ldp remote-peer 10.244.188.13
  1439| remote-ip 10.244.188.13
  1440|#
  1441|mpls ldp remote-peer 10.244.188.15
  1442| remote-ip 10.244.188.15
  1443|#
  1444|mpls ldp remote-peer 10.244.188.17
  1445| remote-ip 10.244.188.17
  1446|#
  1447|mpls ldp remote-peer 10.244.188.18
  1448| remote-ip 10.244.188.18
  1449|#
  1450|mpls ldp remote-peer 10.244.188.19
  1451| remote-ip 10.244.188.19
  1452|#
  1453|mpls ldp remote-peer 10.244.188.20
  1454| remote-ip 10.244.188.20
  1455|#
  1456|mpls ldp remote-peer 10.244.188.21
  1457| remote-ip 10.244.188.21
  1458|#
  1459|mpls ldp remote-peer 10.244.188.22
  1460| remote-ip 10.244.188.22
  1461|#
  1462|mpls ldp remote-peer 10.244.188.27
  1463| remote-ip 10.244.188.27
  1464|#
  1465|mpls ldp remote-peer 10.244.188.28
  1466| remote-ip 10.244.188.28
  1467|#
  1468|mpls ldp remote-peer 10.244.188.43
  1469| remote-ip 10.244.188.43
  1470|#
  1471|mpls ldp remote-peer 10.244.188.47
  1472| remote-ip 10.244.188.47
  1473|#
  1474|mpls ldp remote-peer 10.244.188.49
  1475| remote-ip 10.244.188.49
  1476|#
  1477|mpls ldp remote-peer 10.244.188.50
  1478| remote-ip 10.244.188.50
  1479|#
  1480|mpls ldp remote-peer 10.244.188.51
  1481| remote-ip 10.244.188.51
  1482|#
  1483|mpls ldp remote-peer 10.244.188.59
  1484| remote-ip 10.244.188.59
  1485|#
  1486|mpls ldp remote-peer 10.244.188.60
  1487| remote-ip 10.244.188.60
  1488|#
  1489|mpls ldp remote-peer 10.244.188.62
  1490| remote-ip 10.244.188.62
  1491|#
  1492|mpls ldp remote-peer 10.244.188.67
  1493| remote-ip 10.244.188.67
  1494|#
  1495|mpls ldp remote-peer 10.244.188.99
  1496| remote-ip 10.244.188.99
  1497|#
  1498|mpls ldp remote-peer 10.244.188.125
  1499| remote-ip 10.244.188.125
  1500|#
  1501|mpls ldp remote-peer 10.244.189.3
  1502| remote-ip 10.244.189.3
  1503|#
  1504|mpls ldp remote-peer 10.244.189.5
  1505| remote-ip 10.244.189.5
  1506|#
  1507|mpls ldp remote-peer 10.244.189.10
  1508| remote-ip 10.244.189.10
  1509|#
  1510|mpls ldp remote-peer 10.244.189.11
  1511| remote-ip 10.244.189.11
  1512|#
  1513|mpls ldp remote-peer 10.244.189.12
  1514| remote-ip 10.244.189.12
  1515|#
  1516|mpls ldp remote-peer 10.244.189.14
  1517| remote-ip 10.244.189.14
  1518|#
  1519|mpls ldp remote-peer 10.244.189.15
  1520| remote-ip 10.244.189.15
  1521|#
  1522|mpls ldp remote-peer 10.244.189.28
  1523| remote-ip 10.244.189.28
  1524|#
  1525|mpls ldp remote-peer 10.244.189.65
  1526| remote-ip 10.244.189.65
  1527|#
  1528|mpls ldp remote-peer 10.244.189.67
  1529| remote-ip 10.244.189.67
  1530|#
  1531|rsa peer-public-key 10.244.110.6
  1532| public-key-code begin
  1533|  30820109
  1534|    02820100
  1535|      E09A5CC1 F761B429 D35C7D9A E4600853 5C186444 3D8D977F 2152D97E 9D512D50
  1536|      1059FF35 788CCE1D 45D34E7B 23B2E884 F19E936F 878E2B46 8599B6BE 2A882B1F
  1537|      BFC5F8B0 0B4454B2 E6B1B6DE ED926E55 B1D6ACAA CA8AF6F8 0CF8AFED 903F1077
  1538|      0D8E49DA A06E1BE7 621911D6 B96FCC7C EA5DB211 AF76367E CFFD906E 8212C753
  1539|      02C12382 0FFDB971 6F6D2CBD F57FB52A 9F175874 8A992F72 F5C43101 90209A8E
  1540|      388BDD8D 6A261AC0 2827EF28 E3BE372F 574EF7B3 3E5D5F7F DAE0B930 9F2DF2AE
  1541|      6760B695 01A30E1C AB83F389 8F47C30F 4E9CB918 E0134F81 8A245401 C4C7CA80
  1542|      3464BC48 53330D46 6F5FD1AB E1B69D38 536E9127 D90FF79A 7D4892B6 9D5B2D91
  1543|    0203
  1544|      010001
  1545| public-key-code end
  1546|peer-public-key end
  1547|#
  1548|pki realm default
  1549| certificate-check none
  1550|#
  1551|free-rule-template name default_free_rule
  1552|#
  1553|portal-access-profile name portal_access_profile
  1554|#
  1555|drop-profile default
  1556|#
  1557|vlan 4
  1558| description VLAN_4_PTP_CGNAT1_BGP1_CYBER
  1559|vlan 11
  1560| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1561|vlan 12
  1562| description VLAN_12_POP0_ARQU_OLT1_SCHOSSLER
  1563|vlan 13
  1564| description VLAN_13_POP00_ARQU_OLT1_SCHOSSLER
  1565|vlan 16
  1566| description VLAN16_SERVIDORES_IP_PUBLICO
  1567|vlan 17
  1568| description VLAN_17_POP00-02_SERVIDORES_IPS_PRIVADOS
  1569|vlan 18
  1570| description VALN_18_POP0_SAP_RAD
  1571|vlan 19
  1572| description VLAN19_GERENCIA_EQUIPAMENTOS
  1573|vlan 21
  1574| description VLAN_21_POP02_POA_OLT1_SCHOSSLER
  1575|vlan 23
  1576| description VLAN_23_POP02_TELIUM_OLT1_SCHOSSLER
  1577|vlan 30
  1578| description VLAN_30_POP03_M_FOLRES_MGNT
  1579|vlan 31
  1580| description VLAN_31_POP03_M_FLORES_OLT1
  1581|vlan 39
  1582| description VLAN_39_POP03_M_FLORES_RADIOS
  1583|vlan 40
  1584| description VLAN_40_POP04_POA_HIPICA
  1585|vlan 41
  1586| description VLAN_41_POP04_PPPOE_CLIENTES
  1587|vlan 50
  1588| description VLAN_50_M_RINCAO_GERENCIA
  1589|vlan 51
  1590| description VLAN_51_POP05_M_RINCAO_OLT1_SCHOSSLER
  1591|vlan 53
  1592| description VLAN_53_POP05_M_RINCAO_OLT1_CYBER
  1593|vlan 60
  1594| description VLAN_60_POP06_B_VISTA_MGNT
  1595|vlan 61
  1596| description VLAN_61_POP06_B_VISTA_OLT1
  1597|vlan 70
  1598| description VLAN_70_POP07_S_TECLA_GERENCIA
  1599|vlan 71
  1600| description VLAN_71_POP07_S_TECLA_OLT1
  1601|vlan 73
  1602| description VLAN_73_POP07_S_TECLA_OLT1
  1603|vlan 80
  1604| description VLAN_80_POP08_FREITAS_MGNT
  1605|vlan 81
  1606| description VLAN_81_POP08_FREITAS_OLT1
  1607|vlan 83
  1608| description VLAN_83_CYBER_POP08_FREITAS_OLT1
  1609|vlan 90
  1610| description VLAN_90_POP09_ITACOLOMI_MGNT
  1611|vlan 91
  1612| description VLAN_91_POP09_ITACOLOMI_OLT1
  1613|vlan 100
  1614| description VLAN_100_POP10_PQ_EUCALIPTOS_MGNT
  1615|vlan 101
  1616| description VLAN_101_POP10_P_EUCALIPTOS_OLT1
  1617|vlan 110
  1618| description VLAN_110_POP11_COND_VIVAZ_MGNT
  1619|vlan 111
  1620| description VLAN_111_POP11_COND_VIVAZ_OLT1
  1621|vlan 113
  1622| description VLAN_113_POP11_COND_VIVAZ_OLT1
  1623|vlan 120
  1624| description vlan120_POP12_BETANIA_GERENCIA
  1625|vlan 121
  1626| description VLAN_121_POP12_BETANIA_OLT1
  1627|vlan 130
  1628| description VLAN_130_POP13_C_HAVANA_MGNT
  1629|vlan 131
  1630| description VLAN_131_POP13_C_HAVANA_OLT1
  1631|vlan 133
  1632| description VLAN_133_POP13_C_HAVANA_OLT1
  1633|vlan 140
  1634| description VLAN_140_POP14_LOMBA_GRANDE
  1635|vlan 141
  1636| description VLAN_141_POP14_LOMBA_GRANDE
  1637|vlan 150
  1638| description VLAN_150_POP15_EXPOINTER_GERENCIA
  1639|vlan 151
  1640| description VLAN_151_POP15_EXPOINTER_OLT1
  1641|vlan 160
  1642| description VLAN_160_POP16_CASTELINHO_MGNT
  1643|vlan 161
  1644| description VLAN_161_POP16_CASTELINHO_OLT1
  1645|vlan 169
  1646| description VLAN_169_POP16_CASTELINHO_RADIO
  1647|vlan 171
  1648| description VLAN_171_POP17_ELEA_PPPOE_SCHOSSLER
  1649|vlan 173
  1650| description VLAN_173_POP17_ELEA_PPPOE_CYBER
  1651|vlan 181
  1652| description VLAN_181_POP18_CEIC_PROCEMPA
  1653|vlan 190
  1654| description VLAN_190_POP19_HIPICA_GERENCIA
  1655|vlan 191
  1656| description VLAN_191_POP19_OLT1_PPPOE_CLIENTES
  1657|vlan 193
  1658| description VLAN_193_POP19_OLT1_PPPOE_CLIENTES
  1659|vlan 194
  1660| description VLAN_194_POP19_TRANSP_RSSUL
  1661|vlan 200
  1662| description VLAN_200_POP20_S_JOAO_OLT1_GERENCIA
  1663|vlan 201
  1664| description VLAN_201_POP20_S_JOAO_OLT1_SCHOSSLER
  1665|vlan 203
  1666| description VLAN_203_POP20_S_JOAO_OLT1_CYBER
  1667|vlan 211
  1668| description VLAN_211_POP21_PREF_SAPUCAIA
  1669|vlan 213
  1670| description VLAN_213_POP21_PREF_SAPUCAIA
  1671|vlan 220
  1672| description VLAN_220_POP22_PIRATINI
  1673|vlan 230
  1674| description VLAN_230_POP23_EST_GERENCIA
  1675|vlan 231
  1676| description VLAN_231_POP23_ESTEIO_OLT1
  1677|vlan 233
  1678| description VLAN_233_POP23_ESTEIO_OLT1
  1679|vlan 250
  1680| description VLAN_250_POP25_GERENCIA
  1681|vlan 251
  1682| description VLAN_250_POP25_OLT1
  1683|vlan 253
  1684| description VLAN_253_POP25_OLT1_CYBERWEB
  1685|vlan 258
  1686| description VLAN_258_POP25_OLT1_SCHOSSLER
  1687|vlan 271
  1688| description VLAN_271_POP27_CIVIL_OLT1
  1689|vlan 273
  1690| description VLAN_273_POP27_CIVIL_OLT1
  1691|vlan 281
  1692| description VLAN_281_POP28_V_RICA_OLT1
  1693|vlan 283
  1694| description VLAN_283_POP28_V_RICA_OLT1
  1695|vlan 905
  1696| description VLAN_905_TRANS_PREF_SAPUCAIA
  1697|vlan 906
  1698| description VLAN_906_TRANS_PREF_SAPUCAIA
  1699|vlan 907
  1700| description VLAN_907_TRANS_PREF_SAPUCAIA
  1701|vlan 912
  1702| description VLAN_912_TRANS_PREF_SAPUCAIA
  1703|vlan 913
  1704| description VLAN_913_TRANS_PREF_SAPUCAIA
  1705|vlan 914
  1706| description VLAN_914_TRANS_PREF_SAPUCAIA
  1707|vlan 915
  1708| description VLAN_915_TRANS_PREF_SAPUCAIA
  1709|vlan 916
  1710| description VLAN_916_TRANS_PREF_SAPUCAIA
  1711|vlan 917
  1712| description VLAN_917_TRANS_PREF_SAPUCAIA
  1713|vlan 919
  1714| description VLAN_919_TRANS_PREF_SAPUCAIA
  1715|vlan 920
  1716| description VLAN_920_TRANS_PREF_SAPUCAIA
  1717|vlan 922
  1718| description VLAN_922_TRANS_PREF_SAPUCAIA
  1719|vlan 923
  1720| description VLAN_923_TRANS_PREF_SAPUCAIA
  1721|vlan 924
  1722| description VLAN_924_TRANS_PREF_SAPUCAIA
  1723|vlan 926
  1724| description VLAN_926_TRANS_PREF_SAPUCAIA
  1725|vlan 931
  1726| description VLAN_931_TRANS_PREF_SAPUCAIA
  1727|vlan 934
  1728| description VLAN_934_TRANS_PREF_SAPUCAIA
  1729|vlan 936
  1730| description VLAN_936_TRANS_PREF_SAPUCAIA
  1731|vlan 938
  1732| description VLAN_938_TRANS_PREF_SAPUCAIA
  1733|vlan 939
  1734| description VLAN_939_TRANS_PREF_SAPUCAIA
  1735|vlan 940
  1736| description VLAN_940_TRANS_PREF_SAPUCAIA
  1737|vlan 941
  1738| description VLAN_941_TRANS_PREF_SAPUCAIA
  1739|vlan 942
  1740| description VLAN_942_TRANS_PREF_SAPUCAIA
  1741|vlan 945
  1742| description VLAN_945_TRANS_PREF_SAPUCAIA
  1743|vlan 946
  1744| description VLAN_946_TRANS_PREF_SAPUCAIA
  1745|vlan 947
  1746| description VLAN_947_TRANS_PREF_SAPUCAIA
  1747|vlan 948
  1748| description VLAN_948_TRANS_PREF_SAPUCAIA
  1749|vlan 949
  1750| description VLAN_949_TRANS_PREF_SAPUCAIA
  1751|vlan 952
  1752| description VLAN_952_TRANS_PREF_SAPUCAIA
  1753|vlan 953
  1754| description VLAN_953_TRANS_PREF_SAPUCAIA
  1755|vlan 956
  1756| description VLAN_956_TRANS_PREF_SAPUCAIA
  1757|vlan 957
  1758| description VLAN_957_TRANS_PREF_SAPUCAIA
  1759|vlan 958
  1760| description VLAN_958_TRANS_PREF_SAPUCAIA
  1761|vlan 959
  1762| description VLAN_959_TRANSP_VERO
  1763|vlan 960
  1764| description VLAN_960_TRANS_PREF_SAPUCAIA
  1765|vlan 963
  1766| description VLAN_963_TRANS_PREF_SAPUCAIA
  1767|vlan 965
  1768| description VLAN_965_TRANS_PREF_SAPUCAIA
  1769|vlan 966
  1770| description VLAN_966_TRANS_PREF_SAPUCAIA
  1771|vlan 968
  1772| description VLAN_968_TRANS_PREF_SAPUCAIA
  1773|vlan 970
  1774| description VLAN_970_TRANS_PREF_SAPUCAIA
  1775|vlan 971
  1776| description VLAN_971_TRANS_PREF_SAPUCAIA
  1777|vlan 972
  1778| description VLAN_972_TRANS_PREF_SAPUCAIA
  1779|vlan 973
  1780| description VLAN_973_TRANS_PREF_SAPUCAIA
  1781|vlan 974
  1782| description VLAN_974_TRANSP_VERO
  1783|vlan 977
  1784| description VLAN_977_TRANS_PREF_SAPUCAIA
  1785|vlan 982
  1786| description VLAN_982_TRANS_PREF_SAPUCAIA
  1787|vlan 985
  1788| description VLAN_985_TRANSP_VERO
  1789|vlan 986
  1790| description VLAN_986_TRANS_PREF_SAPUCAIA
  1791|vlan 990
  1792| description VLAN_990_TRANS_PREF_SAPUCAIA
  1793|vlan 1001
  1794| description VLAN_1001_BGP1_CYBER_CE01
  1795|vlan 1003
  1796| description VLAN1003_BGP1_CYBER_CE03_CYBER
  1797|vlan 1100
  1798| description VLAN1100_SW1POP0_SW1POP0_MPLS1
  1799|vlan 1108
  1800| description VLAN1108_SW1POP00_SW1POP08_MPLS1
  1801|vlan 1111
  1802| description VLAN_1111_CGNAT1_CE01_OSPF
  1803|vlan 1112
  1804| description VLAN1112_SW1POP00_SW1POP12_MPLS1
  1805|vlan 1121
  1806| description VLAN_1121_SW1POP00_SW1POP21_MPLS1
  1807|vlan 1125
  1808| description VLAN_1125_SW1POP00_SW1POP25_MPLS1
  1809|vlan 1138
  1810| description VLAN_1138_VERO_CDN
  1811|vlan 1144
  1812| description VLAN_1144_SW1POP00_SW1POP44_MPLS1
  1813|vlan 1152
  1814| description VLAN_1152_SW1POP00_SW1POP52_OSPF1
  1815|vlan 1164
  1816| description VLAN_1164_LINK1_IPV4_VERO
  1817|vlan 1166
  1818| description VLAN_1166_SW1POP0_SW1POP66_OSPF
  1819|vlan 1195
  1820| description VLAN1195_SW1PO11_SW1PO95_DGTSSP
  1821|vlan 1264
  1822| description VLAN_1164_LINK1_IPV6_VERO
  1823|vlan 1295
  1824| description VLAN1295_SW1PO11_SW1PO95_DGTSSP
  1825|vlan 1395
  1826| description VLAN1395_SW1PO11_SW1PO95_DGTSSP
  1827|vlan 1914
  1828| description VLAN_1914_SEABORN_L1_BGP1_ASN273461
  1829|vlan 2311
  1830| description VLAN2311_TRANSP_VERO_POP14_L_GRANDE
  1831|vlan 2340
  1832| description VLAN2340_INFRAWEB_GERENCIA
  1833|vlan 2341
  1834| description VLAN2341_INFRAWEB_PPPOE
  1835|vlan 2733
  1836| description VLAN_2733_SW1POP04_SW1POP00_MPLS1_TR_RNV
  1837|vlan 3000
  1838| description VLAN_3000_BGP1_CYBER_BGP1_SCHOSSLER
  1839|vlan 3005
  1840| description VLAN_3005_TRANSP_TELIUM_S_CASA
  1841|vlan 3101
  1842| description VLAN_3101_TRANP_CAMERAS_BRIGADA
  1843|vlan 3102
  1844| description VLAN_3102_TRANP_CAMERAS_BRIGADA
  1845|vlan 3105
  1846| description VLAN_3105_TRANSPORTE_SSP_POA
  1847|vlan 3106
  1848| description VLAN_3106_TRANSPORTE_SSP_POA
  1849|vlan 3107
  1850| description VLAN_3107_TRANSP_POA_MAIS_SEG
  1851|vlan 3108
  1852| description VLAN_3108_TRANSP_POA_MAIS_SEG
  1853|vlan 3111
  1854| description VLAN_3111_TR_CAMERAS_SSP_TRAMANDAI
  1855|vlan 3114
  1856| description VLAN_3114_CYBER_BGP1_CE14_LOMBA_L1
  1857|vlan 3119
  1858| description VLAN_3119_TRANSP_PROVEDOR_NEGETTI
  1859|vlan 3120
  1860| description VLAN_3120_BGP1_NE40_CE20_OSPF
  1861|vlan 3121
  1862| description VLAN_3121_BGP1_INTERNET_PREF_SAPUCAIA
  1863|vlan 3143
  1864| description VLAN_3143_CYBER_BGP1_PROV_VENTO_SUL
  1865|vlan 3147
  1866| description VLAN_3147_BGP1CYBER_PROV_IDENTITY_L1
  1867|vlan 3149
  1868| description VLAN_3149_CYBER_BGP1_PROV_GEHLING_E_MULLING
  1869|vlan 3150
  1870| description VLAN_3150_CYBER_BGP1_VPM_MAIOLI_L1
  1871|vlan 3151
  1872| description VLAN_3151_CYBER_BGP1__ARROBANET_BGP1
  1873|vlan 3152
  1874| description VLAN3152_BGP1_CYBER_BGP1_BLUSTELECOM
  1875|vlan 3153
  1876| description VLAN_3153_CYBER_BGP1_LM_CIVIL_L1
  1877|vlan 3154
  1878| description VLAN_3154_CYBER_BGP1_LM_V_RICA_L1
  1879|vlan 3155
  1880| description VLAN_3155_CYBER_BGP1_LM_V_MARES_L1
  1881|vlan 3160
  1882| description VLAN_3160_CYBER_BGP1_PROV_NIC_L1
  1883|vlan 3162
  1884| description VLAN_3162_BGP1_POP62_EQUATORIAL
  1885|vlan 3163
  1886| description VLAN3163_BGP1_CE63_VILLELA
  1887|vlan 3166
  1888| description VLAN_3166_CYBER_BGP1_WIANETSUL_L1
  1889|vlan 3167
  1890| description VLAN_3167_CYBER_BGP1_LUCFIBRA_L1
  1891|vlan 3203
  1892| description VLAN_3203_TRANSP_IXRS_BLUS
  1893|vlan 3207
  1894| description VLAN_3207_TR_CY_IX_RS_AS273461_CYBER
  1895|vlan 3208
  1896| description VLAN_3208_PNI_GGC_ASN273461
  1897|vlan 3252
  1898| description VLAN3252_BGP2_SCHOSSLER_BGP1_BLUSTELECOM
  1899|vlan 3256
  1900| description VLAN_3256_PPPOE_CLIENTES_TELIUM
  1901|vlan 3261
  1902| description VLAN_3261_BGP1_CYBER_BGP2_SCHOSSLER_PROV_VALESAT
  1903|vlan 3266
  1904| description VLAN_3266_CYBER_BGP2_WIANETSUL_L2
  1905|vlan 3341
  1906| description VLAN_3341_TRANSPORTE_EQUATORIAL_SUBSTACAO
  1907|vlan 3511
  1908| description VLAN_3511_TR_FENIX_CYBER_R_NEUTRA
  1909|vlan 3532
  1910| description VLAN_3532_TRANSP_CAM_CAMAQUA
  1911|vlan 3533
  1912| description VLAN_3533_TRANSP_CAM_CAMAQUA
  1913|vlan 3540
  1914| description VLAN_3540_CLIENTES_MEDIANET_REDE_CYBER
  1915|vlan 3541
  1916| description VLAN_3541_CLIENTES_MEDIANET_REDE_CYBER
  1917|vlan 3550
  1918| description VLAN_3550_TRANSP_R_NEUTRA_LM
  1919|vlan 3560
  1920| description VLAN_3560_POWERNET_R_NEUTRA
  1921|vlan 3571
  1922| description VLAN_3571_CLI_CYBER_REDE_LP_SANDRO
  1923|vlan 3580
  1924| description VLAN_3580_CLIENTES_INFRAWEB_REDE_CYBER
  1925|vlan 3581
  1926| description VLAN3581_RN_CYBER_NA_INFRAWEB
  1927|vlan 3592
  1928| description VLAN_3592_ALT_ADVANTA
  1929|vlan 3602
  1930| description VLAN_3602_TR_ADYL_POP14_ADVANTA
  1931|vlan 3790
  1932| description VLAN_3790_BGP1_CYBER_IX_SP_IPV4
  1933|vlan 3791
  1934| description VLAN_3791_BGP1_CYBER_IX_SP_IPV6
  1935|vlan 3902
  1936| description VLAN_3902_EQUINIX_CYBER_BGP1
  1937|vlan 3904
  1938| description VLAN3904_SW1POP01_SW1POP00_PNI_META
  1939|vlan 3905
  1940| description VLAN_3905_TR_POP17_POP00_CIRION_LINK1
  1941|vlan 3906
  1942| description VLAN3906_SW1POP01_SW1POP00_PNI_META
  1943|vlan 3964
  1944| description VLAN_3964_TRANSP_ALT_CAIXA_ADVANTA
  1945|vlan 4000
  1946| description VLAN_4000_PTP_BGP1_CYBER_BGP2_SCHOSSLER
  1947|vlan 4001
  1948| description VLAN_4001_BGP1CYBER_CGNAT1_SCHOSSLER
  1949|vlan 4012
  1950| description VLAN_4012_CGNAT1_BGP2
  1951|vlan 4094
  1952| description VLAN_4094_BLACKHOLE
  1953|#
  1954|aaa
  1955| authentication-scheme default
  1956|  authentication-mode local
  1957| authentication-scheme radius
  1958|  authentication-mode radius
  1959| authorization-scheme default
  1960|  authorization-mode local
  1961| accounting-scheme default
  1962|  accounting-mode none
  1963| local-aaa-user password policy administrator
  1964|  password history record number 0
  1965|  password expire 0
  1966| domain default
  1967|  authentication-scheme radius
  1968|  accounting-scheme default
  1969|  radius-server default
  1970| domain default_admin
  1971|  authentication-scheme default
  1972|  accounting-scheme default
  1973| local-user admin password irreversible-cipher $1c$q6&9:g>RA-$|\C)9;1bq4^uT098E$vO)BE[PjFpQ$DZWU=%(;o>$
  1974| local-user admin privilege level 15
  1975| local-user admin service-type ssh http
  1976| local-user future password irreversible-cipher $1c$Y5}lDwN=E:$!DRV>(;)M~pr*6ESw7~@vzIg4OQmiWIP|2TP!*u6$
  1977| local-user future privilege level 15
  1978| local-user future service-type ssh
  1979| local-user zandona password irreversible-cipher $1c$Ln|t*R>'-8$p/SsDlFwfE)KQH>Q$5VR-F7/00i=:(QGD&CU(dhR$
  1980| local-user zandona privilege level 15
  1981| local-user zandona service-type telnet ssh http
  1982|#
  1983|ntp-service server disable
  1984|ntp-service ipv6 server disable
  1985|ntp-service unicast-server 200.189.40.8
  1986|ntp-service unicast-server 200.160.0.8
  1987|#
  1988|interface Vlanif2
  1989| description VLAN_2_GERENCIA
  1990| ip address 10.244.0.98 255.255.255.252
  1991|#
  1992|interface Vlanif11
  1993| description VLAN_11_POP00_ARQU_OLT1_SCHOSSLER
  1994| l2 binding vsi VSI_11_CY_POP00_POP02_SAP_OLT1
  1995|#
  1996|interface Vlanif12
  1997| description VLAN_12_POP0_SAP_OLT1
  1998| l2 binding vsi VSI_12_CY_POP0-1_POP1_SAP_OLT1
  1999|#
  2000|interface Vlanif13
  2001|