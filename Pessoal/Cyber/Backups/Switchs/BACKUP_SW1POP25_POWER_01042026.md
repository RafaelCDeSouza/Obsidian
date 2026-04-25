[[SW1POP25]]

     1|```kotlin
     2|(admin@10.244.188.25) Password:
     3|Welcome to the DmOS CLI
     4|admin connected from 10.244.19.90 using ssh on SW1POP25_POWER
     5|SW1POP25_POWER# show running-config
     6|aaa authentication-order [ local ]
     7|aaa user admin
     8| password $1$SruTaKhs$I.GFmLUqXX01atDBHd7rT/
     9| group admin
    10|!
    11|session paginate true
    12|mpls ldp
    13| lsr-id loopback-0
    14|  interface l3-L3_VLAN1125_MPLS1
    15|  !
    16|  interface l3-L3_VLAN1225_MPLS1
    17|  !
    18|  neighbor targeted 10.244.188.0
    19|  !
    20|  neighbor targeted 10.244.188.2
    21|  !
    22|  neighbor targeted 10.244.189.0
    23|  !
    24|  neighbor targeted 10.244.188.18
    25|  !
    26|  neighbor targeted 10.244.188.5
    27|  !
    28|  neighbor targeted 10.244.188.21
    29|  !
    30|  neighbor targeted 10.244.188.8
    31|  !
    32|  neighbor targeted 10.244.188.20
    33|  !
    34|  neighbor targeted 10.244.188.27
    35|  !
    36| !
    37|!
    38|mpls l2vpn
    39| vpls-group POP02_POA_POP25_POWERNET
    40|  vpn VSI_3225_BGP2_POP25_POWERNET
    41|   vfi
    42|    pw-type ethernet
    43|    neighbor 10.244.188.2
    44|     pw-id 3225
    45|    !
    46|   !
    47|   bridge-domain
    48|    dot1q 3225
    49|    bridge-mtu 9000
    50|    access-interface gigabit-ethernet-1/1/1
    51|    !
    52|   !
    53|  !
    54|  vpn VSI_3256_POP25_POP02_TR_TELIUM
    55|   vfi
    56|    pw-type ethernet
    57|    neighbor 10.244.188.2
    58|     pw-id 3256
    59|    !
    60|   !
    61|   bridge-domain
    62|    dot1q 3256
    63|    bridge-mtu 9000
    64|    access-interface gigabit-ethernet-1/1/5
    65|    !
    66|   !
    67|  !
    68| !
    69| vpls-group POP25_POWERNET_POP00
    70|  vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
    71|   vfi
    72|    pw-type ethernet
    73|    neighbor 10.244.189.0
    74|     pw-id 250
    75|    !
    76|   !
    77|   bridge-domain
    78|    dot1q 250
    79|    bridge-mtu 9000
    80|    access-interface gigabit-ethernet-1/1/1
    81|    !
    82|    access-interface gigabit-ethernet-1/1/2
    83|    !
    84|    access-interface gigabit-ethernet-1/1/3
    85|    !
    86|    access-interface ten-gigabit-ethernet-1/1/1
    87|    !
    88|    access-interface ten-gigabit-ethernet-1/1/3
    89|    !
    90|   !
    91|  !
    92|  vpn VSI_251_CY_POP0-2_POP25_CO_OLT1
    93|   vfi
    94|    pw-type ethernet
    95|    neighbor 10.244.189.0
    96|     pw-id 251
    97|    !
    98|   !
    99|   bridge-domain
   100|    dot1q 251
   101|    bridge-mtu 9000
   102|    access-interface gigabit-ethernet-1/1/5
   103|    !
   104|    access-interface ten-gigabit-ethernet-1/1/1
   105|    !
   106|    access-interface ten-gigabit-ethernet-1/1/3
   107|    !
   108|   !
   109|  !
   110|  vpn VSI_253_CY_POP0-2_POP25_PO_OLT1
   111|   vfi
   112|    pw-type ethernet
   113|    neighbor 10.244.189.0
   114|     pw-id 253
   115|    !
   116|   !
   117|   bridge-domain
   118|    dot1q 253
   119|    bridge-mtu 9000
   120|    access-interface gigabit-ethernet-1/1/5
   121|    !
   122|    access-interface ten-gigabit-ethernet-1/1/3
   123|    !
   124|   !
   125|  !
   126|  vpn VSI_258_CY_POP0-2_POP25_PO_OLT1
   127|   vfi
   128|    pw-type ethernet
   129|    neighbor 10.244.188.2
   130|     pw-id 258
   131|    !
   132|    neighbor 10.244.189.0
   133|     pw-id 258
   134|    !
   135|   !
   136|   bridge-domain
   137|    dot1q 258
   138|    bridge-mtu 9000
   139|    access-interface gigabit-ethernet-1/1/5
   140|    !
   141|   !
   142|  !
   143|  vpn VSI_3101_POP00_TRANS_CAM_SAPUCA
   144|   vfi
   145|    pw-type ethernet
   146|    neighbor 10.244.189.0
   147|     pw-id 3101
   148|    !
   149|   !
   150|   bridge-domain
   151|    dot1q 3101
   152|    bridge-mtu 9000
   153|    access-interface gigabit-ethernet-1/1/5
   154|    !
   155|   !
   156|  !
   157|  vpn VSI_3102_POP00_TRANS_CAM_SAPUCA
   158|   vfi
   159|    pw-type ethernet
   160|    neighbor 10.244.189.0
   161|     pw-id 3102
   162|    !
   163|   !
   164|   bridge-domain
   165|    dot1q 3102
   166|    bridge-mtu 9000
   167|    access-interface gigabit-ethernet-1/1/6
   168|    !
   169|   !
   170|  !
   171|  vpn VSI_3125_SHO_POP00_POP25_POWERN
   172|   vfi
   173|    pw-type ethernet
   174|    neighbor 10.244.189.0
   175|     pw-id 3125
   176|    !
   177|   !
   178|   bridge-domain
   179|    dot1q 3125
   180|    bridge-mtu 9000
   181|    access-interface ten-gigabit-ethernet-1/1/3
   182|    !
   183|   !
   184|  !
   185| !
   186| vpls-group POP25_POWERNET_POP05_M_RINCAO
   187|  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
   188|   vfi
   189|    pw-type ethernet
   190|    neighbor 10.244.188.5
   191|     pw-id 3540
   192|    !
   193|   !
   194|   bridge-domain
   195|    dot1q 3540
   196|    bridge-mtu 9000
   197|    access-interface gigabit-ethernet-1/1/6
   198|    !
   199|   !
   200|  !
   201| !
   202| vpls-group POP25_POWERNET_REDE_NEUTRA
   203|  vpn VSI_3560_TRANS_PPPOE_POWERNET
   204|   vfi
   205|    pw-type ethernet
   206|    neighbor 10.244.188.8
   207|     pw-id 3560
   208|    !
   209|    neighbor 10.244.188.20
   210|     pw-id 3560
   211|    !
   212|    neighbor 10.244.188.27
   213|     pw-id 3560
   214|    !
   215|    neighbor 10.244.189.0
   216|     pw-id 3560
   217|    !
   218|   !
   219|   bridge-domain
   220|    dot1q 3560
   221|    bridge-mtu 9000
   222|    access-interface ten-gigabit-ethernet-1/1/1
   223|    !
   224|    access-interface ten-gigabit-ethernet-1/1/3
   225|    !
   226|   !
   227|  !
   228| !
   229| vpls-group POP25_POWER_POP21_PRE_SAPUCAIA
   230|  vpn VSI_902_POP21_POP25_TR_PREF_SAP
   231|   vfi
   232|    pw-type ethernet
   233|    neighbor 10.244.188.21
   234|     pw-id 902
   235|    !
   236|   !
   237|   bridge-domain
   238|    dot1q 902
   239|    bridge-mtu 9000
   240|    access-interface gigabit-ethernet-1/1/5
   241|    !
   242|   !
   243|  !
   244|  vpn VSI_903_POP21_POP25_TR_PREF_SAP
   245|   vfi
   246|    pw-type ethernet
   247|    neighbor 10.244.188.21
   248|     pw-id 903
   249|    !
   250|   !
   251|   bridge-domain
   252|    dot1q 903
   253|    bridge-mtu 9000
   254|    access-interface gigabit-ethernet-1/1/5
   255|    !
   256|   !
   257|  !
   258|  vpn VSI_904_POP21_POP25_TR_PREF_SAP
   259|   vfi
   260|    pw-type ethernet
   261|    neighbor 10.244.188.21
   262|     pw-id 904
   263|    !
   264|   !
   265|   bridge-domain
   266|    dot1q 904
   267|    bridge-mtu 9000
   268|    access-interface gigabit-ethernet-1/1/5
   269|    !
   270|   !
   271|  !
   272|  vpn VSI_918_POP21_POP25_TR_PREF_SAP
   273|   vfi
   274|    pw-type ethernet
   275|    neighbor 10.244.188.21
   276|     pw-id 918
   277|    !
   278|   !
   279|   bridge-domain
   280|    dot1q 918
   281|    bridge-mtu 9000
   282|    access-interface gigabit-ethernet-1/1/5
   283|    !
   284|   !
   285|  !
   286|  vpn VSI_925_POP21_POP25_TR_PREF_SAP
   287|   vfi
   288|    pw-type ethernet
   289|    neighbor 10.244.188.21
   290|     pw-id 925
   291|    !
   292|   !
   293|   bridge-domain
   294|    dot1q 925
   295|    bridge-mtu 9000
   296|    access-interface gigabit-ethernet-1/1/5
   297|    !
   298|   !
   299|  !
   300|  vpn VSI_929_POP21_POP25_TR_PREF_SAP
   301|   vfi
   302|    pw-type ethernet
   303|    neighbor 10.244.188.21
   304|     pw-id 929
   305|    !
   306|   !
   307|   bridge-domain
   308|    dot1q 929
   309|    bridge-mtu 9000
   310|    access-interface gigabit-ethernet-1/1/5
   311|    !
   312|   !
   313|  !
   314|  vpn VSI_930_POP21_POP25_TR_PREF_SAP
   315|   vfi
   316|    pw-type ethernet
   317|    neighbor 10.244.188.21
   318|     pw-id 930
   319|    !
   320|   !
   321|   bridge-domain
   322|    dot1q 930
   323|    bridge-mtu 9000
   324|    access-interface gigabit-ethernet-1/1/5
   325|    !
   326|   !
   327|  !
   328|  vpn VSI_931_POP21_POP25_TR_PREF_SAP
   329|   vfi
   330|    pw-type ethernet
   331|    neighbor 10.244.188.21
   332|     pw-id 931
   333|    !
   334|   !
   335|   bridge-domain
   336|    dot1q 931
   337|    bridge-mtu 9000
   338|    access-interface gigabit-ethernet-1/1/5
   339|    !
   340|   !
   341|  !
   342|  vpn VSI_935_POP21_POP25_TR_PREF_SAP
   343|   vfi
   344|    pw-type ethernet
   345|    neighbor 10.244.188.21
   346|     pw-id 935
   347|    !
   348|   !
   349|   bridge-domain
   350|    dot1q 935
   351|    bridge-mtu 9000
   352|    access-interface gigabit-ethernet-1/1/5
   353|    !
   354|   !
   355|  !
   356|  vpn VSI_944_POP21_POP25_TR_PREF_SAP
   357|   vfi
   358|    pw-type ethernet
   359|    neighbor 10.244.188.21
   360|     pw-id 944
   361|    !
   362|   !
   363|   bridge-domain
   364|    dot1q 944
   365|    bridge-mtu 9000
   366|    access-interface gigabit-ethernet-1/1/5
   367|    !
   368|   !
   369|  !
   370|  vpn VSI_951_POP21_POP25_TR_PREF_SAP
   371|   vfi
   372|    pw-type ethernet
   373|    neighbor 10.244.188.21
   374|     pw-id 951
   375|    !
   376|   !
   377|   bridge-domain
   378|    dot1q 951
   379|    bridge-mtu 9000
   380|    access-interface gigabit-ethernet-1/1/5
   381|    !
   382|   !
   383|  !
   384|  vpn VSI_955_POP21_POP25_TR_PREF_SAP
   385|   vfi
   386|    pw-type ethernet
   387|    neighbor 10.244.188.21
   388|     pw-id 955
   389|    !
   390|   !
   391|   bridge-domain
   392|    dot1q 955
   393|    bridge-mtu 9000
   394|    access-interface gigabit-ethernet-1/1/5
   395|    !
   396|   !
   397|  !
   398|  vpn VSI_961_POP21_POP25_TR_PREF_SAP
   399|   vfi
   400|    pw-type ethernet
   401|    neighbor 10.244.188.21
   402|     pw-id 961
   403|    !
   404|   !
   405|   bridge-domain
   406|    dot1q 961
   407|    bridge-mtu 9000
   408|    access-interface gigabit-ethernet-1/1/5
   409|    !
   410|   !
   411|  !
   412|  vpn VSI_964_POP21_POP25_TR_PREF_SAP
   413|   vfi
   414|    pw-type ethernet
   415|    neighbor 10.244.188.21
   416|     pw-id 964
   417|    !
   418|   !
   419|   bridge-domain
   420|    dot1q 964
   421|    bridge-mtu 9000
   422|    access-interface gigabit-ethernet-1/1/5
   423|    !
   424|   !
   425|  !
   426|  vpn VSI_967_POP21_POP25_TR_PREF_SAP
   427|   vfi
   428|    pw-type ethernet
   429|    neighbor 10.244.188.21
   430|     pw-id 967
   431|    !
   432|   !
   433|   bridge-domain
   434|    dot1q 967
   435|    bridge-mtu 9000
   436|    access-interface gigabit-ethernet-1/1/5
   437|    !
   438|   !
   439|  !
   440|  vpn VSI_971_POP21_POP25_TR_PREF_SAP
   441|   vfi
   442|    pw-type ethernet
   443|    neighbor 10.244.188.21
   444|     pw-id 971
   445|    !
   446|   !
   447|   bridge-domain
   448|    dot1q 971
   449|    bridge-mtu 9000
   450|    access-interface gigabit-ethernet-1/1/5
   451|    !
   452|   !
   453|  !
   454|  vpn VSI_976_POP21_POP25_TR_PREF_SAP
   455|   vfi
   456|    pw-type ethernet
   457|    neighbor 10.244.188.21
   458|     pw-id 976
   459|    !
   460|   !
   461|   bridge-domain
   462|    dot1q 976
   463|    bridge-mtu 9000
   464|    access-interface gigabit-ethernet-1/1/5
   465|    !
   466|   !
   467|  !
   468|  vpn VSI_978_POP21_POP25_TR_PREF_SAP
   469|   vfi
   470|    pw-type ethernet
   471|    neighbor 10.244.188.21
   472|     pw-id 978
   473|    !
   474|   !
   475|   bridge-domain
   476|    dot1q 978
   477|    bridge-mtu 9000
   478|    access-interface gigabit-ethernet-1/1/5
   479|    !
   480|   !
   481|  !
   482|  vpn VSI_979_POP21_POP25_TR_PREF_SAP
   483|   vfi
   484|    pw-type ethernet
   485|    neighbor 10.244.188.21
   486|     pw-id 979
   487|    !
   488|   !
   489|   bridge-domain
   490|    dot1q 979
   491|    bridge-mtu 9000
   492|    access-interface gigabit-ethernet-1/1/5
   493|    !
   494|   !
   495|  !
   496|  vpn VSI_981_POP21_POP25_TR_PREF_SAP
   497|   vfi
   498|    pw-type ethernet
   499|    neighbor 10.244.188.21
   500|     pw-id 981
   501|    !
   502|   !
   503|   bridge-domain
   504|    dot1q 981
   505|    bridge-mtu 9000
   506|    access-interface gigabit-ethernet-1/1/5
   507|    !
   508|   !
   509|  !
   510|  vpn VSI_987_POP21_POP25_TR_PREF_SAP
   511|   vfi
   512|    pw-type ethernet
   513|    neighbor 10.244.188.21
   514|     pw-id 987
   515|    !
   516|   !
   517|   bridge-domain
   518|    dot1q 987
   519|    bridge-mtu 9000
   520|    access-interface gigabit-ethernet-1/1/5
   521|    !
   522|   !
   523|  !
   524|  vpn VSI_988_POP21_POP25_TR_PREF_SAP
   525|   vfi
   526|    pw-type ethernet
   527|    neighbor 10.244.188.21
   528|     pw-id 988
   529|    !
   530|   !
   531|   bridge-domain
   532|    dot1q 988
   533|    bridge-mtu 9000
   534|    access-interface gigabit-ethernet-1/1/5
   535|    !
   536|   !
   537|  !
   538|  vpn VSI_989_POP21_POP25_TR_PREF_SAP
   539|   vfi
   540|    pw-type ethernet
   541|    neighbor 10.244.188.21
   542|     pw-id 989
   543|    !
   544|   !
   545|   bridge-domain
   546|    dot1q 989
   547|    bridge-mtu 9000
   548|    access-interface gigabit-ethernet-1/1/5
   549|    !
   550|   !
   551|  !
   552|  vpn VSI_991_POP21_POP25_TR_PREF_SAP
   553|   vfi
   554|    pw-type ethernet
   555|    neighbor 10.244.188.21
   556|     pw-id 991
   557|    !
   558|   !
   559|   bridge-domain
   560|    dot1q 991
   561|    bridge-mtu 9000
   562|    access-interface gigabit-ethernet-1/1/5
   563|    !
   564|   !
   565|  !
   566|  vpn VSI_992_POP21_POP25_TR_PREF_SAP
   567|   vfi
   568|    pw-type ethernet
   569|    neighbor 10.244.188.21
   570|     pw-id 992
   571|    !
   572|   !
   573|   bridge-domain
   574|    dot1q 992
   575|    bridge-mtu 9000
   576|    access-interface gigabit-ethernet-1/1/5
   577|    !
   578|   !
   579|  !
   580|  vpn VSI_994_POP21_POP25_TR_PREF_SAP
   581|   vfi
   582|    pw-type ethernet
   583|    neighbor 10.244.188.21
   584|     pw-id 994
   585|    !
   586|   !
   587|   bridge-domain
   588|    dot1q 994
   589|    bridge-mtu 9000
   590|    access-interface gigabit-ethernet-1/1/5
   591|    !
   592|   !
   593|  !
   594|  vpn VSI_999_POP21_POP25_TR_PREF_SAP
   595|   vfi
   596|    pw-type ethernet
   597|    neighbor 10.244.188.21
   598|     pw-id 999
   599|    !
   600|   !
   601|   bridge-domain
   602|    dot1q 999
   603|    bridge-mtu 9000
   604|    access-interface gigabit-ethernet-1/1/5
   605|    !
   606|   !
   607|  !
   608| !
   609| vpls-group POPPOP25_POWERNET_POP00
   610| !
   611|!
   612|snmp system location -29.881604,-51.086573
   613|snmp traps config-commit
   614|snmp traps cpu-core
   615|snmp traps cpu-load
   616|snmp traps link-status
   617|snmp traps login-success
   618|snmp agent enabled
   619|snmp agent version v2c
   620|snmp agent version v3
   621|snmp community CyberWeb
   622| sec-name CyberWeb
   623|!
   624|snmp community public
   625| sec-name public
   626|!
   627|snmp notify std_v1_trap
   628| tag std_v1_trap
   629|!
   630|snmp notify std_v2_inform
   631| tag std_v2_inform
   632| type inform
   633|!
   634|snmp notify std_v2_trap
   635| tag std_v2_trap
   636|!
   637|snmp notify std_v3_inform
   638| tag std_v3_inform
   639| type inform
   640|!
   641|snmp notify std_v3_trap
   642| tag std_v3_trap
   643|!
   644|snmp vacm group CyberWeb
   645| member CyberWeb
   646|  sec-model [ v2c ]
   647| !
   648| access "" v2c no-auth-no-priv
   649|  read-view root
   650|  notify-view root
   651| !
   652|!
   653|snmp vacm group public
   654| member public
   655|  sec-model [ v2c ]
   656| !
   657| access "" v2c no-auth-no-priv
   658|  read-view root
   659|  write-view root
   660|  notify-view root
   661| !
   662|!
   663|snmp vacm view root
   664| subtree 1.3
   665|  included
   666| !
   667|!
   668|interface gigabit-ethernet 1/1/1
   669| description PTP_SW1POP25_P01_OLT1POP25_MGNT
   670| no shutdown
   671| negotiation
   672| duplex full
   673| speed 100M
   674| advertising-abilities 10Mfull 100Mfull 1Gfull
   675| mdix normal
   676| mtu 12266
   677|!
   678|interface gigabit-ethernet 1/1/2
   679| no shutdown
   680| negotiation
   681| duplex full
   682| speed 100M
   683| advertising-abilities 10Mfull 100Mfull 1Gfull
   684| mdix auto
   685| mtu 12266
   686|!
   687|interface gigabit-ethernet 1/1/3
   688| description LOOPING_DGT_PORTA4
   689| no shutdown
   690| negotiation
   691| duplex full
   692| speed 100M
   693| advertising-abilities 10Mfull 100Mfull 1Gfull
   694| mdix normal
   695| mtu 12266
   696|!
   697|interface gigabit-ethernet 1/1/4
   698| description LOOPING_DGT_PORTA3
   699| no shutdown
   700| negotiation
   701| duplex full
   702| speed 100M
   703| advertising-abilities 10Mfull 100Mfull 1Gfull
   704| mdix auto
   705| mtu 12266
   706|!
   707|interface gigabit-ethernet 1/1/5
   708| description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
   709| no shutdown
   710| negotiation
   711| duplex full
   712| speed 1G
   713| advertising-abilities 10Mfull 100Mfull 1Gfull
   714| mdix normal
   715| mtu 12266
   716|!
   717|interface gigabit-ethernet 1/1/6
   718| description PTP_SW1POP25_P06__OLT1_P05
   719| no shutdown
   720| negotiation
   721| duplex full
   722| speed 1G
   723| advertising-abilities 10Mfull 100Mfull 1Gfull
   724| mdix normal
   725| mtu 12266
   726|!
   727|interface gigabit-ethernet 1/1/7
   728| description PTP_SW1POP25_P07_CE25_SFP-SFPPLUS1
   729| shutdown
   730| no negotiation
   731| duplex full
   732| speed 1G
   733| advertising-abilities 10Mfull 100Mfull 1Gfull
   734| mdix normal
   735| mtu 12266
   736|!
   737|interface gigabit-ethernet 1/1/8
   738| no shutdown
   739| negotiation
   740| duplex full
   741| speed 1G
   742| advertising-abilities 10Mfull 100Mfull 1Gfull
   743| mdix normal
   744| mtu 12266
   745|!
   746|interface ten-gigabit-ethernet 1/1/1
   747| description PTP_SW1POP25_PX01_OLT1POP25_PX01
   748| no shutdown
   749| no negotiation
   750| duplex full
   751| speed 10G
   752| advertising-abilities 10Mfull 100Mfull 1Gfull
   753| mdix normal
   754| mtu 12266
   755|!
   756|interface ten-gigabit-ethernet 1/1/2
   757| description PTP_SW1POP25_PX02_SW1POP15_PX02
   758| no shutdown
   759| no negotiation
   760| duplex full
   761| speed 10G
   762| advertising-abilities 10Mfull 100Mfull 1Gfull
   763| mdix normal
   764| mtu 12266
   765|!
   766|interface ten-gigabit-ethernet 1/1/3
   767| description PTP_SW1POP25_PX03_CE25_POWER_PX3_OLT2
   768| no shutdown
   769| no negotiation
   770| duplex full
   771| speed 10G
   772| advertising-abilities 10Mfull 100Mfull 1Gfull
   773| mdix normal
   774| mtu 12266
   775|!
   776|interface ten-gigabit-ethernet 1/1/4
   777| description PTP_SW1POP25_PX04_SW1POP21_PX03
   778| no shutdown
   779| no negotiation
   780| duplex full
   781| speed 10G
   782| advertising-abilities 10Mfull 100Mfull 1Gfull
   783| mdix normal
   784| mtu 12266
   785|!
   786|interface l3 L3_VLAN1125_MPLS1
   787| lower-layer-if vlan 1125
   788| ipv4 address 10.244.125.2/30
   789|!
   790|interface l3 L3_VLAN1225_MPLS1
   791| lower-layer-if vlan 1225
   792| ipv4 address 10.244.125.6/30
   793|!
   794|interface mgmt 1/1/1
   795| ipv4 address 192.168.0.25/24
   796|!
   797|interface loopback 0
   798| ipv4 address 10.244.188.125/32
   799|!
   800|interface loopback 1
   801| ipv4 address 10.244.188.25/32
   802|!
   803|clock timezone BRA -3
   804|hostname SW1POP25_POWER
   805|telnet-server enabled
   806|telnet-server max-connections 2
   807|loopback-detection
   808| destination-address alternative
   809|!
   810|mac-address-table
   811| aging-time 600
   812|!
   813|layer2-control-protocol
   814| tunnel-mac datacom
   815| tunnel-priority 7
   816|!
   817|sntp client
   818|sntp server 200.160.0.8
   819|vrf global
   820|!
   821|vrf mgmt
   822|!
   823|router ospf 1 vrf global
   824| router-id 10.244.188.125
   825| redistribute static
   826| !
   827| area 0.0.0.0
   828|  interface l3-L3_VLAN1125_MPLS1
   829|   cost 10
   830|   bfd
   831|    session-type desired
   832|   !
   833|   network-type point-to-point
   834|  !
   835|  interface l3-L3_VLAN1225_MPLS1
   836|   cost 10
   837|   bfd
   838|    session-type desired
   839|   !
   840|   network-type point-to-point
   841|  !
   842|  interface loopback-0
   843|  !
   844|  interface loopback-1
   845|  !
   846| !
   847|!
   848|dot1q
   849| vlan 40-41
   850|  interface ten-gigabit-ethernet-1/1/1
   851|  !
   852|  interface ten-gigabit-ethernet-1/1/3
   853|  !
   854| !
   855| vlan 250
   856|  interface gigabit-ethernet-1/1/8
   857|  !
   858| !
   859| vlan 252
   860|  interface gigabit-ethernet-1/1/7
   861|  !
   862|  interface gigabit-ethernet-1/1/8
   863|  !
   864|  interface ten-gigabit-ethernet-1/1/1
   865|  !
   866|  interface ten-gigabit-ethernet-1/1/3
   867|  !
   868| !
   869| vlan 1125
   870|  name VLAN_1125_SW1POP21_SW1POP25_MPLS
   871|  interface ten-gigabit-ethernet-1/1/4
   872|  !
   873| !
   874| vlan 1225
   875|  name VLAN_1225_SW1POP25_SW1POP15_MPLS
   876|  interface ten-gigabit-ethernet-1/1/2
   877|  !
   878| !
   879|!
   880|license mpls enabled
   881|license mpls key ***
   882|SW1POP25_POWER# mpl
   883|                ^
   884|% Invalid input detected at '^' marker.
   885|SW1POP25_POWER# conf
   886|Entering configuration mode terminal
   887|SW1POP25_POWER(config)# mpls l2vpn
   888|SW1POP25_POWER(config-l2vpn)#  vpls-group POP25_POWERNET_POP00
   889|SW1POP25_POWER(config-vpls-group-POP25_POWERNET_POP00)#   vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
   890|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT)# bri
   891|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# undo     access-interface ten-gigabit-ethernet-1/1/1
   892|---------------------------------------------------------------^
   893|syntax error: unknown command
   894|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# no     access-interface ten-gigabit-ethernet-1/1/1
   895|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# comm
   896|Commit complete.
   897|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# top
   898|SW1POP25_POWER(config)# diapl
   899|                        ^
   900|% Invalid input detected at '^' marker.
   901|SW1POP25_POWER(config)# show run
   902|-----------------------------^
   903|syntax error: element does not exist
   904|SW1POP25_POWER(config)# show cu
   905|-----------------------------^
   906|syntax error: element does not exist
   907|SW1POP25_POWER(config)# show runn
   908|                             ^
   909|% Invalid input detected at '^' marker.
   910|SW1POP25_POWER(config)# show
   911|aaa authentication-order [ local ]
   912|aaa user admin
   913| password $1$SruTaKhs$I.GFmLUqXX01atDBHd7rT/
   914| group admin
   915|!
   916|session paginate true
   917|mpls ldp
   918| lsr-id loopback-0
   919|  interface l3-L3_VLAN1125_MPLS1
   920|  !
   921|  interface l3-L3_VLAN1225_MPLS1
   922|  !
   923|  neighbor targeted 10.244.188.0
   924|  !
   925|  neighbor targeted 10.244.188.2
   926|  !
   927|  neighbor targeted 10.244.189.0
   928|  !
   929|  neighbor targeted 10.244.188.18
   930|  !
   931|  neighbor targeted 10.244.188.5
   932|  !
   933|  neighbor targeted 10.244.188.21
   934|  !
   935|  neighbor targeted 10.244.188.8
   936|  !
   937|  neighbor targeted 10.244.188.20
   938|  !
   939|  neighbor targeted 10.244.188.27
   940|  !
   941| !
   942|!
   943|mpls l2vpn
   944| vpls-group POP02_POA_POP25_POWERNET
   945|  vpn VSI_3225_BGP2_POP25_POWERNET
   946|   vfi
   947|    pw-type ethernet
   948|    neighbor 10.244.188.2
   949|     pw-id 3225
   950|    !
   951|   !
   952|   bridge-domain
   953|    dot1q 3225
   954|    bridge-mtu 9000
   955|    access-interface gigabit-ethernet-1/1/1
   956|    !
   957|   !
   958|  !
   959|  vpn VSI_3256_POP25_POP02_TR_TELIUM
   960|   vfi
   961|    pw-type ethernet
   962|    neighbor 10.244.188.2
   963|     pw-id 3256
   964|    !
   965|   !
   966|   bridge-domain
   967|    dot1q 3256
   968|    bridge-mtu 9000
   969|    access-interface gigabit-ethernet-1/1/5
   970|    !
   971|   !
   972|  !
   973| !
   974| vpls-group POP25_POWERNET_POP00
   975|  vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
   976|   vfi
   977|    pw-type ethernet
   978|    neighbor 10.244.189.0
   979|     pw-id 250
   980|    !
   981|   !
   982|   bridge-domain
   983|    dot1q 250
   984|    bridge-mtu 9000
   985|    access-interface gigabit-ethernet-1/1/1
   986|    !
   987|    access-interface gigabit-ethernet-1/1/2
   988|    !
   989|    access-interface gigabit-ethernet-1/1/3
   990|    !
   991|    access-interface ten-gigabit-ethernet-1/1/3
   992|    !
   993|   !
   994|  !
   995|  vpn VSI_251_CY_POP0-2_POP25_CO_OLT1
   996|   vfi
   997|    pw-type ethernet
   998|    neighbor 10.244.189.0
   999|     pw-id 251
  1000|    !
  1001|   !
  1002|   bridge-domain
  1003|    dot1q 251
  1004|    bridge-mtu 9000
  1005|    access-interface gigabit-ethernet-1/1/5
  1006|    !
  1007|    access-interface ten-gigabit-ethernet-1/1/1
  1008|    !
  1009|    access-interface ten-gigabit-ethernet-1/1/3
  1010|    !
  1011|   !
  1012|  !
  1013|  vpn VSI_253_CY_POP0-2_POP25_PO_OLT1
  1014|   vfi
  1015|    pw-type ethernet
  1016|    neighbor 10.244.189.0
  1017|     pw-id 253
  1018|    !
  1019|   !
  1020|   bridge-domain
  1021|    dot1q 253
  1022|    bridge-mtu 9000
  1023|    access-interface gigabit-ethernet-1/1/5
  1024|    !
  1025|    access-interface ten-gigabit-ethernet-1/1/3
  1026|    !
  1027|   !
  1028|  !
  1029|  vpn VSI_258_CY_POP0-2_POP25_PO_OLT1
  1030|   vfi
  1031|    pw-type ethernet
  1032|    neighbor 10.244.188.2
  1033|     pw-id 258
  1034|    !
  1035|    neighbor 10.244.189.0
  1036|     pw-id 258
  1037|    !
  1038|   !
  1039|   bridge-domain
  1040|    dot1q 258
  1041|    bridge-mtu 9000
  1042|    access-interface gigabit-ethernet-1/1/5
  1043|    !
  1044|   !
  1045|  !
  1046|  vpn VSI_3101_POP00_TRANS_CAM_SAPUCA
  1047|   vfi
  1048|    pw-type ethernet
  1049|    neighbor 10.244.189.0
  1050|     pw-id 3101
  1051|    !
  1052|   !
  1053|   bridge-domain
  1054|    dot1q 3101
  1055|    bridge-mtu 9000
  1056|    access-interface gigabit-ethernet-1/1/5
  1057|    !
  1058|   !
  1059|  !
  1060|  vpn VSI_3102_POP00_TRANS_CAM_SAPUCA
  1061|   vfi
  1062|    pw-type ethernet
  1063|    neighbor 10.244.189.0
  1064|     pw-id 3102
  1065|    !
  1066|   !
  1067|   bridge-domain
  1068|    dot1q 3102
  1069|    bridge-mtu 9000
  1070|    access-interface gigabit-ethernet-1/1/6
  1071|    !
  1072|   !
  1073|  !
  1074|  vpn VSI_3125_SHO_POP00_POP25_POWERN
  1075|   vfi
  1076|    pw-type ethernet
  1077|    neighbor 10.244.189.0
  1078|     pw-id 3125
  1079|    !
  1080|   !
  1081|   bridge-domain
  1082|    dot1q 3125
  1083|    bridge-mtu 9000
  1084|    access-interface ten-gigabit-ethernet-1/1/3
  1085|    !
  1086|   !
  1087|  !
  1088| !
  1089| vpls-group POP25_POWERNET_POP05_M_RINCAO
  1090|  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
  1091|   vfi
  1092|    pw-type ethernet
  1093|    neighbor 10.244.188.5
  1094|     pw-id 3540
  1095|    !
  1096|   !
  1097|   bridge-domain
  1098|    dot1q 3540
  1099|    bridge-mtu 9000
  1100|    access-interface gigabit-ethernet-1/1/6
  1101|    !
  1102|   !
  1103|  !
  1104| !
  1105| vpls-group POP25_POWERNET_REDE_NEUTRA
  1106|  vpn VSI_3560_TRANS_PPPOE_POWERNET
  1107|   vfi
  1108|    pw-type ethernet
  1109|    neighbor 10.244.188.8
  1110|     pw-id 3560
  1111|    !
  1112|    neighbor 10.244.188.20
  1113|     pw-id 3560
  1114|    !
  1115|    neighbor 10.244.188.27
  1116|     pw-id 3560
  1117|    !
  1118|    neighbor 10.244.189.0
  1119|     pw-id 3560
  1120|    !
  1121|   !
  1122|   bridge-domain
  1123|    dot1q 3560
  1124|    bridge-mtu 9000
  1125|    access-interface ten-gigabit-ethernet-1/1/1
  1126|    !
  1127|    access-interface ten-gigabit-ethernet-1/1/3
  1128|    !
  1129|   !
  1130|  !
  1131| !
  1132| vpls-group POP25_POWER_POP21_PRE_SAPUCAIA
  1133|  vpn VSI_902_POP21_POP25_TR_PREF_SAP
  1134|   vfi
  1135|    pw-type ethernet
  1136|    neighbor 10.244.188.21
  1137|     pw-id 902
  1138|    !
  1139|   !
  1140|   bridge-domain
  1141|    dot1q 902
  1142|    bridge-mtu 9000
  1143|    access-interface gigabit-ethernet-1/1/5
  1144|    !
  1145|   !
  1146|  !
  1147|  vpn VSI_903_POP21_POP25_TR_PREF_SAP
  1148|   vfi
  1149|    pw-type ethernet
  1150|    neighbor 10.244.188.21
  1151|     pw-id 903
  1152|    !
  1153|   !
  1154|   bridge-domain
  1155|    dot1q 903
  1156|    bridge-mtu 9000
  1157|    access-interface gigabit-ethernet-1/1/5
  1158|    !
  1159|   !
  1160|  !
  1161|  vpn VSI_904_POP21_POP25_TR_PREF_SAP
  1162|   vfi
  1163|    pw-type ethernet
  1164|    neighbor 10.244.188.21
  1165|     pw-id 904
  1166|    !
  1167|   !
  1168|   bridge-domain
  1169|    dot1q 904
  1170|    bridge-mtu 9000
  1171|    access-interface gigabit-ethernet-1/1/5
  1172|    !
  1173|   !
  1174|  !
  1175|  vpn VSI_918_POP21_POP25_TR_PREF_SAP
  1176|   vfi
  1177|    pw-type ethernet
  1178|    neighbor 10.244.188.21
  1179|     pw-id 918
  1180|    !
  1181|   !
  1182|   bridge-domain
  1183|    dot1q 918
  1184|    bridge-mtu 9000
  1185|    access-interface gigabit-ethernet-1/1/5
  1186|    !
  1187|   !
  1188|  !
  1189|  vpn VSI_925_POP21_POP25_TR_PREF_SAP
  1190|   vfi
  1191|    pw-type ethernet
  1192|    neighbor 10.244.188.21
  1193|     pw-id 925
  1194|    !
  1195|   !
  1196|   bridge-domain
  1197|    dot1q 925
  1198|    bridge-mtu 9000
  1199|    access-interface gigabit-ethernet-1/1/5
  1200|    !
  1201|   !
  1202|  !
  1203|  vpn VSI_929_POP21_POP25_TR_PREF_SAP
  1204|   vfi
  1205|    pw-type ethernet
  1206|    neighbor 10.244.188.21
  1207|     pw-id 929
  1208|    !
  1209|   !
  1210|   bridge-domain
  1211|    dot1q 929
  1212|    bridge-mtu 9000
  1213|    access-interface gigabit-ethernet-1/1/5
  1214|    !
  1215|   !
  1216|  !
  1217|  vpn VSI_930_POP21_POP25_TR_PREF_SAP
  1218|   vfi
  1219|    pw-type ethernet
  1220|    neighbor 10.244.188.21
  1221|     pw-id 930
  1222|    !
  1223|   !
  1224|   bridge-domain
  1225|    dot1q 930
  1226|    bridge-mtu 9000
  1227|    access-interface gigabit-ethernet-1/1/5
  1228|    !
  1229|   !
  1230|  !
  1231|  vpn VSI_931_POP21_POP25_TR_PREF_SAP
  1232|   vfi
  1233|    pw-type ethernet
  1234|    neighbor 10.244.188.21
  1235|     pw-id 931
  1236|    !
  1237|   !
  1238|   bridge-domain
  1239|    dot1q 931
  1240|    bridge-mtu 9000
  1241|    access-interface gigabit-ethernet-1/1/5
  1242|    !
  1243|   !
  1244|  !
  1245|  vpn VSI_935_POP21_POP25_TR_PREF_SAP
  1246|   vfi
  1247|    pw-type ethernet
  1248|    neighbor 10.244.188.21
  1249|     pw-id 935
  1250|    !
  1251|   !
  1252|   bridge-domain
  1253|    dot1q 935
  1254|    bridge-mtu 9000
  1255|    access-interface gigabit-ethernet-1/1/5
  1256|    !
  1257|   !
  1258|  !
  1259|  vpn VSI_944_POP21_POP25_TR_PREF_SAP
  1260|   vfi
  1261|    pw-type ethernet
  1262|    neighbor 10.244.188.21
  1263|     pw-id 944
  1264|    !
  1265|   !
  1266|   bridge-domain
  1267|    dot1q 944
  1268|    bridge-mtu 9000
  1269|    access-interface gigabit-ethernet-1/1/5
  1270|    !
  1271|   !
  1272|  !
  1273|  vpn VSI_951_POP21_POP25_TR_PREF_SAP
  1274|   vfi
  1275|    pw-type ethernet
  1276|    neighbor 10.244.188.21
  1277|     pw-id 951
  1278|    !
  1279|   !
  1280|   bridge-domain
  1281|    dot1q 951
  1282|    bridge-mtu 9000
  1283|    access-interface gigabit-ethernet-1/1/5
  1284|    !
  1285|   !
  1286|  !
  1287|  vpn VSI_955_POP21_POP25_TR_PREF_SAP
  1288|   vfi
  1289|    pw-type ethernet
  1290|    neighbor 10.244.188.21
  1291|     pw-id 955
  1292|    !
  1293|   !
  1294|   bridge-domain
  1295|    dot1q 955
  1296|    bridge-mtu 9000
  1297|    access-interface gigabit-ethernet-1/1/5
  1298|    !
  1299|   !
  1300|  !
  1301|  vpn VSI_961_POP21_POP25_TR_PREF_SAP
  1302|   vfi
  1303|    pw-type ethernet
  1304|    neighbor 10.244.188.21
  1305|     pw-id 961
  1306|    !
  1307|   !
  1308|   bridge-domain
  1309|    dot1q 961
  1310|    bridge-mtu 9000
  1311|    access-interface gigabit-ethernet-1/1/5
  1312|    !
  1313|   !
  1314|  !
  1315|  vpn VSI_964_POP21_POP25_TR_PREF_SAP
  1316|   vfi
  1317|    pw-type ethernet
  1318|    neighbor 10.244.188.21
  1319|     pw-id 964
  1320|    !
  1321|   !
  1322|   bridge-domain
  1323|    dot1q 964
  1324|    bridge-mtu 9000
  1325|    access-interface gigabit-ethernet-1/1/5
  1326|    !
  1327|   !
  1328|  !
  1329|  vpn VSI_967_POP21_POP25_TR_PREF_SAP
  1330|   vfi
  1331|    pw-type ethernet
  1332|    neighbor 10.244.188.21
  1333|     pw-id 967
  1334|    !
  1335|   !
  1336|   bridge-domain
  1337|    dot1q 967
  1338|    bridge-mtu 9000
  1339|    access-interface gigabit-ethernet-1/1/5
  1340|    !
  1341|   !
  1342|  !
  1343|  vpn VSI_971_POP21_POP25_TR_PREF_SAP
  1344|   vfi
  1345|    pw-type ethernet
  1346|    neighbor 10.244.188.21
  1347|     pw-id 971
  1348|    !
  1349|   !
  1350|   bridge-domain
  1351|    dot1q 971
  1352|    bridge-mtu 9000
  1353|    access-interface gigabit-ethernet-1/1/5
  1354|    !
  1355|   !
  1356|  !
  1357|  vpn VSI_976_POP21_POP25_TR_PREF_SAP
  1358|   vfi
  1359|    pw-type ethernet
  1360|    neighbor 10.244.188.21
  1361|     pw-id 976
  1362|    !
  1363|   !
  1364|   bridge-domain
  1365|    dot1q 976
  1366|    bridge-mtu 9000
  1367|    access-interface gigabit-ethernet-1/1/5
  1368|    !
  1369|   !
  1370|  !
  1371|  vpn VSI_978_POP21_POP25_TR_PREF_SAP
  1372|   vfi
  1373|    pw-type ethernet
  1374|    neighbor 10.244.188.21
  1375|     pw-id 978
  1376|    !
  1377|   !
  1378|   bridge-domain
  1379|    dot1q 978
  1380|    bridge-mtu 9000
  1381|    access-interface gigabit-ethernet-1/1/5
  1382|    !
  1383|   !
  1384|  !
  1385|  vpn VSI_979_POP21_POP25_TR_PREF_SAP
  1386|   vfi
  1387|    pw-type ethernet
  1388|    neighbor 10.244.188.21
  1389|     pw-id 979
  1390|    !
  1391|   !
  1392|   bridge-domain
  1393|    dot1q 979
  1394|    bridge-mtu 9000
  1395|    access-interface gigabit-ethernet-1/1/5
  1396|    !
  1397|   !
  1398|  !
  1399|  vpn VSI_981_POP21_POP25_TR_PREF_SAP
  1400|   vfi
  1401|    pw-type ethernet
  1402|    neighbor 10.244.188.21
  1403|     pw-id 981
  1404|    !
  1405|   !
  1406|   bridge-domain
  1407|    dot1q 981
  1408|    bridge-mtu 9000
  1409|    access-interface gigabit-ethernet-1/1/5
  1410|    !
  1411|   !
  1412|  !
  1413|  vpn VSI_987_POP21_POP25_TR_PREF_SAP
  1414|   vfi
  1415|    pw-type ethernet
  1416|    neighbor 10.244.188.21
  1417|     pw-id 987
  1418|    !
  1419|   !
  1420|   bridge-domain
  1421|    dot1q 987
  1422|    bridge-mtu 9000
  1423|    access-interface gigabit-ethernet-1/1/5
  1424|    !
  1425|   !
  1426|  !
  1427|  vpn VSI_988_POP21_POP25_TR_PREF_SAP
  1428|   vfi
  1429|    pw-type ethernet
  1430|    neighbor 10.244.188.21
  1431|     pw-id 988
  1432|    !
  1433|   !
  1434|   bridge-domain
  1435|    dot1q 988
  1436|    bridge-mtu 9000
  1437|    access-interface gigabit-ethernet-1/1/5
  1438|    !
  1439|   !
  1440|  !
  1441|  vpn VSI_989_POP21_POP25_TR_PREF_SAP
  1442|   vfi
  1443|    pw-type ethernet
  1444|    neighbor 10.244.188.21
  1445|     pw-id 989
  1446|    !
  1447|   !
  1448|   bridge-domain
  1449|    dot1q 989
  1450|    bridge-mtu 9000
  1451|    access-interface gigabit-ethernet-1/1/5
  1452|    !
  1453|   !
  1454|  !
  1455|  vpn VSI_991_POP21_POP25_TR_PREF_SAP
  1456|   vfi
  1457|    pw-type ethernet
  1458|    neighbor 10.244.188.21
  1459|     pw-id 991
  1460|    !
  1461|   !
  1462|   bridge-domain
  1463|    dot1q 991
  1464|    bridge-mtu 9000
  1465|    access-interface gigabit-ethernet-1/1/5
  1466|    !
  1467|   !
  1468|  !
  1469|  vpn VSI_992_POP21_POP25_TR_PREF_SAP
  1470|   vfi
  1471|    pw-type ethernet
  1472|    neighbor 10.244.188.21
  1473|     pw-id 992
  1474|    !
  1475|   !
  1476|   bridge-domain
  1477|    dot1q 992
  1478|    bridge-mtu 9000
  1479|    access-interface gigabit-ethernet-1/1/5
  1480|    !
  1481|   !
  1482|  !
  1483|  vpn VSI_994_POP21_POP25_TR_PREF_SAP
  1484|   vfi
  1485|    pw-type ethernet
  1486|    neighbor 10.244.188.21
  1487|     pw-id 994
  1488|    !
  1489|   !
  1490|   bridge-domain
  1491|    dot1q 994
  1492|    bridge-mtu 9000
  1493|    access-interface gigabit-ethernet-1/1/5
  1494|    !
  1495|   !
  1496|  !
  1497|  vpn VSI_999_POP21_POP25_TR_PREF_SAP
  1498|   vfi
  1499|    pw-type ethernet
  1500|    neighbor 10.244.188.21
  1501|     pw-id 999
  1502|    !
  1503|   !
  1504|   bridge-domain
  1505|    dot1q 999
  1506|    bridge-mtu 9000
  1507|    access-interface gigabit-ethernet-1/1/5
  1508|    !
  1509|   !
  1510|  !
  1511| !
  1512| vpls-group POPPOP25_POWERNET_POP00
  1513| !
  1514|!
  1515|snmp system location -29.881604,-51.086573
  1516|snmp traps config-commit
  1517|snmp traps cpu-core
  1518|snmp traps cpu-load
  1519|snmp traps link-status
  1520|snmp traps login-success
  1521|snmp agent enabled
  1522|snmp agent version v2c
  1523|snmp agent version v3
  1524|snmp community CyberWeb
  1525| sec-name CyberWeb
  1526|!
  1527|snmp community public
  1528| sec-name public
  1529|!
  1530|snmp notify std_v1_trap
  1531| tag std_v1_trap
  1532|!
  1533|snmp notify std_v2_inform
  1534| tag std_v2_inform
  1535| type inform
  1536|!
  1537|snmp notify std_v2_trap
  1538| tag std_v2_trap
  1539|!
  1540|snmp notify std_v3_inform
  1541| tag std_v3_inform
  1542| type inform
  1543|!
  1544|snmp notify std_v3_trap
  1545| tag std_v3_trap
  1546|!
  1547|snmp vacm group CyberWeb
  1548| member CyberWeb
  1549|  sec-model [ v2c ]
  1550| !
  1551| access "" v2c no-auth-no-priv
  1552|  read-view root
  1553|  notify-view root
  1554| !
  1555|!
  1556|snmp vacm group public
  1557| member public
  1558|  sec-model [ v2c ]
  1559| !
  1560| access "" v2c no-auth-no-priv
  1561|  read-view root
  1562|  write-view root
  1563|  notify-view root
  1564| !
  1565|!
  1566|snmp vacm view root
  1567| subtree 1.3
  1568|  included
  1569| !
  1570|!
  1571|interface gigabit-ethernet 1/1/1
  1572| description PTP_SW1POP25_P01_OLT1POP25_MGNT
  1573| no shutdown
  1574| negotiation
  1575| duplex full
  1576| speed 100M
  1577| advertising-abilities 10Mfull 100Mfull 1Gfull
  1578| mdix normal
  1579| mtu 12266
  1580|!
  1581|interface gigabit-ethernet 1/1/2
  1582| no shutdown
  1583| negotiation
  1584| duplex full
  1585| speed 100M
  1586| advertising-abilities 10Mfull 100Mfull 1Gfull
  1587| mdix auto
  1588| mtu 12266
  1589|!
  1590|interface gigabit-ethernet 1/1/3
  1591| description LOOPING_DGT_PORTA4
  1592| no shutdown
  1593| negotiation
  1594| duplex full
  1595| speed 100M
  1596| advertising-abilities 10Mfull 100Mfull 1Gfull
  1597| mdix normal
  1598| mtu 12266
  1599|!
  1600|interface gigabit-ethernet 1/1/4
  1601| description LOOPING_DGT_PORTA3
  1602| no shutdown
  1603| negotiation
  1604| duplex full
  1605| speed 100M
  1606| advertising-abilities 10Mfull 100Mfull 1Gfull
  1607| mdix auto
  1608| mtu 12266
  1609|!
  1610|interface gigabit-ethernet 1/1/5
  1611| description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
  1612| no shutdown
  1613| negotiation
  1614| duplex full
  1615| speed 1G
  1616| advertising-abilities 10Mfull 100Mfull 1Gfull
  1617| mdix normal
  1618| mtu 12266
  1619|!
  1620|interface gigabit-ethernet 1/1/6
  1621| description PTP_SW1POP25_P06__OLT1_P05
  1622| no shutdown
  1623| negotiation
  1624| duplex full
  1625| speed 1G
  1626| advertising-abilities 10Mfull 100Mfull 1Gfull
  1627| mdix normal
  1628| mtu 12266
  1629|!
  1630|interface gigabit-ethernet 1/1/7
  1631| description PTP_SW1POP25_P07_CE25_SFP-SFPPLUS1
  1632| shutdown
  1633| no negotiation
  1634| duplex full
  1635| speed 1G
  1636| advertising-abilities 10Mfull 100Mfull 1Gfull
  1637| mdix normal
  1638| mtu 12266
  1639|!
  1640|interface gigabit-ethernet 1/1/8
  1641| no shutdown
  1642| negotiation
  1643| duplex full
  1644| speed 1G
  1645| advertising-abilities 10Mfull 100Mfull 1Gfull
  1646| mdix normal
  1647| mtu 12266
  1648|!
  1649|interface ten-gigabit-ethernet 1/1/1
  1650| description PTP_SW1POP25_PX01_OLT1POP25_PX01
  1651| no shutdown
  1652| no negotiation
  1653| duplex full
  1654| speed 10G
  1655| advertising-abilities 10Mfull 100Mfull 1Gfull
  1656| mdix normal
  1657| mtu 12266
  1658|!
  1659|interface ten-gigabit-ethernet 1/1/2
  1660| description PTP_SW1POP25_PX02_SW1POP15_PX02
  1661| no shutdown
  1662| no negotiation
  1663| duplex full
  1664| speed 10G
  1665| advertising-abilities 10Mfull 100Mfull 1Gfull
  1666| mdix normal
  1667| mtu 12266
  1668|!
  1669|interface ten-gigabit-ethernet 1/1/3
  1670| description PTP_SW1POP25_PX03_CE25_POWER_PX3_OLT2
  1671| no shutdown
  1672| no negotiation
  1673| duplex full
  1674| speed 10G
  1675| advertising-abilities 10Mfull 100Mfull 1Gfull
  1676| mdix normal
  1677| mtu 12266
  1678|!
  1679|interface ten-gigabit-ethernet 1/1/4
  1680| description PTP_SW1POP25_PX04_SW1POP21_PX03
  1681| no shutdown
  1682| no negotiation
  1683| duplex full
  1684| speed 10G
  1685| advertising-abilities 10Mfull 100Mfull 1Gfull
  1686| mdix normal
  1687| mtu 12266
  1688|!
  1689|interface l3 L3_VLAN1125_MPLS1
  1690| lower-layer-if vlan 1125
  1691| ipv4 address 10.244.125.2/30
  1692|!
  1693|interface l3 L3_VLAN1225_MPLS1
  1694| lower-layer-if vlan 1225
  1695| ipv4 address 10.244.125.6/30
  1696|!
  1697|interface mgmt 1/1/1
  1698| ipv4 address 192.168.0.25/24
  1699|!
  1700|interface loopback 0
  1701| ipv4 address 10.244.188.125/32
  1702|!
  1703|interface loopback 1
  1704| ipv4 address 10.244.188.25/32
  1705|!
  1706|clock timezone BRA -3
  1707|hostname SW1POP25_POWER
  1708|telnet-server enabled
  1709|telnet-server max-connections 2
  1710|loopback-detection
  1711| destination-address alternative
  1712|!
  1713|mac-address-table
  1714| aging-time 600
  1715|!
  1716|layer2-control-protocol
  1717| tunnel-mac datacom
  1718| tunnel-priority 7
  1719|!
  1720|sntp client
  1721|sntp server 200.160.0.8
  1722|vrf global
  1723|!
  1724|vrf mgmt
  1725|!
  1726|router ospf 1 vrf global
  1727| router-id 10.244.188.125
  1728| redistribute static
  1729| !
  1730| area 0.0.0.0
  1731|  interface l3-L3_VLAN1125_MPLS1
  1732|   cost 10
  1733|   bfd
  1734|    session-type desired
  1735|   !
  1736|   network-type point-to-point
  1737|  !
  1738|  interface l3-L3_VLAN1225_MPLS1
  1739|   cost 10
  1740|   bfd
  1741|    session-type desired
  1742|   !
  1743|   network-type point-to-point
  1744|  !
  1745|  interface loopback-0
  1746|  !
  1747|  interface loopback-1
  1748|  !
  1749| !
  1750|!
  1751|dot1q
  1752| vlan 40-41
  1753|  interface ten-gigabit-ethernet-1/1/1
  1754|  !
  1755|  interface ten-gigabit-ethernet-1/1/3
  1756|  !
  1757| !
  1758| vlan 250
  1759|  interface gigabit-ethernet-1/1/8
  1760|  !
  1761| !
  1762| vlan 252
  1763|  interface gigabit-ethernet-1/1/7
  1764|  !
  1765|  interface gigabit-ethernet-1/1/8
  1766|  !
  1767|  interface ten-gigabit-ethernet-1/1/1
  1768|  !
  1769|  interface ten-gigabit-ethernet-1/1/3
  1770|  !
  1771| !
  1772| vlan 1125
  1773|  name VLAN_1125_SW1POP21_SW1POP25_MPLS
  1774|  interface ten-gigabit-ethernet-1/1/4
  1775|  !
  1776| !
  1777| vlan 1225
  1778|  name VLAN_1225_SW1POP25_SW1POP15_MPLS
  1779|  interface ten-gigabit-ethernet-1/1/2
  1780|  !
  1781| !
  1782|!
  1783|license mpls enabled
  1784|license mpls key ***
  1785|SW1POP25_POWER(config)#
  1786|SW1POP25_POWER(config)# quit
  1787|------------------------^
  1788|syntax error: unknown command
  1789|SW1POP25_POWER(config)# exit
  1790|SW1POP25_POWER# show interface gigabit-ethernet 0/0/1
  1791|-------------------------------^
  1792|syntax error: expecting
  1793|  description - Description of interfaces
  1794|  link        - Overview of interface status
  1795|SW1POP25_POWER# show interface ?
  1796|Possible completions:
  1797|  description            Description of interfaces
  1798|  gigabit-ethernet       Display information of gigabit-ethernet interfaces
  1799|  link                   Overview of interface status
  1800|  ten-gigabit-ethernet   Display information of ten-gigabit-ethernet interfaces
  1801|  utilization            Interface utilization statistics
  1802|  |                      Output modifiers
  1803|  ---
  1804|  transceivers  <cr>
  1805|SW1POP25_POWER# show interface gigabit-ethernet ?
  1806|Possible completions:
  1807|  1/1/1   PTP_SW1POP25_P01_...
  1808|  1/1/3   LOOPING_DGT_PORTA4
  1809|  1/1/4   LOOPING_DGT_PORTA3
  1810|  1/1/5   PTP_SW1POP25_P05_...
  1811|  1/1/6   PTP_SW1POP25_P06_...
  1812|  1/1/7   PTP_SW1POP25_P07_...
  1813|  |       Output modifiers
  1814|  ---
  1815|  1/1/2  1/1/8  <cr>
  1816|SW1POP25_POWER# show interface gigabit-ethernet 1/1/1
  1817|interface gigabit-ethernet 1/1/1
  1818| Configuration:
  1819| --------------
  1820|  Port admin             : Enabled
  1821|  Negotiation            : Enabled
  1822|  Advertising Abilities  : [ 10Mfull 100Mfull 1Gfull ]
  1823|  MDIX                   : normal
  1824|  MTU                    : 12266
  1825|  Description            : PTP_SW1POP25_P01_OLT1POP25_MGNT
  1826|
  1827| Status:
  1828| -------
  1829|  Link Status            : Up
  1830|  Speed/Duplex           : 100Mfull
  1831|  Flow Control           : Disabled
  1832|  MDIX                   : Normal
  1833|
  1834|SW1POP25_POWER# dot1q
  1835|----------------^
  1836|syntax error: expecting
  1837|  autowizard           - Automatically query for mandatory elements
  1838|  clear                - Clear parameter
  1839|  commit               - Confirm a pending commit
  1840|  compare              - Compare running configuration to another configuration or a file
  1841|  complete-on-space    - Enable/disable completion on space
  1842|  config               - Manipulate software configuration information
  1843|  display-defaults     - Show default values when showing the configuration
  1844|  display-level        - Configure show command display level
  1845|  exit                 - Exit the management session
  1846|  file                 - Perform file operations
  1847|  help                 - Provide help information
  1848|  history              - Configure history size
  1849|  id                   - Show user id information
  1850|  idle-timeout         - Configure idle timeout
  1851|  ignore-leading-space - Ignore leading whitespace (true/false)
  1852|  leaf-prompting       - Automatically query for leaf values
  1853|  logout               - Logout a user
  1854|  no                   - Negate a command or set its defaults
  1855|  paginate             - Paginate output from CLI commands
  1856|  ping                 - Send ICMP packets to another device to check the network reliability
  1857|  ping6                - Send ICMPv6 packets to another device to check the network reliability
  1858|  quit                 - Exit the management session
  1859|  screen-resize        - Configure screen size
  1860|  send                 - Send message to terminal of one or all users
  1861|  set                  - Configure settings that may be changed by the system
  1862|  show                 - Show information about the system
  1863|  source               - File to source
  1864|  ssh                  - Open a secure shell on another host
  1865|  tcpdump              - Call tcpdump
  1866|  telnet               - Open a telnet session to another host
  1867|  terminal             - Set terminal type
  1868|  timestamp            - Enable/disable the display of timestamp
  1869|  traceroute           - Send IPv4 packets to another device for displaying all the hops to reach the destination
  1870|  traceroute6          - Send IPv6 packets to another device for displaying all the hops to reach the destination
  1871|  uptime               - Shows the system uptime
  1872|  who                  - Display currently logged on users
  1873|SW1POP25_POWER# conf
  1874|Entering configuration mode terminal
  1875|SW1POP25_POWER(config)# dot1q
  1876|SW1POP25_POWER(config-dot1q)#  vlan 250
  1877|SW1POP25_POWER(config-vlan-250)# interface gigabit-ethernet-1/1/1
  1878|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# !
  1879|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# comm
  1880|The dot1q settings may take a while to be completed.
  1881|Aborted: 'mpls l2vpn': vlan 250 interface gigabit-ethernet-1/1/1 is already assigned to mpls l2vpn vpls-group POP25_POWERNET_POP00 vpn VSI_250_CY_POP0-2_POP25_PO_MGNT with the same dot1q. It must be configured to another dot1q vlan
  1882|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# VSI_250_CY_POP0-2_POP25_PO_MGNT
  1883|Uncommitted changes found, commit them? [yes/no/CANCEL]
  1884|Aborted: by user
  1885|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# top
  1886|SW1POP25_POWER(config)# displ
  1887|                        ^
  1888|% Invalid input detected at '^' marker.
  1889|SW1POP25_POWER(config)# show interface gigabit-ethernet 1/1/5
  1890|interface gigabit-ethernet 1/1/5
  1891| description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
  1892| no shutdown
  1893| negotiation
  1894| duplex full
  1895| speed 1G
  1896| advertising-abilities 10Mfull 100Mfull 1Gfull
  1897| mdix normal
  1898| mtu 12266
  1899|!
  1900|SW1POP25_POWER(config)#
  1901|```
  1902|