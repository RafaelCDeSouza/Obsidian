---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de SW1POP25

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | SW1POP25 |
| **Tipo** | Switch |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[SW1POP25]]
     2|
     3|     1|```kotlin
     4|     2|(admin@10.244.188.25) Password:
     5|     3|Welcome to the DmOS CLI
     6|     4|admin connected from 10.244.19.90 using ssh on SW1POP25_POWER
     7|     5|SW1POP25_POWER# show running-config
     8|     6|aaa authentication-order [ local ]
     9|     7|aaa user admin
    10|     8| password $1$SruTaKhs$I.GFmLUqXX01atDBHd7rT/
    11|     9| group admin
    12|    10|!
    13|    11|session paginate true
    14|    12|mpls ldp
    15|    13| lsr-id loopback-0
    16|    14|  interface l3-L3_VLAN1125_MPLS1
    17|    15|  !
    18|    16|  interface l3-L3_VLAN1225_MPLS1
    19|    17|  !
    20|    18|  neighbor targeted 10.244.188.0
    21|    19|  !
    22|    20|  neighbor targeted 10.244.188.2
    23|    21|  !
    24|    22|  neighbor targeted 10.244.189.0
    25|    23|  !
    26|    24|  neighbor targeted 10.244.188.18
    27|    25|  !
    28|    26|  neighbor targeted 10.244.188.5
    29|    27|  !
    30|    28|  neighbor targeted 10.244.188.21
    31|    29|  !
    32|    30|  neighbor targeted 10.244.188.8
    33|    31|  !
    34|    32|  neighbor targeted 10.244.188.20
    35|    33|  !
    36|    34|  neighbor targeted 10.244.188.27
    37|    35|  !
    38|    36| !
    39|    37|!
    40|    38|mpls l2vpn
    41|    39| vpls-group POP02_POA_POP25_POWERNET
    42|    40|  vpn VSI_3225_BGP2_POP25_POWERNET
    43|    41|   vfi
    44|    42|    pw-type ethernet
    45|    43|    neighbor 10.244.188.2
    46|    44|     pw-id 3225
    47|    45|    !
    48|    46|   !
    49|    47|   bridge-domain
    50|    48|    dot1q 3225
    51|    49|    bridge-mtu 9000
    52|    50|    access-interface gigabit-ethernet-1/1/1
    53|    51|    !
    54|    52|   !
    55|    53|  !
    56|    54|  vpn VSI_3256_POP25_POP02_TR_TELIUM
    57|    55|   vfi
    58|    56|    pw-type ethernet
    59|    57|    neighbor 10.244.188.2
    60|    58|     pw-id 3256
    61|    59|    !
    62|    60|   !
    63|    61|   bridge-domain
    64|    62|    dot1q 3256
    65|    63|    bridge-mtu 9000
    66|    64|    access-interface gigabit-ethernet-1/1/5
    67|    65|    !
    68|    66|   !
    69|    67|  !
    70|    68| !
    71|    69| vpls-group POP25_POWERNET_POP00
    72|    70|  vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
    73|    71|   vfi
    74|    72|    pw-type ethernet
    75|    73|    neighbor 10.244.189.0
    76|    74|     pw-id 250
    77|    75|    !
    78|    76|   !
    79|    77|   bridge-domain
    80|    78|    dot1q 250
    81|    79|    bridge-mtu 9000
    82|    80|    access-interface gigabit-ethernet-1/1/1
    83|    81|    !
    84|    82|    access-interface gigabit-ethernet-1/1/2
    85|    83|    !
    86|    84|    access-interface gigabit-ethernet-1/1/3
    87|    85|    !
    88|    86|    access-interface ten-gigabit-ethernet-1/1/1
    89|    87|    !
    90|    88|    access-interface ten-gigabit-ethernet-1/1/3
    91|    89|    !
    92|    90|   !
    93|    91|  !
    94|    92|  vpn VSI_251_CY_POP0-2_POP25_CO_OLT1
    95|    93|   vfi
    96|    94|    pw-type ethernet
    97|    95|    neighbor 10.244.189.0
    98|    96|     pw-id 251
    99|    97|    !
   100|    98|   !
   101|    99|   bridge-domain
   102|   100|    dot1q 251
   103|   101|    bridge-mtu 9000
   104|   102|    access-interface gigabit-ethernet-1/1/5
   105|   103|    !
   106|   104|    access-interface ten-gigabit-ethernet-1/1/1
   107|   105|    !
   108|   106|    access-interface ten-gigabit-ethernet-1/1/3
   109|   107|    !
   110|   108|   !
   111|   109|  !
   112|   110|  vpn VSI_253_CY_POP0-2_POP25_PO_OLT1
   113|   111|   vfi
   114|   112|    pw-type ethernet
   115|   113|    neighbor 10.244.189.0
   116|   114|     pw-id 253
   117|   115|    !
   118|   116|   !
   119|   117|   bridge-domain
   120|   118|    dot1q 253
   121|   119|    bridge-mtu 9000
   122|   120|    access-interface gigabit-ethernet-1/1/5
   123|   121|    !
   124|   122|    access-interface ten-gigabit-ethernet-1/1/3
   125|   123|    !
   126|   124|   !
   127|   125|  !
   128|   126|  vpn VSI_258_CY_POP0-2_POP25_PO_OLT1
   129|   127|   vfi
   130|   128|    pw-type ethernet
   131|   129|    neighbor 10.244.188.2
   132|   130|     pw-id 258
   133|   131|    !
   134|   132|    neighbor 10.244.189.0
   135|   133|     pw-id 258
   136|   134|    !
   137|   135|   !
   138|   136|   bridge-domain
   139|   137|    dot1q 258
   140|   138|    bridge-mtu 9000
   141|   139|    access-interface gigabit-ethernet-1/1/5
   142|   140|    !
   143|   141|   !
   144|   142|  !
   145|   143|  vpn VSI_3101_POP00_TRANS_CAM_SAPUCA
   146|   144|   vfi
   147|   145|    pw-type ethernet
   148|   146|    neighbor 10.244.189.0
   149|   147|     pw-id 3101
   150|   148|    !
   151|   149|   !
   152|   150|   bridge-domain
   153|   151|    dot1q 3101
   154|   152|    bridge-mtu 9000
   155|   153|    access-interface gigabit-ethernet-1/1/5
   156|   154|    !
   157|   155|   !
   158|   156|  !
   159|   157|  vpn VSI_3102_POP00_TRANS_CAM_SAPUCA
   160|   158|   vfi
   161|   159|    pw-type ethernet
   162|   160|    neighbor 10.244.189.0
   163|   161|     pw-id 3102
   164|   162|    !
   165|   163|   !
   166|   164|   bridge-domain
   167|   165|    dot1q 3102
   168|   166|    bridge-mtu 9000
   169|   167|    access-interface gigabit-ethernet-1/1/6
   170|   168|    !
   171|   169|   !
   172|   170|  !
   173|   171|  vpn VSI_3125_SHO_POP00_POP25_POWERN
   174|   172|   vfi
   175|   173|    pw-type ethernet
   176|   174|    neighbor 10.244.189.0
   177|   175|     pw-id 3125
   178|   176|    !
   179|   177|   !
   180|   178|   bridge-domain
   181|   179|    dot1q 3125
   182|   180|    bridge-mtu 9000
   183|   181|    access-interface ten-gigabit-ethernet-1/1/3
   184|   182|    !
   185|   183|   !
   186|   184|  !
   187|   185| !
   188|   186| vpls-group POP25_POWERNET_POP05_M_RINCAO
   189|   187|  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
   190|   188|   vfi
   191|   189|    pw-type ethernet
   192|   190|    neighbor 10.244.188.5
   193|   191|     pw-id 3540
   194|   192|    !
   195|   193|   !
   196|   194|   bridge-domain
   197|   195|    dot1q 3540
   198|   196|    bridge-mtu 9000
   199|   197|    access-interface gigabit-ethernet-1/1/6
   200|   198|    !
   201|   199|   !
   202|   200|  !
   203|   201| !
   204|   202| vpls-group POP25_POWERNET_REDE_NEUTRA
   205|   203|  vpn VSI_3560_TRANS_PPPOE_POWERNET
   206|   204|   vfi
   207|   205|    pw-type ethernet
   208|   206|    neighbor 10.244.188.8
   209|   207|     pw-id 3560
   210|   208|    !
   211|   209|    neighbor 10.244.188.20
   212|   210|     pw-id 3560
   213|   211|    !
   214|   212|    neighbor 10.244.188.27
   215|   213|     pw-id 3560
   216|   214|    !
   217|   215|    neighbor 10.244.189.0
   218|   216|     pw-id 3560
   219|   217|    !
   220|   218|   !
   221|   219|   bridge-domain
   222|   220|    dot1q 3560
   223|   221|    bridge-mtu 9000
   224|   222|    access-interface ten-gigabit-ethernet-1/1/1
   225|   223|    !
   226|   224|    access-interface ten-gigabit-ethernet-1/1/3
   227|   225|    !
   228|   226|   !
   229|   227|  !
   230|   228| !
   231|   229| vpls-group POP25_POWER_POP21_PRE_SAPUCAIA
   232|   230|  vpn VSI_902_POP21_POP25_TR_PREF_SAP
   233|   231|   vfi
   234|   232|    pw-type ethernet
   235|   233|    neighbor 10.244.188.21
   236|   234|     pw-id 902
   237|   235|    !
   238|   236|   !
   239|   237|   bridge-domain
   240|   238|    dot1q 902
   241|   239|    bridge-mtu 9000
   242|   240|    access-interface gigabit-ethernet-1/1/5
   243|   241|    !
   244|   242|   !
   245|   243|  !
   246|   244|  vpn VSI_903_POP21_POP25_TR_PREF_SAP
   247|   245|   vfi
   248|   246|    pw-type ethernet
   249|   247|    neighbor 10.244.188.21
   250|   248|     pw-id 903
   251|   249|    !
   252|   250|   !
   253|   251|   bridge-domain
   254|   252|    dot1q 903
   255|   253|    bridge-mtu 9000
   256|   254|    access-interface gigabit-ethernet-1/1/5
   257|   255|    !
   258|   256|   !
   259|   257|  !
   260|   258|  vpn VSI_904_POP21_POP25_TR_PREF_SAP
   261|   259|   vfi
   262|   260|    pw-type ethernet
   263|   261|    neighbor 10.244.188.21
   264|   262|     pw-id 904
   265|   263|    !
   266|   264|   !
   267|   265|   bridge-domain
   268|   266|    dot1q 904
   269|   267|    bridge-mtu 9000
   270|   268|    access-interface gigabit-ethernet-1/1/5
   271|   269|    !
   272|   270|   !
   273|   271|  !
   274|   272|  vpn VSI_918_POP21_POP25_TR_PREF_SAP
   275|   273|   vfi
   276|   274|    pw-type ethernet
   277|   275|    neighbor 10.244.188.21
   278|   276|     pw-id 918
   279|   277|    !
   280|   278|   !
   281|   279|   bridge-domain
   282|   280|    dot1q 918
   283|   281|    bridge-mtu 9000
   284|   282|    access-interface gigabit-ethernet-1/1/5
   285|   283|    !
   286|   284|   !
   287|   285|  !
   288|   286|  vpn VSI_925_POP21_POP25_TR_PREF_SAP
   289|   287|   vfi
   290|   288|    pw-type ethernet
   291|   289|    neighbor 10.244.188.21
   292|   290|     pw-id 925
   293|   291|    !
   294|   292|   !
   295|   293|   bridge-domain
   296|   294|    dot1q 925
   297|   295|    bridge-mtu 9000
   298|   296|    access-interface gigabit-ethernet-1/1/5
   299|   297|    !
   300|   298|   !
   301|   299|  !
   302|   300|  vpn VSI_929_POP21_POP25_TR_PREF_SAP
   303|   301|   vfi
   304|   302|    pw-type ethernet
   305|   303|    neighbor 10.244.188.21
   306|   304|     pw-id 929
   307|   305|    !
   308|   306|   !
   309|   307|   bridge-domain
   310|   308|    dot1q 929
   311|   309|    bridge-mtu 9000
   312|   310|    access-interface gigabit-ethernet-1/1/5
   313|   311|    !
   314|   312|   !
   315|   313|  !
   316|   314|  vpn VSI_930_POP21_POP25_TR_PREF_SAP
   317|   315|   vfi
   318|   316|    pw-type ethernet
   319|   317|    neighbor 10.244.188.21
   320|   318|     pw-id 930
   321|   319|    !
   322|   320|   !
   323|   321|   bridge-domain
   324|   322|    dot1q 930
   325|   323|    bridge-mtu 9000
   326|   324|    access-interface gigabit-ethernet-1/1/5
   327|   325|    !
   328|   326|   !
   329|   327|  !
   330|   328|  vpn VSI_931_POP21_POP25_TR_PREF_SAP
   331|   329|   vfi
   332|   330|    pw-type ethernet
   333|   331|    neighbor 10.244.188.21
   334|   332|     pw-id 931
   335|   333|    !
   336|   334|   !
   337|   335|   bridge-domain
   338|   336|    dot1q 931
   339|   337|    bridge-mtu 9000
   340|   338|    access-interface gigabit-ethernet-1/1/5
   341|   339|    !
   342|   340|   !
   343|   341|  !
   344|   342|  vpn VSI_935_POP21_POP25_TR_PREF_SAP
   345|   343|   vfi
   346|   344|    pw-type ethernet
   347|   345|    neighbor 10.244.188.21
   348|   346|     pw-id 935
   349|   347|    !
   350|   348|   !
   351|   349|   bridge-domain
   352|   350|    dot1q 935
   353|   351|    bridge-mtu 9000
   354|   352|    access-interface gigabit-ethernet-1/1/5
   355|   353|    !
   356|   354|   !
   357|   355|  !
   358|   356|  vpn VSI_944_POP21_POP25_TR_PREF_SAP
   359|   357|   vfi
   360|   358|    pw-type ethernet
   361|   359|    neighbor 10.244.188.21
   362|   360|     pw-id 944
   363|   361|    !
   364|   362|   !
   365|   363|   bridge-domain
   366|   364|    dot1q 944
   367|   365|    bridge-mtu 9000
   368|   366|    access-interface gigabit-ethernet-1/1/5
   369|   367|    !
   370|   368|   !
   371|   369|  !
   372|   370|  vpn VSI_951_POP21_POP25_TR_PREF_SAP
   373|   371|   vfi
   374|   372|    pw-type ethernet
   375|   373|    neighbor 10.244.188.21
   376|   374|     pw-id 951
   377|   375|    !
   378|   376|   !
   379|   377|   bridge-domain
   380|   378|    dot1q 951
   381|   379|    bridge-mtu 9000
   382|   380|    access-interface gigabit-ethernet-1/1/5
   383|   381|    !
   384|   382|   !
   385|   383|  !
   386|   384|  vpn VSI_955_POP21_POP25_TR_PREF_SAP
   387|   385|   vfi
   388|   386|    pw-type ethernet
   389|   387|    neighbor 10.244.188.21
   390|   388|     pw-id 955
   391|   389|    !
   392|   390|   !
   393|   391|   bridge-domain
   394|   392|    dot1q 955
   395|   393|    bridge-mtu 9000
   396|   394|    access-interface gigabit-ethernet-1/1/5
   397|   395|    !
   398|   396|   !
   399|   397|  !
   400|   398|  vpn VSI_961_POP21_POP25_TR_PREF_SAP
   401|   399|   vfi
   402|   400|    pw-type ethernet
   403|   401|    neighbor 10.244.188.21
   404|   402|     pw-id 961
   405|   403|    !
   406|   404|   !
   407|   405|   bridge-domain
   408|   406|    dot1q 961
   409|   407|    bridge-mtu 9000
   410|   408|    access-interface gigabit-ethernet-1/1/5
   411|   409|    !
   412|   410|   !
   413|   411|  !
   414|   412|  vpn VSI_964_POP21_POP25_TR_PREF_SAP
   415|   413|   vfi
   416|   414|    pw-type ethernet
   417|   415|    neighbor 10.244.188.21
   418|   416|     pw-id 964
   419|   417|    !
   420|   418|   !
   421|   419|   bridge-domain
   422|   420|    dot1q 964
   423|   421|    bridge-mtu 9000
   424|   422|    access-interface gigabit-ethernet-1/1/5
   425|   423|    !
   426|   424|   !
   427|   425|  !
   428|   426|  vpn VSI_967_POP21_POP25_TR_PREF_SAP
   429|   427|   vfi
   430|   428|    pw-type ethernet
   431|   429|    neighbor 10.244.188.21
   432|   430|     pw-id 967
   433|   431|    !
   434|   432|   !
   435|   433|   bridge-domain
   436|   434|    dot1q 967
   437|   435|    bridge-mtu 9000
   438|   436|    access-interface gigabit-ethernet-1/1/5
   439|   437|    !
   440|   438|   !
   441|   439|  !
   442|   440|  vpn VSI_971_POP21_POP25_TR_PREF_SAP
   443|   441|   vfi
   444|   442|    pw-type ethernet
   445|   443|    neighbor 10.244.188.21
   446|   444|     pw-id 971
   447|   445|    !
   448|   446|   !
   449|   447|   bridge-domain
   450|   448|    dot1q 971
   451|   449|    bridge-mtu 9000
   452|   450|    access-interface gigabit-ethernet-1/1/5
   453|   451|    !
   454|   452|   !
   455|   453|  !
   456|   454|  vpn VSI_976_POP21_POP25_TR_PREF_SAP
   457|   455|   vfi
   458|   456|    pw-type ethernet
   459|   457|    neighbor 10.244.188.21
   460|   458|     pw-id 976
   461|   459|    !
   462|   460|   !
   463|   461|   bridge-domain
   464|   462|    dot1q 976
   465|   463|    bridge-mtu 9000
   466|   464|    access-interface gigabit-ethernet-1/1/5
   467|   465|    !
   468|   466|   !
   469|   467|  !
   470|   468|  vpn VSI_978_POP21_POP25_TR_PREF_SAP
   471|   469|   vfi
   472|   470|    pw-type ethernet
   473|   471|    neighbor 10.244.188.21
   474|   472|     pw-id 978
   475|   473|    !
   476|   474|   !
   477|   475|   bridge-domain
   478|   476|    dot1q 978
   479|   477|    bridge-mtu 9000
   480|   478|    access-interface gigabit-ethernet-1/1/5
   481|   479|    !
   482|   480|   !
   483|   481|  !
   484|   482|  vpn VSI_979_POP21_POP25_TR_PREF_SAP
   485|   483|   vfi
   486|   484|    pw-type ethernet
   487|   485|    neighbor 10.244.188.21
   488|   486|     pw-id 979
   489|   487|    !
   490|   488|   !
   491|   489|   bridge-domain
   492|   490|    dot1q 979
   493|   491|    bridge-mtu 9000
   494|   492|    access-interface gigabit-ethernet-1/1/5
   495|   493|    !
   496|   494|   !
   497|   495|  !
   498|   496|  vpn VSI_981_POP21_POP25_TR_PREF_SAP
   499|   497|   vfi
   500|   498|    pw-type ethernet
   501|   499|    neighbor 10.244.188.21
   502|   500|     pw-id 981
   503|   501|    !
   504|   502|   !
   505|   503|   bridge-domain
   506|   504|    dot1q 981
   507|   505|    bridge-mtu 9000
   508|   506|    access-interface gigabit-ethernet-1/1/5
   509|   507|    !
   510|   508|   !
   511|   509|  !
   512|   510|  vpn VSI_987_POP21_POP25_TR_PREF_SAP
   513|   511|   vfi
   514|   512|    pw-type ethernet
   515|   513|    neighbor 10.244.188.21
   516|   514|     pw-id 987
   517|   515|    !
   518|   516|   !
   519|   517|   bridge-domain
   520|   518|    dot1q 987
   521|   519|    bridge-mtu 9000
   522|   520|    access-interface gigabit-ethernet-1/1/5
   523|   521|    !
   524|   522|   !
   525|   523|  !
   526|   524|  vpn VSI_988_POP21_POP25_TR_PREF_SAP
   527|   525|   vfi
   528|   526|    pw-type ethernet
   529|   527|    neighbor 10.244.188.21
   530|   528|     pw-id 988
   531|   529|    !
   532|   530|   !
   533|   531|   bridge-domain
   534|   532|    dot1q 988
   535|   533|    bridge-mtu 9000
   536|   534|    access-interface gigabit-ethernet-1/1/5
   537|   535|    !
   538|   536|   !
   539|   537|  !
   540|   538|  vpn VSI_989_POP21_POP25_TR_PREF_SAP
   541|   539|   vfi
   542|   540|    pw-type ethernet
   543|   541|    neighbor 10.244.188.21
   544|   542|     pw-id 989
   545|   543|    !
   546|   544|   !
   547|   545|   bridge-domain
   548|   546|    dot1q 989
   549|   547|    bridge-mtu 9000
   550|   548|    access-interface gigabit-ethernet-1/1/5
   551|   549|    !
   552|   550|   !
   553|   551|  !
   554|   552|  vpn VSI_991_POP21_POP25_TR_PREF_SAP
   555|   553|   vfi
   556|   554|    pw-type ethernet
   557|   555|    neighbor 10.244.188.21
   558|   556|     pw-id 991
   559|   557|    !
   560|   558|   !
   561|   559|   bridge-domain
   562|   560|    dot1q 991
   563|   561|    bridge-mtu 9000
   564|   562|    access-interface gigabit-ethernet-1/1/5
   565|   563|    !
   566|   564|   !
   567|   565|  !
   568|   566|  vpn VSI_992_POP21_POP25_TR_PREF_SAP
   569|   567|   vfi
   570|   568|    pw-type ethernet
   571|   569|    neighbor 10.244.188.21
   572|   570|     pw-id 992
   573|   571|    !
   574|   572|   !
   575|   573|   bridge-domain
   576|   574|    dot1q 992
   577|   575|    bridge-mtu 9000
   578|   576|    access-interface gigabit-ethernet-1/1/5
   579|   577|    !
   580|   578|   !
   581|   579|  !
   582|   580|  vpn VSI_994_POP21_POP25_TR_PREF_SAP
   583|   581|   vfi
   584|   582|    pw-type ethernet
   585|   583|    neighbor 10.244.188.21
   586|   584|     pw-id 994
   587|   585|    !
   588|   586|   !
   589|   587|   bridge-domain
   590|   588|    dot1q 994
   591|   589|    bridge-mtu 9000
   592|   590|    access-interface gigabit-ethernet-1/1/5
   593|   591|    !
   594|   592|   !
   595|   593|  !
   596|   594|  vpn VSI_999_POP21_POP25_TR_PREF_SAP
   597|   595|   vfi
   598|   596|    pw-type ethernet
   599|   597|    neighbor 10.244.188.21
   600|   598|     pw-id 999
   601|   599|    !
   602|   600|   !
   603|   601|   bridge-domain
   604|   602|    dot1q 999
   605|   603|    bridge-mtu 9000
   606|   604|    access-interface gigabit-ethernet-1/1/5
   607|   605|    !
   608|   606|   !
   609|   607|  !
   610|   608| !
   611|   609| vpls-group POPPOP25_POWERNET_POP00
   612|   610| !
   613|   611|!
   614|   612|snmp system location -29.881604,-51.086573
   615|   613|snmp traps config-commit
   616|   614|snmp traps cpu-core
   617|   615|snmp traps cpu-load
   618|   616|snmp traps link-status
   619|   617|snmp traps login-success
   620|   618|snmp agent enabled
   621|   619|snmp agent version v2c
   622|   620|snmp agent version v3
   623|   621|snmp community CyberWeb
   624|   622| sec-name CyberWeb
   625|   623|!
   626|   624|snmp community public
   627|   625| sec-name public
   628|   626|!
   629|   627|snmp notify std_v1_trap
   630|   628| tag std_v1_trap
   631|   629|!
   632|   630|snmp notify std_v2_inform
   633|   631| tag std_v2_inform
   634|   632| type inform
   635|   633|!
   636|   634|snmp notify std_v2_trap
   637|   635| tag std_v2_trap
   638|   636|!
   639|   637|snmp notify std_v3_inform
   640|   638| tag std_v3_inform
   641|   639| type inform
   642|   640|!
   643|   641|snmp notify std_v3_trap
   644|   642| tag std_v3_trap
   645|   643|!
   646|   644|snmp vacm group CyberWeb
   647|   645| member CyberWeb
   648|   646|  sec-model [ v2c ]
   649|   647| !
   650|   648| access "" v2c no-auth-no-priv
   651|   649|  read-view root
   652|   650|  notify-view root
   653|   651| !
   654|   652|!
   655|   653|snmp vacm group public
   656|   654| member public
   657|   655|  sec-model [ v2c ]
   658|   656| !
   659|   657| access "" v2c no-auth-no-priv
   660|   658|  read-view root
   661|   659|  write-view root
   662|   660|  notify-view root
   663|   661| !
   664|   662|!
   665|   663|snmp vacm view root
   666|   664| subtree 1.3
   667|   665|  included
   668|   666| !
   669|   667|!
   670|   668|interface gigabit-ethernet 1/1/1
   671|   669| description PTP_SW1POP25_P01_OLT1POP25_MGNT
   672|   670| no shutdown
   673|   671| negotiation
   674|   672| duplex full
   675|   673| speed 100M
   676|   674| advertising-abilities 10Mfull 100Mfull 1Gfull
   677|   675| mdix normal
   678|   676| mtu 12266
   679|   677|!
   680|   678|interface gigabit-ethernet 1/1/2
   681|   679| no shutdown
   682|   680| negotiation
   683|   681| duplex full
   684|   682| speed 100M
   685|   683| advertising-abilities 10Mfull 100Mfull 1Gfull
   686|   684| mdix auto
   687|   685| mtu 12266
   688|   686|!
   689|   687|interface gigabit-ethernet 1/1/3
   690|   688| description LOOPING_DGT_PORTA4
   691|   689| no shutdown
   692|   690| negotiation
   693|   691| duplex full
   694|   692| speed 100M
   695|   693| advertising-abilities 10Mfull 100Mfull 1Gfull
   696|   694| mdix normal
   697|   695| mtu 12266
   698|   696|!
   699|   697|interface gigabit-ethernet 1/1/4
   700|   698| description LOOPING_DGT_PORTA3
   701|   699| no shutdown
   702|   700| negotiation
   703|   701| duplex full
   704|   702| speed 100M
   705|   703| advertising-abilities 10Mfull 100Mfull 1Gfull
   706|   704| mdix auto
   707|   705| mtu 12266
   708|   706|!
   709|   707|interface gigabit-ethernet 1/1/5
   710|   708| description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
   711|   709| no shutdown
   712|   710| negotiation
   713|   711| duplex full
   714|   712| speed 1G
   715|   713| advertising-abilities 10Mfull 100Mfull 1Gfull
   716|   714| mdix normal
   717|   715| mtu 12266
   718|   716|!
   719|   717|interface gigabit-ethernet 1/1/6
   720|   718| description PTP_SW1POP25_P06__OLT1_P05
   721|   719| no shutdown
   722|   720| negotiation
   723|   721| duplex full
   724|   722| speed 1G
   725|   723| advertising-abilities 10Mfull 100Mfull 1Gfull
   726|   724| mdix normal
   727|   725| mtu 12266
   728|   726|!
   729|   727|interface gigabit-ethernet 1/1/7
   730|   728| description PTP_SW1POP25_P07_CE25_SFP-SFPPLUS1
   731|   729| shutdown
   732|   730| no negotiation
   733|   731| duplex full
   734|   732| speed 1G
   735|   733| advertising-abilities 10Mfull 100Mfull 1Gfull
   736|   734| mdix normal
   737|   735| mtu 12266
   738|   736|!
   739|   737|interface gigabit-ethernet 1/1/8
   740|   738| no shutdown
   741|   739| negotiation
   742|   740| duplex full
   743|   741| speed 1G
   744|   742| advertising-abilities 10Mfull 100Mfull 1Gfull
   745|   743| mdix normal
   746|   744| mtu 12266
   747|   745|!
   748|   746|interface ten-gigabit-ethernet 1/1/1
   749|   747| description PTP_SW1POP25_PX01_OLT1POP25_PX01
   750|   748| no shutdown
   751|   749| no negotiation
   752|   750| duplex full
   753|   751| speed 10G
   754|   752| advertising-abilities 10Mfull 100Mfull 1Gfull
   755|   753| mdix normal
   756|   754| mtu 12266
   757|   755|!
   758|   756|interface ten-gigabit-ethernet 1/1/2
   759|   757| description PTP_SW1POP25_PX02_SW1POP15_PX02
   760|   758| no shutdown
   761|   759| no negotiation
   762|   760| duplex full
   763|   761| speed 10G
   764|   762| advertising-abilities 10Mfull 100Mfull 1Gfull
   765|   763| mdix normal
   766|   764| mtu 12266
   767|   765|!
   768|   766|interface ten-gigabit-ethernet 1/1/3
   769|   767| description PTP_SW1POP25_PX03_CE25_POWER_PX3_OLT2
   770|   768| no shutdown
   771|   769| no negotiation
   772|   770| duplex full
   773|   771| speed 10G
   774|   772| advertising-abilities 10Mfull 100Mfull 1Gfull
   775|   773| mdix normal
   776|   774| mtu 12266
   777|   775|!
   778|   776|interface ten-gigabit-ethernet 1/1/4
   779|   777| description PTP_SW1POP25_PX04_SW1POP21_PX03
   780|   778| no shutdown
   781|   779| no negotiation
   782|   780| duplex full
   783|   781| speed 10G
   784|   782| advertising-abilities 10Mfull 100Mfull 1Gfull
   785|   783| mdix normal
   786|   784| mtu 12266
   787|   785|!
   788|   786|interface l3 L3_VLAN1125_MPLS1
   789|   787| lower-layer-if vlan 1125
   790|   788| ipv4 address 10.244.125.2/30
   791|   789|!
   792|   790|interface l3 L3_VLAN1225_MPLS1
   793|   791| lower-layer-if vlan 1225
   794|   792| ipv4 address 10.244.125.6/30
   795|   793|!
   796|   794|interface mgmt 1/1/1
   797|   795| ipv4 address 192.168.0.25/24
   798|   796|!
   799|   797|interface loopback 0
   800|   798| ipv4 address 10.244.188.125/32
   801|   799|!
   802|   800|interface loopback 1
   803|   801| ipv4 address 10.244.188.25/32
   804|   802|!
   805|   803|clock timezone BRA -3
   806|   804|hostname SW1POP25_POWER
   807|   805|telnet-server enabled
   808|   806|telnet-server max-connections 2
   809|   807|loopback-detection
   810|   808| destination-address alternative
   811|   809|!
   812|   810|mac-address-table
   813|   811| aging-time 600
   814|   812|!
   815|   813|layer2-control-protocol
   816|   814| tunnel-mac datacom
   817|   815| tunnel-priority 7
   818|   816|!
   819|   817|sntp client
   820|   818|sntp server 200.160.0.8
   821|   819|vrf global
   822|   820|!
   823|   821|vrf mgmt
   824|   822|!
   825|   823|router ospf 1 vrf global
   826|   824| router-id 10.244.188.125
   827|   825| redistribute static
   828|   826| !
   829|   827| area 0.0.0.0
   830|   828|  interface l3-L3_VLAN1125_MPLS1
   831|   829|   cost 10
   832|   830|   bfd
   833|   831|    session-type desired
   834|   832|   !
   835|   833|   network-type point-to-point
   836|   834|  !
   837|   835|  interface l3-L3_VLAN1225_MPLS1
   838|   836|   cost 10
   839|   837|   bfd
   840|   838|    session-type desired
   841|   839|   !
   842|   840|   network-type point-to-point
   843|   841|  !
   844|   842|  interface loopback-0
   845|   843|  !
   846|   844|  interface loopback-1
   847|   845|  !
   848|   846| !
   849|   847|!
   850|   848|dot1q
   851|   849| vlan 40-41
   852|   850|  interface ten-gigabit-ethernet-1/1/1
   853|   851|  !
   854|   852|  interface ten-gigabit-ethernet-1/1/3
   855|   853|  !
   856|   854| !
   857|   855| vlan 250
   858|   856|  interface gigabit-ethernet-1/1/8
   859|   857|  !
   860|   858| !
   861|   859| vlan 252
   862|   860|  interface gigabit-ethernet-1/1/7
   863|   861|  !
   864|   862|  interface gigabit-ethernet-1/1/8
   865|   863|  !
   866|   864|  interface ten-gigabit-ethernet-1/1/1
   867|   865|  !
   868|   866|  interface ten-gigabit-ethernet-1/1/3
   869|   867|  !
   870|   868| !
   871|   869| vlan 1125
   872|   870|  name VLAN_1125_SW1POP21_SW1POP25_MPLS
   873|   871|  interface ten-gigabit-ethernet-1/1/4
   874|   872|  !
   875|   873| !
   876|   874| vlan 1225
   877|   875|  name VLAN_1225_SW1POP25_SW1POP15_MPLS
   878|   876|  interface ten-gigabit-ethernet-1/1/2
   879|   877|  !
   880|   878| !
   881|   879|!
   882|   880|license mpls enabled
   883|   881|license mpls key ***
   884|   882|SW1POP25_POWER# mpl
   885|   883|                ^
   886|   884|% Invalid input detected at '^' marker.
   887|   885|SW1POP25_POWER# conf
   888|   886|Entering configuration mode terminal
   889|   887|SW1POP25_POWER(config)# mpls l2vpn
   890|   888|SW1POP25_POWER(config-l2vpn)#  vpls-group POP25_POWERNET_POP00
   891|   889|SW1POP25_POWER(config-vpls-group-POP25_POWERNET_POP00)#   vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
   892|   890|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT)# bri
   893|   891|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# undo     access-interface ten-gigabit-ethernet-1/1/1
   894|   892|---------------------------------------------------------------^
   895|   893|syntax error: unknown command
   896|   894|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# no     access-interface ten-gigabit-ethernet-1/1/1
   897|   895|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# comm
   898|   896|Commit complete.
   899|   897|SW1POP25_POWER(config-vpn-VSI_250_CY_POP0-2_POP25_PO_MGNT-bd)# top
   900|   898|SW1POP25_POWER(config)# diapl
   901|   899|                        ^
   902|   900|% Invalid input detected at '^' marker.
   903|   901|SW1POP25_POWER(config)# show run
   904|   902|-----------------------------^
   905|   903|syntax error: element does not exist
   906|   904|SW1POP25_POWER(config)# show cu
   907|   905|-----------------------------^
   908|   906|syntax error: element does not exist
   909|   907|SW1POP25_POWER(config)# show runn
   910|   908|                             ^
   911|   909|% Invalid input detected at '^' marker.
   912|   910|SW1POP25_POWER(config)# show
   913|   911|aaa authentication-order [ local ]
   914|   912|aaa user admin
   915|   913| password $1$SruTaKhs$I.GFmLUqXX01atDBHd7rT/
   916|   914| group admin
   917|   915|!
   918|   916|session paginate true
   919|   917|mpls ldp
   920|   918| lsr-id loopback-0
   921|   919|  interface l3-L3_VLAN1125_MPLS1
   922|   920|  !
   923|   921|  interface l3-L3_VLAN1225_MPLS1
   924|   922|  !
   925|   923|  neighbor targeted 10.244.188.0
   926|   924|  !
   927|   925|  neighbor targeted 10.244.188.2
   928|   926|  !
   929|   927|  neighbor targeted 10.244.189.0
   930|   928|  !
   931|   929|  neighbor targeted 10.244.188.18
   932|   930|  !
   933|   931|  neighbor targeted 10.244.188.5
   934|   932|  !
   935|   933|  neighbor targeted 10.244.188.21
   936|   934|  !
   937|   935|  neighbor targeted 10.244.188.8
   938|   936|  !
   939|   937|  neighbor targeted 10.244.188.20
   940|   938|  !
   941|   939|  neighbor targeted 10.244.188.27
   942|   940|  !
   943|   941| !
   944|   942|!
   945|   943|mpls l2vpn
   946|   944| vpls-group POP02_POA_POP25_POWERNET
   947|   945|  vpn VSI_3225_BGP2_POP25_POWERNET
   948|   946|   vfi
   949|   947|    pw-type ethernet
   950|   948|    neighbor 10.244.188.2
   951|   949|     pw-id 3225
   952|   950|    !
   953|   951|   !
   954|   952|   bridge-domain
   955|   953|    dot1q 3225
   956|   954|    bridge-mtu 9000
   957|   955|    access-interface gigabit-ethernet-1/1/1
   958|   956|    !
   959|   957|   !
   960|   958|  !
   961|   959|  vpn VSI_3256_POP25_POP02_TR_TELIUM
   962|   960|   vfi
   963|   961|    pw-type ethernet
   964|   962|    neighbor 10.244.188.2
   965|   963|     pw-id 3256
   966|   964|    !
   967|   965|   !
   968|   966|   bridge-domain
   969|   967|    dot1q 3256
   970|   968|    bridge-mtu 9000
   971|   969|    access-interface gigabit-ethernet-1/1/5
   972|   970|    !
   973|   971|   !
   974|   972|  !
   975|   973| !
   976|   974| vpls-group POP25_POWERNET_POP00
   977|   975|  vpn VSI_250_CY_POP0-2_POP25_PO_MGNT
   978|   976|   vfi
   979|   977|    pw-type ethernet
   980|   978|    neighbor 10.244.189.0
   981|   979|     pw-id 250
   982|   980|    !
   983|   981|   !
   984|   982|   bridge-domain
   985|   983|    dot1q 250
   986|   984|    bridge-mtu 9000
   987|   985|    access-interface gigabit-ethernet-1/1/1
   988|   986|    !
   989|   987|    access-interface gigabit-ethernet-1/1/2
   990|   988|    !
   991|   989|    access-interface gigabit-ethernet-1/1/3
   992|   990|    !
   993|   991|    access-interface ten-gigabit-ethernet-1/1/3
   994|   992|    !
   995|   993|   !
   996|   994|  !
   997|   995|  vpn VSI_251_CY_POP0-2_POP25_CO_OLT1
   998|   996|   vfi
   999|   997|    pw-type ethernet
  1000|   998|    neighbor 10.244.189.0
  1001|   999|     pw-id 251
  1002|  1000|    !
  1003|  1001|   !
  1004|  1002|   bridge-domain
  1005|  1003|    dot1q 251
  1006|  1004|    bridge-mtu 9000
  1007|  1005|    access-interface gigabit-ethernet-1/1/5
  1008|  1006|    !
  1009|  1007|    access-interface ten-gigabit-ethernet-1/1/1
  1010|  1008|    !
  1011|  1009|    access-interface ten-gigabit-ethernet-1/1/3
  1012|  1010|    !
  1013|  1011|   !
  1014|  1012|  !
  1015|  1013|  vpn VSI_253_CY_POP0-2_POP25_PO_OLT1
  1016|  1014|   vfi
  1017|  1015|    pw-type ethernet
  1018|  1016|    neighbor 10.244.189.0
  1019|  1017|     pw-id 253
  1020|  1018|    !
  1021|  1019|   !
  1022|  1020|   bridge-domain
  1023|  1021|    dot1q 253
  1024|  1022|    bridge-mtu 9000
  1025|  1023|    access-interface gigabit-ethernet-1/1/5
  1026|  1024|    !
  1027|  1025|    access-interface ten-gigabit-ethernet-1/1/3
  1028|  1026|    !
  1029|  1027|   !
  1030|  1028|  !
  1031|  1029|  vpn VSI_258_CY_POP0-2_POP25_PO_OLT1
  1032|  1030|   vfi
  1033|  1031|    pw-type ethernet
  1034|  1032|    neighbor 10.244.188.2
  1035|  1033|     pw-id 258
  1036|  1034|    !
  1037|  1035|    neighbor 10.244.189.0
  1038|  1036|     pw-id 258
  1039|  1037|    !
  1040|  1038|   !
  1041|  1039|   bridge-domain
  1042|  1040|    dot1q 258
  1043|  1041|    bridge-mtu 9000
  1044|  1042|    access-interface gigabit-ethernet-1/1/5
  1045|  1043|    !
  1046|  1044|   !
  1047|  1045|  !
  1048|  1046|  vpn VSI_3101_POP00_TRANS_CAM_SAPUCA
  1049|  1047|   vfi
  1050|  1048|    pw-type ethernet
  1051|  1049|    neighbor 10.244.189.0
  1052|  1050|     pw-id 3101
  1053|  1051|    !
  1054|  1052|   !
  1055|  1053|   bridge-domain
  1056|  1054|    dot1q 3101
  1057|  1055|    bridge-mtu 9000
  1058|  1056|    access-interface gigabit-ethernet-1/1/5
  1059|  1057|    !
  1060|  1058|   !
  1061|  1059|  !
  1062|  1060|  vpn VSI_3102_POP00_TRANS_CAM_SAPUCA
  1063|  1061|   vfi
  1064|  1062|    pw-type ethernet
  1065|  1063|    neighbor 10.244.189.0
  1066|  1064|     pw-id 3102
  1067|  1065|    !
  1068|  1066|   !
  1069|  1067|   bridge-domain
  1070|  1068|    dot1q 3102
  1071|  1069|    bridge-mtu 9000
  1072|  1070|    access-interface gigabit-ethernet-1/1/6
  1073|  1071|    !
  1074|  1072|   !
  1075|  1073|  !
  1076|  1074|  vpn VSI_3125_SHO_POP00_POP25_POWERN
  1077|  1075|   vfi
  1078|  1076|    pw-type ethernet
  1079|  1077|    neighbor 10.244.189.0
  1080|  1078|     pw-id 3125
  1081|  1079|    !
  1082|  1080|   !
  1083|  1081|   bridge-domain
  1084|  1082|    dot1q 3125
  1085|  1083|    bridge-mtu 9000
  1086|  1084|    access-interface ten-gigabit-ethernet-1/1/3
  1087|  1085|    !
  1088|  1086|   !
  1089|  1087|  !
  1090|  1088| !
  1091|  1089| vpls-group POP25_POWERNET_POP05_M_RINCAO
  1092|  1090|  vpn VSI_3540_POP05_TR_MEDIANET_PPOE
  1093|  1091|   vfi
  1094|  1092|    pw-type ethernet
  1095|  1093|    neighbor 10.244.188.5
  1096|  1094|     pw-id 3540
  1097|  1095|    !
  1098|  1096|   !
  1099|  1097|   bridge-domain
  1100|  1098|    dot1q 3540
  1101|  1099|    bridge-mtu 9000
  1102|  1100|    access-interface gigabit-ethernet-1/1/6
  1103|  1101|    !
  1104|  1102|   !
  1105|  1103|  !
  1106|  1104| !
  1107|  1105| vpls-group POP25_POWERNET_REDE_NEUTRA
  1108|  1106|  vpn VSI_3560_TRANS_PPPOE_POWERNET
  1109|  1107|   vfi
  1110|  1108|    pw-type ethernet
  1111|  1109|    neighbor 10.244.188.8
  1112|  1110|     pw-id 3560
  1113|  1111|    !
  1114|  1112|    neighbor 10.244.188.20
  1115|  1113|     pw-id 3560
  1116|  1114|    !
  1117|  1115|    neighbor 10.244.188.27
  1118|  1116|     pw-id 3560
  1119|  1117|    !
  1120|  1118|    neighbor 10.244.189.0
  1121|  1119|     pw-id 3560
  1122|  1120|    !
  1123|  1121|   !
  1124|  1122|   bridge-domain
  1125|  1123|    dot1q 3560
  1126|  1124|    bridge-mtu 9000
  1127|  1125|    access-interface ten-gigabit-ethernet-1/1/1
  1128|  1126|    !
  1129|  1127|    access-interface ten-gigabit-ethernet-1/1/3
  1130|  1128|    !
  1131|  1129|   !
  1132|  1130|  !
  1133|  1131| !
  1134|  1132| vpls-group POP25_POWER_POP21_PRE_SAPUCAIA
  1135|  1133|  vpn VSI_902_POP21_POP25_TR_PREF_SAP
  1136|  1134|   vfi
  1137|  1135|    pw-type ethernet
  1138|  1136|    neighbor 10.244.188.21
  1139|  1137|     pw-id 902
  1140|  1138|    !
  1141|  1139|   !
  1142|  1140|   bridge-domain
  1143|  1141|    dot1q 902
  1144|  1142|    bridge-mtu 9000
  1145|  1143|    access-interface gigabit-ethernet-1/1/5
  1146|  1144|    !
  1147|  1145|   !
  1148|  1146|  !
  1149|  1147|  vpn VSI_903_POP21_POP25_TR_PREF_SAP
  1150|  1148|   vfi
  1151|  1149|    pw-type ethernet
  1152|  1150|    neighbor 10.244.188.21
  1153|  1151|     pw-id 903
  1154|  1152|    !
  1155|  1153|   !
  1156|  1154|   bridge-domain
  1157|  1155|    dot1q 903
  1158|  1156|    bridge-mtu 9000
  1159|  1157|    access-interface gigabit-ethernet-1/1/5
  1160|  1158|    !
  1161|  1159|   !
  1162|  1160|  !
  1163|  1161|  vpn VSI_904_POP21_POP25_TR_PREF_SAP
  1164|  1162|   vfi
  1165|  1163|    pw-type ethernet
  1166|  1164|    neighbor 10.244.188.21
  1167|  1165|     pw-id 904
  1168|  1166|    !
  1169|  1167|   !
  1170|  1168|   bridge-domain
  1171|  1169|    dot1q 904
  1172|  1170|    bridge-mtu 9000
  1173|  1171|    access-interface gigabit-ethernet-1/1/5
  1174|  1172|    !
  1175|  1173|   !
  1176|  1174|  !
  1177|  1175|  vpn VSI_918_POP21_POP25_TR_PREF_SAP
  1178|  1176|   vfi
  1179|  1177|    pw-type ethernet
  1180|  1178|    neighbor 10.244.188.21
  1181|  1179|     pw-id 918
  1182|  1180|    !
  1183|  1181|   !
  1184|  1182|   bridge-domain
  1185|  1183|    dot1q 918
  1186|  1184|    bridge-mtu 9000
  1187|  1185|    access-interface gigabit-ethernet-1/1/5
  1188|  1186|    !
  1189|  1187|   !
  1190|  1188|  !
  1191|  1189|  vpn VSI_925_POP21_POP25_TR_PREF_SAP
  1192|  1190|   vfi
  1193|  1191|    pw-type ethernet
  1194|  1192|    neighbor 10.244.188.21
  1195|  1193|     pw-id 925
  1196|  1194|    !
  1197|  1195|   !
  1198|  1196|   bridge-domain
  1199|  1197|    dot1q 925
  1200|  1198|    bridge-mtu 9000
  1201|  1199|    access-interface gigabit-ethernet-1/1/5
  1202|  1200|    !
  1203|  1201|   !
  1204|  1202|  !
  1205|  1203|  vpn VSI_929_POP21_POP25_TR_PREF_SAP
  1206|  1204|   vfi
  1207|  1205|    pw-type ethernet
  1208|  1206|    neighbor 10.244.188.21
  1209|  1207|     pw-id 929
  1210|  1208|    !
  1211|  1209|   !
  1212|  1210|   bridge-domain
  1213|  1211|    dot1q 929
  1214|  1212|    bridge-mtu 9000
  1215|  1213|    access-interface gigabit-ethernet-1/1/5
  1216|  1214|    !
  1217|  1215|   !
  1218|  1216|  !
  1219|  1217|  vpn VSI_930_POP21_POP25_TR_PREF_SAP
  1220|  1218|   vfi
  1221|  1219|    pw-type ethernet
  1222|  1220|    neighbor 10.244.188.21
  1223|  1221|     pw-id 930
  1224|  1222|    !
  1225|  1223|   !
  1226|  1224|   bridge-domain
  1227|  1225|    dot1q 930
  1228|  1226|    bridge-mtu 9000
  1229|  1227|    access-interface gigabit-ethernet-1/1/5
  1230|  1228|    !
  1231|  1229|   !
  1232|  1230|  !
  1233|  1231|  vpn VSI_931_POP21_POP25_TR_PREF_SAP
  1234|  1232|   vfi
  1235|  1233|    pw-type ethernet
  1236|  1234|    neighbor 10.244.188.21
  1237|  1235|     pw-id 931
  1238|  1236|    !
  1239|  1237|   !
  1240|  1238|   bridge-domain
  1241|  1239|    dot1q 931
  1242|  1240|    bridge-mtu 9000
  1243|  1241|    access-interface gigabit-ethernet-1/1/5
  1244|  1242|    !
  1245|  1243|   !
  1246|  1244|  !
  1247|  1245|  vpn VSI_935_POP21_POP25_TR_PREF_SAP
  1248|  1246|   vfi
  1249|  1247|    pw-type ethernet
  1250|  1248|    neighbor 10.244.188.21
  1251|  1249|     pw-id 935
  1252|  1250|    !
  1253|  1251|   !
  1254|  1252|   bridge-domain
  1255|  1253|    dot1q 935
  1256|  1254|    bridge-mtu 9000
  1257|  1255|    access-interface gigabit-ethernet-1/1/5
  1258|  1256|    !
  1259|  1257|   !
  1260|  1258|  !
  1261|  1259|  vpn VSI_944_POP21_POP25_TR_PREF_SAP
  1262|  1260|   vfi
  1263|  1261|    pw-type ethernet
  1264|  1262|    neighbor 10.244.188.21
  1265|  1263|     pw-id 944
  1266|  1264|    !
  1267|  1265|   !
  1268|  1266|   bridge-domain
  1269|  1267|    dot1q 944
  1270|  1268|    bridge-mtu 9000
  1271|  1269|    access-interface gigabit-ethernet-1/1/5
  1272|  1270|    !
  1273|  1271|   !
  1274|  1272|  !
  1275|  1273|  vpn VSI_951_POP21_POP25_TR_PREF_SAP
  1276|  1274|   vfi
  1277|  1275|    pw-type ethernet
  1278|  1276|    neighbor 10.244.188.21
  1279|  1277|     pw-id 951
  1280|  1278|    !
  1281|  1279|   !
  1282|  1280|   bridge-domain
  1283|  1281|    dot1q 951
  1284|  1282|    bridge-mtu 9000
  1285|  1283|    access-interface gigabit-ethernet-1/1/5
  1286|  1284|    !
  1287|  1285|   !
  1288|  1286|  !
  1289|  1287|  vpn VSI_955_POP21_POP25_TR_PREF_SAP
  1290|  1288|   vfi
  1291|  1289|    pw-type ethernet
  1292|  1290|    neighbor 10.244.188.21
  1293|  1291|     pw-id 955
  1294|  1292|    !
  1295|  1293|   !
  1296|  1294|   bridge-domain
  1297|  1295|    dot1q 955
  1298|  1296|    bridge-mtu 9000
  1299|  1297|    access-interface gigabit-ethernet-1/1/5
  1300|  1298|    !
  1301|  1299|   !
  1302|  1300|  !
  1303|  1301|  vpn VSI_961_POP21_POP25_TR_PREF_SAP
  1304|  1302|   vfi
  1305|  1303|    pw-type ethernet
  1306|  1304|    neighbor 10.244.188.21
  1307|  1305|     pw-id 961
  1308|  1306|    !
  1309|  1307|   !
  1310|  1308|   bridge-domain
  1311|  1309|    dot1q 961
  1312|  1310|    bridge-mtu 9000
  1313|  1311|    access-interface gigabit-ethernet-1/1/5
  1314|  1312|    !
  1315|  1313|   !
  1316|  1314|  !
  1317|  1315|  vpn VSI_964_POP21_POP25_TR_PREF_SAP
  1318|  1316|   vfi
  1319|  1317|    pw-type ethernet
  1320|  1318|    neighbor 10.244.188.21
  1321|  1319|     pw-id 964
  1322|  1320|    !
  1323|  1321|   !
  1324|  1322|   bridge-domain
  1325|  1323|    dot1q 964
  1326|  1324|    bridge-mtu 9000
  1327|  1325|    access-interface gigabit-ethernet-1/1/5
  1328|  1326|    !
  1329|  1327|   !
  1330|  1328|  !
  1331|  1329|  vpn VSI_967_POP21_POP25_TR_PREF_SAP
  1332|  1330|   vfi
  1333|  1331|    pw-type ethernet
  1334|  1332|    neighbor 10.244.188.21
  1335|  1333|     pw-id 967
  1336|  1334|    !
  1337|  1335|   !
  1338|  1336|   bridge-domain
  1339|  1337|    dot1q 967
  1340|  1338|    bridge-mtu 9000
  1341|  1339|    access-interface gigabit-ethernet-1/1/5
  1342|  1340|    !
  1343|  1341|   !
  1344|  1342|  !
  1345|  1343|  vpn VSI_971_POP21_POP25_TR_PREF_SAP
  1346|  1344|   vfi
  1347|  1345|    pw-type ethernet
  1348|  1346|    neighbor 10.244.188.21
  1349|  1347|     pw-id 971
  1350|  1348|    !
  1351|  1349|   !
  1352|  1350|   bridge-domain
  1353|  1351|    dot1q 971
  1354|  1352|    bridge-mtu 9000
  1355|  1353|    access-interface gigabit-ethernet-1/1/5
  1356|  1354|    !
  1357|  1355|   !
  1358|  1356|  !
  1359|  1357|  vpn VSI_976_POP21_POP25_TR_PREF_SAP
  1360|  1358|   vfi
  1361|  1359|    pw-type ethernet
  1362|  1360|    neighbor 10.244.188.21
  1363|  1361|     pw-id 976
  1364|  1362|    !
  1365|  1363|   !
  1366|  1364|   bridge-domain
  1367|  1365|    dot1q 976
  1368|  1366|    bridge-mtu 9000
  1369|  1367|    access-interface gigabit-ethernet-1/1/5
  1370|  1368|    !
  1371|  1369|   !
  1372|  1370|  !
  1373|  1371|  vpn VSI_978_POP21_POP25_TR_PREF_SAP
  1374|  1372|   vfi
  1375|  1373|    pw-type ethernet
  1376|  1374|    neighbor 10.244.188.21
  1377|  1375|     pw-id 978
  1378|  1376|    !
  1379|  1377|   !
  1380|  1378|   bridge-domain
  1381|  1379|    dot1q 978
  1382|  1380|    bridge-mtu 9000
  1383|  1381|    access-interface gigabit-ethernet-1/1/5
  1384|  1382|    !
  1385|  1383|   !
  1386|  1384|  !
  1387|  1385|  vpn VSI_979_POP21_POP25_TR_PREF_SAP
  1388|  1386|   vfi
  1389|  1387|    pw-type ethernet
  1390|  1388|    neighbor 10.244.188.21
  1391|  1389|     pw-id 979
  1392|  1390|    !
  1393|  1391|   !
  1394|  1392|   bridge-domain
  1395|  1393|    dot1q 979
  1396|  1394|    bridge-mtu 9000
  1397|  1395|    access-interface gigabit-ethernet-1/1/5
  1398|  1396|    !
  1399|  1397|   !
  1400|  1398|  !
  1401|  1399|  vpn VSI_981_POP21_POP25_TR_PREF_SAP
  1402|  1400|   vfi
  1403|  1401|    pw-type ethernet
  1404|  1402|    neighbor 10.244.188.21
  1405|  1403|     pw-id 981
  1406|  1404|    !
  1407|  1405|   !
  1408|  1406|   bridge-domain
  1409|  1407|    dot1q 981
  1410|  1408|    bridge-mtu 9000
  1411|  1409|    access-interface gigabit-ethernet-1/1/5
  1412|  1410|    !
  1413|  1411|   !
  1414|  1412|  !
  1415|  1413|  vpn VSI_987_POP21_POP25_TR_PREF_SAP
  1416|  1414|   vfi
  1417|  1415|    pw-type ethernet
  1418|  1416|    neighbor 10.244.188.21
  1419|  1417|     pw-id 987
  1420|  1418|    !
  1421|  1419|   !
  1422|  1420|   bridge-domain
  1423|  1421|    dot1q 987
  1424|  1422|    bridge-mtu 9000
  1425|  1423|    access-interface gigabit-ethernet-1/1/5
  1426|  1424|    !
  1427|  1425|   !
  1428|  1426|  !
  1429|  1427|  vpn VSI_988_POP21_POP25_TR_PREF_SAP
  1430|  1428|   vfi
  1431|  1429|    pw-type ethernet
  1432|  1430|    neighbor 10.244.188.21
  1433|  1431|     pw-id 988
  1434|  1432|    !
  1435|  1433|   !
  1436|  1434|   bridge-domain
  1437|  1435|    dot1q 988
  1438|  1436|    bridge-mtu 9000
  1439|  1437|    access-interface gigabit-ethernet-1/1/5
  1440|  1438|    !
  1441|  1439|   !
  1442|  1440|  !
  1443|  1441|  vpn VSI_989_POP21_POP25_TR_PREF_SAP
  1444|  1442|   vfi
  1445|  1443|    pw-type ethernet
  1446|  1444|    neighbor 10.244.188.21
  1447|  1445|     pw-id 989
  1448|  1446|    !
  1449|  1447|   !
  1450|  1448|   bridge-domain
  1451|  1449|    dot1q 989
  1452|  1450|    bridge-mtu 9000
  1453|  1451|    access-interface gigabit-ethernet-1/1/5
  1454|  1452|    !
  1455|  1453|   !
  1456|  1454|  !
  1457|  1455|  vpn VSI_991_POP21_POP25_TR_PREF_SAP
  1458|  1456|   vfi
  1459|  1457|    pw-type ethernet
  1460|  1458|    neighbor 10.244.188.21
  1461|  1459|     pw-id 991
  1462|  1460|    !
  1463|  1461|   !
  1464|  1462|   bridge-domain
  1465|  1463|    dot1q 991
  1466|  1464|    bridge-mtu 9000
  1467|  1465|    access-interface gigabit-ethernet-1/1/5
  1468|  1466|    !
  1469|  1467|   !
  1470|  1468|  !
  1471|  1469|  vpn VSI_992_POP21_POP25_TR_PREF_SAP
  1472|  1470|   vfi
  1473|  1471|    pw-type ethernet
  1474|  1472|    neighbor 10.244.188.21
  1475|  1473|     pw-id 992
  1476|  1474|    !
  1477|  1475|   !
  1478|  1476|   bridge-domain
  1479|  1477|    dot1q 992
  1480|  1478|    bridge-mtu 9000
  1481|  1479|    access-interface gigabit-ethernet-1/1/5
  1482|  1480|    !
  1483|  1481|   !
  1484|  1482|  !
  1485|  1483|  vpn VSI_994_POP21_POP25_TR_PREF_SAP
  1486|  1484|   vfi
  1487|  1485|    pw-type ethernet
  1488|  1486|    neighbor 10.244.188.21
  1489|  1487|     pw-id 994
  1490|  1488|    !
  1491|  1489|   !
  1492|  1490|   bridge-domain
  1493|  1491|    dot1q 994
  1494|  1492|    bridge-mtu 9000
  1495|  1493|    access-interface gigabit-ethernet-1/1/5
  1496|  1494|    !
  1497|  1495|   !
  1498|  1496|  !
  1499|  1497|  vpn VSI_999_POP21_POP25_TR_PREF_SAP
  1500|  1498|   vfi
  1501|  1499|    pw-type ethernet
  1502|  1500|    neighbor 10.244.188.21
  1503|  1501|     pw-id 999
  1504|  1502|    !
  1505|  1503|   !
  1506|  1504|   bridge-domain
  1507|  1505|    dot1q 999
  1508|  1506|    bridge-mtu 9000
  1509|  1507|    access-interface gigabit-ethernet-1/1/5
  1510|  1508|    !
  1511|  1509|   !
  1512|  1510|  !
  1513|  1511| !
  1514|  1512| vpls-group POPPOP25_POWERNET_POP00
  1515|  1513| !
  1516|  1514|!
  1517|  1515|snmp system location -29.881604,-51.086573
  1518|  1516|snmp traps config-commit
  1519|  1517|snmp traps cpu-core
  1520|  1518|snmp traps cpu-load
  1521|  1519|snmp traps link-status
  1522|  1520|snmp traps login-success
  1523|  1521|snmp agent enabled
  1524|  1522|snmp agent version v2c
  1525|  1523|snmp agent version v3
  1526|  1524|snmp community CyberWeb
  1527|  1525| sec-name CyberWeb
  1528|  1526|!
  1529|  1527|snmp community public
  1530|  1528| sec-name public
  1531|  1529|!
  1532|  1530|snmp notify std_v1_trap
  1533|  1531| tag std_v1_trap
  1534|  1532|!
  1535|  1533|snmp notify std_v2_inform
  1536|  1534| tag std_v2_inform
  1537|  1535| type inform
  1538|  1536|!
  1539|  1537|snmp notify std_v2_trap
  1540|  1538| tag std_v2_trap
  1541|  1539|!
  1542|  1540|snmp notify std_v3_inform
  1543|  1541| tag std_v3_inform
  1544|  1542| type inform
  1545|  1543|!
  1546|  1544|snmp notify std_v3_trap
  1547|  1545| tag std_v3_trap
  1548|  1546|!
  1549|  1547|snmp vacm group CyberWeb
  1550|  1548| member CyberWeb
  1551|  1549|  sec-model [ v2c ]
  1552|  1550| !
  1553|  1551| access "" v2c no-auth-no-priv
  1554|  1552|  read-view root
  1555|  1553|  notify-view root
  1556|  1554| !
  1557|  1555|!
  1558|  1556|snmp vacm group public
  1559|  1557| member public
  1560|  1558|  sec-model [ v2c ]
  1561|  1559| !
  1562|  1560| access "" v2c no-auth-no-priv
  1563|  1561|  read-view root
  1564|  1562|  write-view root
  1565|  1563|  notify-view root
  1566|  1564| !
  1567|  1565|!
  1568|  1566|snmp vacm view root
  1569|  1567| subtree 1.3
  1570|  1568|  included
  1571|  1569| !
  1572|  1570|!
  1573|  1571|interface gigabit-ethernet 1/1/1
  1574|  1572| description PTP_SW1POP25_P01_OLT1POP25_MGNT
  1575|  1573| no shutdown
  1576|  1574| negotiation
  1577|  1575| duplex full
  1578|  1576| speed 100M
  1579|  1577| advertising-abilities 10Mfull 100Mfull 1Gfull
  1580|  1578| mdix normal
  1581|  1579| mtu 12266
  1582|  1580|!
  1583|  1581|interface gigabit-ethernet 1/1/2
  1584|  1582| no shutdown
  1585|  1583| negotiation
  1586|  1584| duplex full
  1587|  1585| speed 100M
  1588|  1586| advertising-abilities 10Mfull 100Mfull 1Gfull
  1589|  1587| mdix auto
  1590|  1588| mtu 12266
  1591|  1589|!
  1592|  1590|interface gigabit-ethernet 1/1/3
  1593|  1591| description LOOPING_DGT_PORTA4
  1594|  1592| no shutdown
  1595|  1593| negotiation
  1596|  1594| duplex full
  1597|  1595| speed 100M
  1598|  1596| advertising-abilities 10Mfull 100Mfull 1Gfull
  1599|  1597| mdix normal
  1600|  1598| mtu 12266
  1601|  1599|!
  1602|  1600|interface gigabit-ethernet 1/1/4
  1603|  1601| description LOOPING_DGT_PORTA3
  1604|  1602| no shutdown
  1605|  1603| negotiation
  1606|  1604| duplex full
  1607|  1605| speed 100M
  1608|  1606| advertising-abilities 10Mfull 100Mfull 1Gfull
  1609|  1607| mdix auto
  1610|  1608| mtu 12266
  1611|  1609|!
  1612|  1610|interface gigabit-ethernet 1/1/5
  1613|  1611| description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
  1614|  1612| no shutdown
  1615|  1613| negotiation
  1616|  1614| duplex full
  1617|  1615| speed 1G
  1618|  1616| advertising-abilities 10Mfull 100Mfull 1Gfull
  1619|  1617| mdix normal
  1620|  1618| mtu 12266
  1621|  1619|!
  1622|  1620|interface gigabit-ethernet 1/1/6
  1623|  1621| description PTP_SW1POP25_P06__OLT1_P05
  1624|  1622| no shutdown
  1625|  1623| negotiation
  1626|  1624| duplex full
  1627|  1625| speed 1G
  1628|  1626| advertising-abilities 10Mfull 100Mfull 1Gfull
  1629|  1627| mdix normal
  1630|  1628| mtu 12266
  1631|  1629|!
  1632|  1630|interface gigabit-ethernet 1/1/7
  1633|  1631| description PTP_SW1POP25_P07_CE25_SFP-SFPPLUS1
  1634|  1632| shutdown
  1635|  1633| no negotiation
  1636|  1634| duplex full
  1637|  1635| speed 1G
  1638|  1636| advertising-abilities 10Mfull 100Mfull 1Gfull
  1639|  1637| mdix normal
  1640|  1638| mtu 12266
  1641|  1639|!
  1642|  1640|interface gigabit-ethernet 1/1/8
  1643|  1641| no shutdown
  1644|  1642| negotiation
  1645|  1643| duplex full
  1646|  1644| speed 1G
  1647|  1645| advertising-abilities 10Mfull 100Mfull 1Gfull
  1648|  1646| mdix normal
  1649|  1647| mtu 12266
  1650|  1648|!
  1651|  1649|interface ten-gigabit-ethernet 1/1/1
  1652|  1650| description PTP_SW1POP25_PX01_OLT1POP25_PX01
  1653|  1651| no shutdown
  1654|  1652| no negotiation
  1655|  1653| duplex full
  1656|  1654| speed 10G
  1657|  1655| advertising-abilities 10Mfull 100Mfull 1Gfull
  1658|  1656| mdix normal
  1659|  1657| mtu 12266
  1660|  1658|!
  1661|  1659|interface ten-gigabit-ethernet 1/1/2
  1662|  1660| description PTP_SW1POP25_PX02_SW1POP15_PX02
  1663|  1661| no shutdown
  1664|  1662| no negotiation
  1665|  1663| duplex full
  1666|  1664| speed 10G
  1667|  1665| advertising-abilities 10Mfull 100Mfull 1Gfull
  1668|  1666| mdix normal
  1669|  1667| mtu 12266
  1670|  1668|!
  1671|  1669|interface ten-gigabit-ethernet 1/1/3
  1672|  1670| description PTP_SW1POP25_PX03_CE25_POWER_PX3_OLT2
  1673|  1671| no shutdown
  1674|  1672| no negotiation
  1675|  1673| duplex full
  1676|  1674| speed 10G
  1677|  1675| advertising-abilities 10Mfull 100Mfull 1Gfull
  1678|  1676| mdix normal
  1679|  1677| mtu 12266
  1680|  1678|!
  1681|  1679|interface ten-gigabit-ethernet 1/1/4
  1682|  1680| description PTP_SW1POP25_PX04_SW1POP21_PX03
  1683|  1681| no shutdown
  1684|  1682| no negotiation
  1685|  1683| duplex full
  1686|  1684| speed 10G
  1687|  1685| advertising-abilities 10Mfull 100Mfull 1Gfull
  1688|  1686| mdix normal
  1689|  1687| mtu 12266
  1690|  1688|!
  1691|  1689|interface l3 L3_VLAN1125_MPLS1
  1692|  1690| lower-layer-if vlan 1125
  1693|  1691| ipv4 address 10.244.125.2/30
  1694|  1692|!
  1695|  1693|interface l3 L3_VLAN1225_MPLS1
  1696|  1694| lower-layer-if vlan 1225
  1697|  1695| ipv4 address 10.244.125.6/30
  1698|  1696|!
  1699|  1697|interface mgmt 1/1/1
  1700|  1698| ipv4 address 192.168.0.25/24
  1701|  1699|!
  1702|  1700|interface loopback 0
  1703|  1701| ipv4 address 10.244.188.125/32
  1704|  1702|!
  1705|  1703|interface loopback 1
  1706|  1704| ipv4 address 10.244.188.25/32
  1707|  1705|!
  1708|  1706|clock timezone BRA -3
  1709|  1707|hostname SW1POP25_POWER
  1710|  1708|telnet-server enabled
  1711|  1709|telnet-server max-connections 2
  1712|  1710|loopback-detection
  1713|  1711| destination-address alternative
  1714|  1712|!
  1715|  1713|mac-address-table
  1716|  1714| aging-time 600
  1717|  1715|!
  1718|  1716|layer2-control-protocol
  1719|  1717| tunnel-mac datacom
  1720|  1718| tunnel-priority 7
  1721|  1719|!
  1722|  1720|sntp client
  1723|  1721|sntp server 200.160.0.8
  1724|  1722|vrf global
  1725|  1723|!
  1726|  1724|vrf mgmt
  1727|  1725|!
  1728|  1726|router ospf 1 vrf global
  1729|  1727| router-id 10.244.188.125
  1730|  1728| redistribute static
  1731|  1729| !
  1732|  1730| area 0.0.0.0
  1733|  1731|  interface l3-L3_VLAN1125_MPLS1
  1734|  1732|   cost 10
  1735|  1733|   bfd
  1736|  1734|    session-type desired
  1737|  1735|   !
  1738|  1736|   network-type point-to-point
  1739|  1737|  !
  1740|  1738|  interface l3-L3_VLAN1225_MPLS1
  1741|  1739|   cost 10
  1742|  1740|   bfd
  1743|  1741|    session-type desired
  1744|  1742|   !
  1745|  1743|   network-type point-to-point
  1746|  1744|  !
  1747|  1745|  interface loopback-0
  1748|  1746|  !
  1749|  1747|  interface loopback-1
  1750|  1748|  !
  1751|  1749| !
  1752|  1750|!
  1753|  1751|dot1q
  1754|  1752| vlan 40-41
  1755|  1753|  interface ten-gigabit-ethernet-1/1/1
  1756|  1754|  !
  1757|  1755|  interface ten-gigabit-ethernet-1/1/3
  1758|  1756|  !
  1759|  1757| !
  1760|  1758| vlan 250
  1761|  1759|  interface gigabit-ethernet-1/1/8
  1762|  1760|  !
  1763|  1761| !
  1764|  1762| vlan 252
  1765|  1763|  interface gigabit-ethernet-1/1/7
  1766|  1764|  !
  1767|  1765|  interface gigabit-ethernet-1/1/8
  1768|  1766|  !
  1769|  1767|  interface ten-gigabit-ethernet-1/1/1
  1770|  1768|  !
  1771|  1769|  interface ten-gigabit-ethernet-1/1/3
  1772|  1770|  !
  1773|  1771| !
  1774|  1772| vlan 1125
  1775|  1773|  name VLAN_1125_SW1POP21_SW1POP25_MPLS
  1776|  1774|  interface ten-gigabit-ethernet-1/1/4
  1777|  1775|  !
  1778|  1776| !
  1779|  1777| vlan 1225
  1780|  1778|  name VLAN_1225_SW1POP25_SW1POP15_MPLS
  1781|  1779|  interface ten-gigabit-ethernet-1/1/2
  1782|  1780|  !
  1783|  1781| !
  1784|  1782|!
  1785|  1783|license mpls enabled
  1786|  1784|license mpls key ***
  1787|  1785|SW1POP25_POWER(config)#
  1788|  1786|SW1POP25_POWER(config)# quit
  1789|  1787|------------------------^
  1790|  1788|syntax error: unknown command
  1791|  1789|SW1POP25_POWER(config)# exit
  1792|  1790|SW1POP25_POWER# show interface gigabit-ethernet 0/0/1
  1793|  1791|-------------------------------^
  1794|  1792|syntax error: expecting
  1795|  1793|  description - Description of interfaces
  1796|  1794|  link        - Overview of interface status
  1797|  1795|SW1POP25_POWER# show interface ?
  1798|  1796|Possible completions:
  1799|  1797|  description            Description of interfaces
  1800|  1798|  gigabit-ethernet       Display information of gigabit-ethernet interfaces
  1801|  1799|  link                   Overview of interface status
  1802|  1800|  ten-gigabit-ethernet   Display information of ten-gigabit-ethernet interfaces
  1803|  1801|  utilization            Interface utilization statistics
  1804|  1802|  |                      Output modifiers
  1805|  1803|  ---
  1806|  1804|  transceivers  <cr>
  1807|  1805|SW1POP25_POWER# show interface gigabit-ethernet ?
  1808|  1806|Possible completions:
  1809|  1807|  1/1/1   PTP_SW1POP25_P01_...
  1810|  1808|  1/1/3   LOOPING_DGT_PORTA4
  1811|  1809|  1/1/4   LOOPING_DGT_PORTA3
  1812|  1810|  1/1/5   PTP_SW1POP25_P05_...
  1813|  1811|  1/1/6   PTP_SW1POP25_P06_...
  1814|  1812|  1/1/7   PTP_SW1POP25_P07_...
  1815|  1813|  |       Output modifiers
  1816|  1814|  ---
  1817|  1815|  1/1/2  1/1/8  <cr>
  1818|  1816|SW1POP25_POWER# show interface gigabit-ethernet 1/1/1
  1819|  1817|interface gigabit-ethernet 1/1/1
  1820|  1818| Configuration:
  1821|  1819| --------------
  1822|  1820|  Port admin             : Enabled
  1823|  1821|  Negotiation            : Enabled
  1824|  1822|  Advertising Abilities  : [ 10Mfull 100Mfull 1Gfull ]
  1825|  1823|  MDIX                   : normal
  1826|  1824|  MTU                    : 12266
  1827|  1825|  Description            : PTP_SW1POP25_P01_OLT1POP25_MGNT
  1828|  1826|
  1829|  1827| Status:
  1830|  1828| -------
  1831|  1829|  Link Status            : Up
  1832|  1830|  Speed/Duplex           : 100Mfull
  1833|  1831|  Flow Control           : Disabled
  1834|  1832|  MDIX                   : Normal
  1835|  1833|
  1836|  1834|SW1POP25_POWER# dot1q
  1837|  1835|----------------^
  1838|  1836|syntax error: expecting
  1839|  1837|  autowizard           - Automatically query for mandatory elements
  1840|  1838|  clear                - Clear parameter
  1841|  1839|  commit               - Confirm a pending commit
  1842|  1840|  compare              - Compare running configuration to another configuration or a file
  1843|  1841|  complete-on-space    - Enable/disable completion on space
  1844|  1842|  config               - Manipulate software configuration information
  1845|  1843|  display-defaults     - Show default values when showing the configuration
  1846|  1844|  display-level        - Configure show command display level
  1847|  1845|  exit                 - Exit the management session
  1848|  1846|  file                 - Perform file operations
  1849|  1847|  help                 - Provide help information
  1850|  1848|  history              - Configure history size
  1851|  1849|  id                   - Show user id information
  1852|  1850|  idle-timeout         - Configure idle timeout
  1853|  1851|  ignore-leading-space - Ignore leading whitespace (true/false)
  1854|  1852|  leaf-prompting       - Automatically query for leaf values
  1855|  1853|  logout               - Logout a user
  1856|  1854|  no                   - Negate a command or set its defaults
  1857|  1855|  paginate             - Paginate output from CLI commands
  1858|  1856|  ping                 - Send ICMP packets to another device to check the network reliability
  1859|  1857|  ping6                - Send ICMPv6 packets to another device to check the network reliability
  1860|  1858|  quit                 - Exit the management session
  1861|  1859|  screen-resize        - Configure screen size
  1862|  1860|  send                 - Send message to terminal of one or all users
  1863|  1861|  set                  - Configure settings that may be changed by the system
  1864|  1862|  show                 - Show information about the system
  1865|  1863|  source               - File to source
  1866|  1864|  ssh                  - Open a secure shell on another host
  1867|  1865|  tcpdump              - Call tcpdump
  1868|  1866|  telnet               - Open a telnet session to another host
  1869|  1867|  terminal             - Set terminal type
  1870|  1868|  timestamp            - Enable/disable the display of timestamp
  1871|  1869|  traceroute           - Send IPv4 packets to another device for displaying all the hops to reach the destination
  1872|  1870|  traceroute6          - Send IPv6 packets to another device for displaying all the hops to reach the destination
  1873|  1871|  uptime               - Shows the system uptime
  1874|  1872|  who                  - Display currently logged on users
  1875|  1873|SW1POP25_POWER# conf
  1876|  1874|Entering configuration mode terminal
  1877|  1875|SW1POP25_POWER(config)# dot1q
  1878|  1876|SW1POP25_POWER(config-dot1q)#  vlan 250
  1879|  1877|SW1POP25_POWER(config-vlan-250)# interface gigabit-ethernet-1/1/1
  1880|  1878|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# !
  1881|  1879|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# comm
  1882|  1880|The dot1q settings may take a while to be completed.
  1883|  1881|Aborted: 'mpls l2vpn': vlan 250 interface gigabit-ethernet-1/1/1 is already assigned to mpls l2vpn vpls-group POP25_POWERNET_POP00 vpn VSI_250_CY_POP0-2_POP25_PO_MGNT with the same dot1q. It must be configured to another dot1q vlan
  1884|  1882|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# VSI_250_CY_POP0-2_POP25_PO_MGNT
  1885|  1883|Uncommitted changes found, commit them? [yes/no/CANCEL]
  1886|  1884|Aborted: by user
  1887|  1885|SW1POP25_POWER(config-dot1q-interface-gigabit-ethernet-1/1/1)# top
  1888|  1886|SW1POP25_POWER(config)# displ
  1889|  1887|                        ^
  1890|  1888|% Invalid input detected at '^' marker.
  1891|  1889|SW1POP25_POWER(config)# show interface gigabit-ethernet 1/1/5
  1892|  1890|interface gigabit-ethernet 1/1/5
  1893|  1891| description PTP_SW1POP25_P05_OLT1POP25_P05_CYBER
  1894|  1892| no shutdown
  1895|  1893| negotiation
  1896|  1894| duplex full
  1897|  1895| speed 1G
  1898|  1896| advertising-abilities 10Mfull 100Mfull 1Gfull
  1899|  1897| mdix normal
  1900|  1898| mtu 12266
  1901|  1899|!
  1902|  1900|SW1POP25_POWER(config)#
  1903|  1901|```
  1904|  1902|
```

## 🗒️ Observações
- {{notes}}
