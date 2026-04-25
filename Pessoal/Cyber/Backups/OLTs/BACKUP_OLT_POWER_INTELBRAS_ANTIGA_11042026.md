[[OLT_POWER]]

     1|```yaml
     2|
     3|Starting configuration dump ...
     4|=========================================
     5|
     6|session timeout 60
     7|session command-wait on
     8|
     9|onu set gpon 1 onu 1 serial-number FHTT07D9FB08 meprof intelbras-default
    10|onu set gpon 1 onu 2 serial-number FHTT2D2A7888 meprof intelbras-default
    11|onu set gpon 1 onu 3 serial-number FHTT2393C54F meprof intelbras-default
    12|onu set gpon 1 onu 7 serial-number ITBS2CCFE60B meprof intelbras-default
    13|onu set gpon 1 onu 8 serial-number ZNTS2C173B50 meprof intelbras-default
    14|onu set gpon 1 onu 10 serial-number ITBS2C70F60B meprof intelbras-default
    15|onu set gpon 1 onu 11 serial-number ZNTS2CBEE267 meprof intelbras-default
    16|onu set gpon 1 onu 12 serial-number ITBS2C9F71DA meprof intelbras-default
    17|onu set gpon 1 onu 13 serial-number ITBS8B68480D meprof intelbras-default
    18|onu set gpon 1 onu 14 serial-number ITBS5B0E7202 meprof intelbras-default
    19|onu set gpon 1 onu 15 serial-number ITBS44A0FBB5 meprof intelbras-default
    20|onu set gpon 2 onu 1 serial-number HWTCC126199D meprof intelbras-default
    21|onu set gpon 2 onu 2 serial-number ITBSE8F801B0 meprof intelbras-default
    22|onu set gpon 2 onu 3 serial-number ITBS441CB6F7 meprof intelbras-default
    23|onu set gpon 2 onu 4 serial-number ITBS8BA5ACAD meprof intelbras-default
    24|onu set gpon 2 onu 5 serial-number TKTHE600D378 meprof intelbras-default
    25|onu set gpon 2 onu 7 serial-number ITBS0A84F522 meprof intelbras-1200r
    26|onu set gpon 2 onu 8 serial-number ITBSE8F80179 meprof intelbras-default
    27|onu set gpon 2 onu 9 serial-number ITBS44A108D9 meprof intelbras-r1
    28|onu set gpon 2 onu 10 serial-number ITBS0D65E16C meprof intelbras-default
    29|onu set gpon 2 onu 11 serial-number ITBS8B6A4EEF meprof intelbras-default
    30|onu set gpon 2 onu 12 serial-number ITBSE8FEE011 meprof intelbras-default
    31|onu set gpon 2 onu 13 serial-number ZNTS2C173710 meprof intelbras-default
    32|onu set gpon 2 onu 14 serial-number ITBS443891EE meprof intelbras-default
    33|onu set gpon 2 onu 15 serial-number ITBS5F554F69 meprof intelbras-default
    34|onu set gpon 2 onu 16 serial-number ITBS0D54AE2C meprof intelbras-default
    35|onu set gpon 2 onu 17 serial-number FSTTB81CF0E8 meprof intelbras-default
    36|onu set gpon 3 onu 1 serial-number ITBS325766FB meprof intelbras-110g
    37|onu set gpon 3 onu 2 serial-number ITBS0A6E43CA meprof intelbras-default
    38|onu set gpon 3 onu 3 serial-number ZNTS2CD282A3 meprof intelbras-default
    39|onu set gpon 3 onu 4 serial-number ITBS8BA5974B meprof intelbras-default
    40|onu set gpon 3 onu 5 serial-number ITBS5B0E71EC meprof intelbras-default
    41|onu set gpon 3 onu 6 serial-number ITBS0D7BFCBC meprof intelbras-default
    42|onu set gpon 3 onu 7 serial-number ITBS443DCCF7 meprof intelbras-default
    43|onu set gpon 3 onu 8 serial-number ITBS5B0E719A meprof intelbras-default
    44|onu set gpon 3 onu 9 serial-number ITBS441CB667 meprof intelbras-default
    45|onu set gpon 3 onu 10 serial-number RCMG3B9803F1 meprof intelbras-default
    46|onu set gpon 3 onu 11 serial-number ITBS5B0E7257 meprof intelbras-default
    47|onu set gpon 3 onu 12 serial-number ZNTS2C1659EC meprof intelbras-default
    48|onu set gpon 3 onu 13 serial-number ITBS0A6C8D0C meprof intelbras-default
    49|onu set gpon 3 onu 14 serial-number ITBS44A0FB93 meprof intelbras-default
    50|onu set gpon 3 onu 16 serial-number ITBSF1620E9E meprof intelbras-default
    51|onu set gpon 4 onu 1 serial-number ITBS0D7BFD0A meprof intelbras-default
    52|onu set gpon 4 onu 2 serial-number FHTT9143FBA8 meprof intelbras-default
    53|onu set gpon 4 onu 3 serial-number FHTT10527698 meprof intelbras-default
    54|onu set gpon 4 onu 4 serial-number ITBS8BAC2964 meprof intelbras-default
    55|onu set gpon 4 onu 5 serial-number ITBS44973C96 meprof intelbras-default
    56|onu set gpon 4 onu 6 serial-number ITBS32B40E06 meprof intelbras-121ac
    57|onu set gpon 4 onu 7 serial-number ITBS0A84F54F meprof intelbras-1200r
    58|onu set gpon 4 onu 10 serial-number ZNTS2C0F7814 meprof intelbras-default
    59|onu set gpon 4 onu 11 serial-number ITBS8B6C21CB meprof intelbras-default
    60|onu set gpon 4 onu 12 serial-number ITBS0D2296F4 meprof intelbras-default
    61|onu set gpon 4 onu 13 serial-number ZNTS2C54B7A7 meprof intelbras-default
    62|onu set gpon 4 onu 15 serial-number ITBSAC4D0CA4 meprof intelbras-default
    63|onu set gpon 4 onu 16 serial-number ZNTS3F81F6A3 meprof intelbras-default
    64|onu set gpon 4 onu 17 serial-number ITBSE8F8D827 meprof intelbras-default
    65|onu set gpon 5 onu 1 serial-number ZNTS2CC1B893 meprof intelbras-default
    66|onu set gpon 5 onu 2 serial-number FSTT000066D3 meprof intelbras-default
    67|onu set gpon 5 onu 3 serial-number ITBS5F79CA89 meprof intelbras-default
    68|onu set gpon 5 onu 4 serial-number ITBS441CB5FF meprof intelbras-default
    69|onu set gpon 5 onu 5 serial-number FSTTB81CF722 meprof intelbras-default
    70|onu set gpon 5 onu 7 serial-number ITBS44A0FB5D meprof intelbras-default
    71|onu set gpon 5 onu 8 serial-number ITBS2C863ED7 meprof intelbras-default
    72|onu set gpon 5 onu 9 serial-number ITBS326A53B0 meprof intelbras-default
    73|onu set gpon 5 onu 10 serial-number ITBS0A6E7038 meprof intelbras-r1
    74|onu set gpon 7 onu 1 serial-number ITBS44389018 meprof intelbras-default
    75|onu set gpon 7 onu 2 serial-number ITBS0A6E45DA meprof intelbras-default
    76|onu set gpon 7 onu 3 serial-number FSTT0000E92F meprof intelbras-default
    77|onu set gpon 7 onu 4 serial-number FSTTB81D0059 meprof intelbras-default
    78|onu set gpon 8 onu 1 serial-number ITBSE8F6E6A2 meprof intelbras-default
    79|onu set gpon 8 onu 2 serial-number FSTTB81D061D meprof intelbras-default
    80|onu set gpon 8 onu 3 serial-number ITBS8BF23F33 meprof intelbras-default
    81|onu set gpon 8 onu 4 serial-number ITBS0A6E722C meprof intelbras-default
    82|onu set gpon 8 onu 5 serial-number FSTTB81CEBBD meprof intelbras-default
    83|onu set gpon 8 onu 6 serial-number ITBS0D4DB9CD meprof intelbras-default
    84|onu set gpon 8 onu 7 serial-number ZNTS2C20155D meprof intelbras-default
    85|onu set gpon 8 onu 8 serial-number ITBS2CCFE5FB meprof intelbras-default
    86|
    87|onu description add gpon 1 onu 1 text DGT_CAMERA_18_GM
    88|onu description add gpon 1 onu 2 text DGT_CAMERA_15_GM
    89|onu description add gpon 1 onu 3 text DGT_CAMERA_11_GM
    90|onu description add gpon 1 onu 7 text Prefeitura_ponto_temporario
    91|onu description add gpon 1 onu 8 text PREF_CENTRO_INTEGRADO_PROT_MULHER_VLAN_992                                                                                                             _CYBER
    92|onu description add gpon 1 onu 10 text PREF_Coordenadoria_da_mulher_VLAN_991
    93|onu description add gpon 1 onu 11 text PREF_BOMBEIROS_VLAN_989
    94|onu description add gpon 1 onu 12 text PREF_Ginasio_Kurashiki_VLAN_999
    95|onu description add gpon 1 onu 13 text PREF_Deposito_da_SMED_VLAN_987_CYBER
    96|onu description add gpon 1 onu 14 text PREF_URBT_VLAN_931
    97|onu description add gpon 1 onu 15 text PREF_Infectologiao_VLAN_930
    98|onu description add gpon 2 onu 2 text DGT_CAMERA_34_SSP_BM
    99|onu description add gpon 2 onu 3 text MEDIANET_HOSPITAL_1
   100|onu description add gpon 2 onu 4 text DGT_PONTO_16_CAMERA_GM
   101|onu description add gpon 2 onu 5 text CAMERA_DGT_C03
   102|onu description add gpon 2 onu 7 text POWERNET_FabianodaSilva
   103|onu description add gpon 2 onu 8 text BRASIL_SERVICOS_DE_TELECOMUNICACOES_LTDA
   104|onu description add gpon 2 onu 9 text MEDIANET_HOSPITAL_2
   105|onu description add gpon 2 onu 10 text PREF_Abrigo_Meu_Refugio_VLAN_981
   106|onu description add gpon 2 onu 11 text PREF_ESF_Silva_VLAN_902_CYBER
   107|onu description add gpon 2 onu 12 text PREF_HMGV_VLAN_935_CYBER
   108|onu description add gpon 2 onu 13 text PREF_Guarda_Municipal_VLAN_978
   109|onu description add gpon 2 onu 14 text PREF_Secretaria_Municipal_De_Obras_VLAN_9                                                                                                             79_CYBER
   110|onu description add gpon 2 onu 15 text PREF_Defesa_Civil_VLAN_988
   111|onu description add gpon 2 onu 16 text Parque_Mun_De_Eventos_Jayme_Caetano_VLAN_                                                                                                             994
   112|onu description add gpon 2 onu 17 text Vagner_Parahiba_da_Silveira
   113|onu description add gpon 3 onu 1 text DESCONHECIDO
   114|onu description add gpon 3 onu 2 text Moises_Gomes_dos_Santos
   115|onu description add gpon 3 onu 3 text PREF_CLISAM_VLAN_929
   116|onu description add gpon 3 onu 4 text Anne_Caroline_Bandeira_Rutkoski_3
   117|onu description add gpon 3 onu 5 text Maria_Luisa_Vicente_Ferreira
   118|onu description add gpon 3 onu 6 text Junior_Cezar_Rutkoski
   119|onu description add gpon 3 onu 7 text Anne_Caroline_Bandeira_Rutkoski
   120|onu description add gpon 3 onu 8 text Telealarme_5
   121|onu description add gpon 3 onu 9 text Tatiana_Fontoura_Bauer
   122|onu description add gpon 3 onu 10 text Leandro_da_Silveira_Gabriel
   123|onu description add gpon 3 onu 11 text Luciana_Aquino_Borges
   124|onu description add gpon 3 onu 12 text PREF_EMEI_MARA_MATTOS_VLAN_964_CYBER
   125|onu description add gpon 3 onu 13 text PREF_Secretaria_de_Mun_Esporte_e_Lazer_VL                                                                                                             AN_967
   126|onu description add gpon 3 onu 14 text PREF_ESF_Cohab_Casas_VLAN_918
   127|onu description add gpon 3 onu 16 text MIDIANET_FUNDACAO_DE_SAUDE_SAPUCAIA_DO_SU                                                                                                             L_VLAN_3540
   128|onu description add gpon 4 onu 1 text _DGT_GM_PONTO_XXX
   129|onu description add gpon 4 onu 2 text DGT_CAMERA_17_GM
   130|onu description add gpon 4 onu 3 text DGT_CAMERA_21_GM
   131|onu description add gpon 4 onu 4 text Liane_Lucas_Alves
   132|onu description add gpon 4 onu 5 text DGT_SAP_C04
   133|onu description add gpon 4 onu 10 text Bruno_Eduardo_Ribas_ponto_2
   134|onu description add gpon 4 onu 11 text PREF_UBS_COHAB_BLOCOS_VLAN_925_CYBER
   135|onu description add gpon 4 onu 12 text EMEF_Hugo_Gerdau_VLAN_944
   136|onu description add gpon 4 onu 13 text PREF_CRAS_Oeste_VLAN_976
   137|onu description add gpon 4 onu 15 text PREF_EMEF_Primo_Vacchi_VLAN_955_CYBER
   138|onu description add gpon 4 onu 16 text Iran_Leal_Gama
   139|onu description add gpon 4 onu 17 text Diego_Feiber_Rothmundtonu
   140|onu description add gpon 5 onu 1 text Ides_da_Silva_Oliveira
   141|onu description add gpon 5 onu 2 text Diego_Soares_de_Freitas
   142|onu description add gpon 5 onu 3 text William_Martins_da_Silva
   143|onu description add gpon 5 onu 4 text Adrieli_Anequini_Vicente
   144|onu description add gpon 5 onu 5 text Kathleen_Ester_da_Silva_da_Silveira
   145|onu description add gpon 5 onu 7 text PREF_ESF_FORTUNA_VLAN_904
   146|onu description add gpon 5 onu 8 text PREF_EMEF_Otaviano_Silveira_VLAN_951
   147|onu description add gpon 5 onu 9 text EMEI_Hugo_Gerdau_VLAN_961
   148|onu description add gpon 7 onu 1 text Clenio_Djacir_da_Silva
   149|onu description add gpon 7 onu 2 text Leticia_Antonio_Vigano
   150|onu description add gpon 7 onu 3 text Renan_Araujo_Bitello_1
   151|onu description add gpon 7 onu 4 text Renan_Araujo_Bitello_2
   152|onu description add gpon 8 onu 1 text PREF_ESF_Carioca_VLAN_903_CYBER
   153|onu description add gpon 8 onu 2 text Nefab_Embalagens_LTDA
   154|onu description add gpon 8 onu 3 text TELIUM_PONTO_07_TINTAS_KELLING
   155|onu description add gpon 8 onu 4 text RK_GESTAO_E_ASSESSORIA_TELEC_LTDA
   156|onu description add gpon 8 onu 5 text Michele_Mariano_Leal
   157|onu description add gpon 8 onu 6 text Oseas_Souza_da_Rosa
   158|onu description add gpon 8 onu 7 text Graciele_Pooch_dos_Santos
   159|onu description add gpon 8 onu 8 text Catiele_Carvalho_dos_Santos
   160|
   161|onu block disable gpon 1
   162|onu block disable gpon 2
   163|onu block disable gpon 3
   164|onu block disable gpon 4
   165|onu block disable gpon 5
   166|onu block disable gpon 6
   167|onu block disable gpon 7
   168|onu block disable gpon 8
   169|
   170|olt set mac-aging-time 3600
   171|
   172|port modify eth 5 storm-control broadcast 100 mbps
   173|port modify eth 5 storm-control multicast 400 mbps
   174|port modify eth 5 storm-control unknown-unicast 100 mbps
   175|port modify gpon 2 storm-control broadcast 125 mbps
   176|port modify gpon 2 storm-control multicast 500 mbps
   177|port modify gpon 2 storm-control unknown-unicast 125 mbps
   178|port modify gpon 3 storm-control broadcast 125 mbps
   179|port modify gpon 3 storm-control multicast 500 mbps
   180|port modify gpon 3 storm-control unknown-unicast 125 mbps
   181|port modify gpon 4 storm-control broadcast 125 mbps
   182|port modify gpon 4 storm-control multicast 500 mbps
   183|port modify gpon 4 storm-control unknown-unicast 125 mbps
   184|port modify gpon 5 storm-control broadcast 125 mbps
   185|port modify gpon 5 storm-control multicast 500 mbps
   186|port modify gpon 5 storm-control unknown-unicast 125 mbps
   187|port modify gpon 6 storm-control broadcast 125 mbps
   188|port modify gpon 6 storm-control multicast 500 mbps
   189|port modify gpon 6 storm-control unknown-unicast 125 mbps
   190|port modify gpon 8 storm-control broadcast 125 mbps
   191|port modify gpon 8 storm-control multicast 500 mbps
   192|port modify gpon 8 storm-control unknown-unicast 125 mbps
   193|port description add eth 7 text GM_CAMERA_TRANSP_VLAN_3102
   194|port description add gpon 6 text ESTEIO
   195|port description add eth 6 text LINK_OLT_P06_SW1POP25_P06_CYBER
   196|port description add eth 8 text LINK_OLT_P08_SW1POP25_P08_POWER
   197|port description add eth 5 text LINK_OLT_P05_SW1POP25_P05_CYBER
   198|
   199|gpon-traffic-profile add 12
   200|256
   201|0
   202|0
   203|12800
   204|nonassured
   205|
   206|gpon-traffic-profile add 10
   207|256
   208|0
   209|0
   210|409600
   211|nonassured
   212|
   213|
   214|cpe-mgr add local gpon 4 onu 7 gtp 2 gem 266
   215|cpe-mgr add local gpon 2 onu 7 gtp 2 gem 276
   216|
   217|rule add ratelimit 1/1 cir 409600 pir 409600 cbs 409600 ebs 409600
   218|
   219|bridge add eth 5 uplink vlan 253 tagged
   220|bridge add eth 5 uplink vlan 258 tagged
   221|bridge add eth 5 uplink vlan 902 tagged
   222|bridge add eth 5 uplink vlan 903 tagged
   223|bridge add eth 5 uplink vlan 904 tagged
   224|bridge add eth 5 uplink vlan 918 tagged
   225|bridge add eth 5 uplink vlan 925 tagged
   226|bridge add eth 5 uplink vlan 929 tagged
   227|bridge add eth 5 uplink vlan 930 tagged
   228|bridge add eth 5 uplink vlan 931 tagged
   229|bridge add eth 5 uplink vlan 935 tagged
   230|bridge add eth 5 uplink vlan 944 tagged
   231|bridge add eth 5 uplink vlan 951 tagged
   232|bridge add eth 5 uplink vlan 955 tagged
   233|bridge add eth 5 uplink vlan 961 tagged
   234|bridge add eth 5 uplink vlan 964 tagged
   235|bridge add eth 5 uplink vlan 967 tagged
   236|bridge add eth 5 uplink vlan 971 tagged
   237|bridge add eth 5 uplink vlan 976 tagged
   238|bridge add eth 5 uplink vlan 978 tagged
   239|bridge add eth 5 uplink vlan 979 tagged
   240|bridge add eth 5 uplink vlan 981 tagged
   241|bridge add eth 5 uplink vlan 987 tagged
   242|bridge add eth 5 uplink vlan 988 tagged
   243|bridge add eth 5 uplink vlan 989 tagged
   244|bridge add eth 5 uplink vlan 991 tagged
   245|bridge add eth 5 uplink vlan 992 tagged
   246|bridge add eth 5 uplink vlan 994 tagged
   247|bridge add eth 5 uplink vlan 999 tagged
   248|bridge add eth 5 tls vlan 3001 tagged
   249|bridge-path modify eth 5 vlan 3001 mode flap
   250|bridge add eth 5 uplink vlan 3101 tagged
   251|bridge add eth 5 uplink vlan 3256 tagged
   252|bridge add eth 5 uplink vlan 3258 tagged
   253|bridge add eth 6 uplink vlan 3102 tagged
   254|bridge add eth 6 uplink vlan 3540 tagged
   255|bridge add eth 8 uplink vlan 250 tagged
   256|bridge add xeth 1 uplink vlan 251 tagged
   257|bridge add xeth 1 uplink vlan 252 tagged
   258|bridge add xeth 1 uplink vlan 3560 tagged
   259|bridge add gpon 1 onu 1 downlink vlan 3101 tagged data eth 1
   260|bridge-path modify gpon 1 onu 1 gem 257 mode flap
   261|bridge add gpon 1 onu 2 downlink vlan 3101 tagged data eth 1
   262|bridge-path modify gpon 1 onu 2 gem 258 mode flap
   263|bridge add gpon 1 onu 3 downlink vlan 3101 tagged data eth 1
   264|bridge-path modify gpon 1 onu 3 gem 259 mode flap
   265|bridge add gpon 1 onu 7 downlink vlan 258 tagged data eth 1
   266|bridge-path modify gpon 1 onu 7 gem 265 mode flap
   267|bridge add gpon 1 onu 8 downlink vlan 992 tagged data eth 1
   268|bridge-path modify gpon 1 onu 8 gem 263 mode flap
   269|bridge add gpon 1 onu 10 downlink vlan 991 tagged data eth 1
   270|bridge-path modify gpon 1 onu 10 gem 264 mode flap
   271|bridge add gpon 1 onu 11 downlink vlan 989 tagged data eth 1
   272|bridge-path modify gpon 1 onu 11 gem 268 mode flap
   273|bridge add gpon 1 onu 12 downlink vlan 999 tagged data eth 1
   274|bridge-path modify gpon 1 onu 12 gem 270 mode flap
   275|bridge add gpon 1 onu 13 downlink vlan 987 tagged data eth 1
   276|bridge-path modify gpon 1 onu 13 gem 271 mode flap
   277|bridge add gpon 1 onu 14 downlink vlan 931 tagged data eth 1
   278|bridge-path modify gpon 1 onu 14 gem 272 mode flap
   279|bridge add gpon 1 onu 15 downlink vlan 930 tagged data eth 1
   280|bridge-path modify gpon 1 onu 15 gem 262 mode flap
   281|bridge add gpon 2 onu 1 downlink vlan 3102 tagged data eth 1
   282|bridge-path modify gpon 2 onu 1 gem 258 mode flap
   283|bridge add gpon 2 onu 1 downlink vlan 253 tagged data eth 2
   284|bridge-path modify gpon 2 onu 1 gem 265 mode flap
   285|bridge add gpon 2 onu 2 downlink vlan 3101 tagged data eth 1
   286|bridge-path modify gpon 2 onu 2 gem 260 mode flap
   287|bridge add gpon 2 onu 3 downlink vlan 3540 tagged data eth 1
   288|bridge-path modify gpon 2 onu 3 gem 262 mode flap
   289|bridge add gpon 2 onu 4 downlink vlan 3101 tagged data eth 1
   290|bridge-path modify gpon 2 onu 4 gem 261 mode flap
   291|bridge add gpon 2 onu 5 downlink vlan 3101 tagged data eth 1
   292|bridge-path modify gpon 2 onu 5 gem 267 mode flap
   293|bridge add gpon 2 onu 7 downlink vlan 3560 tagged router
   294|bridge-path modify gpon 2 onu 7 gem 259 mode flap
   295|bridge add gpon 2 onu 8 downlink vlan 258 tagged data eth 1
   296|bridge-path modify gpon 2 onu 8 gem 264 mode flap
   297|bridge add gpon 2 onu 9 downlink vlan 3540 tagged data eth 1
   298|bridge-path modify gpon 2 onu 9 gem 266 mode flap
   299|bridge add gpon 2 onu 10 downlink vlan 981 tagged data eth 1
   300|bridge-path modify gpon 2 onu 10 gem 269 mode flap
   301|bridge add gpon 2 onu 11 downlink vlan 902 tagged data eth 1
   302|bridge-path modify gpon 2 onu 11 gem 268 mode flap
   303|bridge add gpon 2 onu 12 downlink vlan 935 tagged data eth 1
   304|bridge-path modify gpon 2 onu 12 gem 270 mode flap
   305|bridge add gpon 2 onu 13 downlink vlan 978 tagged data eth 1
   306|bridge-path modify gpon 2 onu 13 gem 271 mode flap
   307|bridge add gpon 2 onu 14 downlink vlan 979 tagged data eth 1
   308|bridge-path modify gpon 2 onu 14 gem 272 mode flap
   309|bridge add gpon 2 onu 15 downlink vlan 988 tagged data eth 1
   310|bridge-path modify gpon 2 onu 15 gem 273 mode flap
   311|bridge add gpon 2 onu 16 downlink vlan 994 tagged data eth 1
   312|bridge-path modify gpon 2 onu 16 gem 274 mode flap
   313|bridge add gpon 2 onu 17 downlink vlan 258 tagged data eth 1
   314|bridge-path modify gpon 2 onu 17 gem 275 mode flap
   315|bridge add gpon 3 onu 1 downlink vlan 251 tagged data eth 1
   316|bridge-path modify gpon 3 onu 1 gem 257 mode flap
   317|bridge add gpon 3 onu 2 downlink vlan 258 tagged data eth 1
   318|bridge-path modify gpon 3 onu 2 gem 258 mode flap
   319|bridge add gpon 3 onu 3 downlink vlan 929 tagged data eth 1
   320|bridge-path modify gpon 3 onu 3 gem 262 mode flap
   321|bridge add gpon 3 onu 4 downlink vlan 258 tagged data eth 1
   322|bridge-path modify gpon 3 onu 4 gem 260 mode flap
   323|bridge add gpon 3 onu 5 downlink vlan 258 tagged data eth 1
   324|bridge-path modify gpon 3 onu 5 gem 259 mode flap
   325|bridge add gpon 3 onu 6 downlink vlan 258 tagged data eth 1
   326|bridge-path modify gpon 3 onu 6 gem 261 mode flap
   327|bridge add gpon 3 onu 7 downlink vlan 258 tagged data eth 1
   328|bridge-path modify gpon 3 onu 7 gem 263 mode flap
   329|bridge add gpon 3 onu 8 downlink vlan 253 tagged data eth 1
   330|bridge-path modify gpon 3 onu 8 gem 264 mode flap
   331|bridge add gpon 3 onu 9 downlink vlan 258 tagged data eth 1
   332|bridge-path modify gpon 3 onu 9 gem 268 mode flap
   333|bridge add gpon 3 onu 10 downlink vlan 258 tagged data eth 1
   334|bridge-path modify gpon 3 onu 10 gem 269 mode flap
   335|bridge add gpon 3 onu 11 downlink vlan 258 tagged data eth 1
   336|bridge-path modify gpon 3 onu 11 gem 265 mode flap
   337|bridge add gpon 3 onu 12 downlink vlan 964 tagged data eth 1
   338|bridge-path modify gpon 3 onu 12 gem 270 mode flap
   339|bridge add gpon 3 onu 13 downlink vlan 967 tagged data eth 1
   340|bridge-path modify gpon 3 onu 13 gem 271 mode flap
   341|bridge add gpon 3 onu 14 downlink vlan 918 tagged data eth 1
   342|bridge-path modify gpon 3 onu 14 gem 272 mode flap
   343|bridge add gpon 3 onu 16 downlink vlan 3540 tagged data eth 1
   344|bridge-path modify gpon 3 onu 16 gem 273 mode flap
   345|bridge add gpon 4 onu 1 downlink vlan 3101 tagged data eth 1
   346|bridge-path modify gpon 4 onu 1 gem 258 mode flap
   347|bridge add gpon 4 onu 2 downlink vlan 3101 tagged data eth 1
   348|bridge-path modify gpon 4 onu 2 gem 259 mode flap
   349|bridge add gpon 4 onu 3 downlink vlan 3101 tagged data eth 1
   350|bridge-path modify gpon 4 onu 3 gem 260 mode flap
   351|bridge add gpon 4 onu 4 downlink vlan 258 tagged data eth 1
   352|bridge-path modify gpon 4 onu 4 gem 262 mode flap
   353|bridge add gpon 4 onu 5 downlink vlan 3101 tagged data eth 1
   354|bridge-path modify gpon 4 onu 5 gem 261 mode flap
   355|bridge add gpon 4 onu 6 downlink vlan 251 tagged router
   356|bridge-path modify gpon 4 onu 6 gem 257 mode flap
   357|bridge add gpon 4 onu 7 downlink vlan 3560 tagged router
   358|bridge-path modify gpon 4 onu 7 gem 265 mode flap
   359|bridge add gpon 4 onu 10 downlink vlan 258 tagged data eth 1
   360|bridge-path modify gpon 4 onu 10 gem 269 mode flap
   361|bridge add gpon 4 onu 11 downlink vlan 925 tagged data eth 1
   362|bridge-path modify gpon 4 onu 11 gem 267 mode flap
   363|bridge add gpon 4 onu 12 downlink vlan 944 tagged data eth 1
   364|bridge-path modify gpon 4 onu 12 gem 270 mode flap
   365|bridge add gpon 4 onu 13 downlink vlan 976 tagged data eth 1
   366|bridge-path modify gpon 4 onu 13 gem 271 mode flap
   367|bridge add gpon 4 onu 15 downlink vlan 955 tagged data eth 1
   368|bridge-path modify gpon 4 onu 15 gem 263 mode flap
   369|bridge add gpon 4 onu 16 downlink vlan 258 tagged data eth 1
   370|bridge-path modify gpon 4 onu 16 gem 272 mode flap
   371|bridge add gpon 4 onu 17 downlink vlan 258 tagged data eth 1
   372|bridge-path modify gpon 4 onu 17 gem 274 mode flap
   373|bridge add gpon 5 onu 1 downlink vlan 258 tagged data eth 1
   374|bridge-path modify gpon 5 onu 1 gem 257 mode flap
   375|bridge add gpon 5 onu 2 downlink vlan 258 tagged data eth 1
   376|bridge-path modify gpon 5 onu 2 gem 258 mode flap
   377|bridge add gpon 5 onu 3 downlink vlan 258 tagged data eth 1
   378|bridge-path modify gpon 5 onu 3 gem 259 mode flap
   379|bridge add gpon 5 onu 4 downlink vlan 258 tagged data eth 1
   380|bridge-path modify gpon 5 onu 4 gem 260 mode flap
   381|bridge add gpon 5 onu 5 downlink vlan 258 tagged data eth 1
   382|bridge-path modify gpon 5 onu 5 gem 261 mode flap
   383|bridge add gpon 5 onu 7 downlink vlan 904 tagged data eth 1
   384|bridge-path modify gpon 5 onu 7 gem 266 mode flap
   385|bridge add gpon 5 onu 8 downlink vlan 951 tagged data eth 1
   386|bridge-path modify gpon 5 onu 8 gem 264 mode flap
   387|bridge add gpon 5 onu 9 downlink vlan 961 tagged data eth 1
   388|bridge-path modify gpon 5 onu 9 gem 265 mode flap
   389|bridge add gpon 5 onu 10 downlink vlan 251 tagged data eth 1
   390|bridge-path modify gpon 5 onu 10 gem 263 mode flap
   391|bridge add gpon 7 onu 1 downlink vlan 258 tagged data eth 1
   392|bridge-path modify gpon 7 onu 1 gem 257 mode flap
   393|bridge add gpon 7 onu 2 downlink vlan 258 tagged data eth 1
   394|bridge-path modify gpon 7 onu 2 gem 258 mode flap
   395|bridge add gpon 7 onu 3 downlink vlan 258 tagged data eth 1
   396|bridge-path modify gpon 7 onu 3 gem 259 mode flap
   397|bridge add gpon 7 onu 4 downlink vlan 258 tagged data eth 1
   398|bridge-path modify gpon 7 onu 4 gem 260 mode flap
   399|bridge add gpon 8 onu 1 downlink vlan 903 tagged data eth 1
   400|bridge-path modify gpon 8 onu 1 gem 257 mode flap
   401|bridge add gpon 8 onu 2 downlink vlan 258 tagged data eth 1
   402|bridge-path modify gpon 8 onu 2 gem 258 mode flap
   403|bridge add gpon 8 onu 3 downlink vlan 3256 tagged data eth 1
   404|bridge-path modify gpon 8 onu 3 gem 260 mode flap
   405|bridge add gpon 8 onu 4 downlink vlan 258 tagged data eth 1
   406|bridge-path modify gpon 8 onu 4 gem 259 mode flap
   407|bridge add gpon 8 onu 5 downlink vlan 258 tagged data eth 1
   408|bridge-path modify gpon 8 onu 5 gem 261 mode flap
   409|bridge add gpon 8 onu 6 downlink vlan 258 tagged data eth 1
   410|bridge-path modify gpon 8 onu 6 gem 262 mode flap
   411|bridge add gpon 8 onu 7 downlink vlan 258 tagged data eth 1
   412|bridge-path modify gpon 8 onu 7 gem 263 mode flap
   413|bridge add gpon 8 onu 8 downlink vlan 258 tagged data eth 1
   414|bridge-path modify gpon 8 onu 8 gem 264 mode flap
   415|
   416|interface modify oob new-ip 10.244.25.254/30
   417|interface add inband ip 10.244.25.250/30 vlan 250
   418|
   419|snmp community add CyberWeb rw
   420|
   421|
   422|route add default 10.244.25.253
   423|
   424|bridge-profile add default-bridge downlink vlan 251 tagged eth 1 gtp 0
   425|bridge-profile add default-router downlink vlan 253 tagged router gtp 0
   426|
   427|bridge-profile bind add default-bridge device intelbras-110 gpon 1
   428|bridge-profile bind add default-bridge device intelbras-110 gpon 2
   429|bridge-profile bind add default-bridge device intelbras-110 gpon 3
   430|bridge-profile bind add default-bridge device intelbras-110 gpon 4
   431|bridge-profile bind add default-bridge device intelbras-110 gpon 5
   432|bridge-profile bind add default-bridge device intelbras-110 gpon 6
   433|bridge-profile bind add default-bridge device intelbras-110 gpon 7
   434|bridge-profile bind add default-bridge device intelbras-110 gpon 8
   435|bridge-profile bind add default-bridge device intelbras-110b gpon 1
   436|bridge-profile bind add default-bridge device intelbras-110b gpon 2
   437|bridge-profile bind add default-bridge device intelbras-110b gpon 3
   438|bridge-profile bind add default-bridge device intelbras-110b gpon 4
   439|bridge-profile bind add default-bridge device intelbras-110b gpon 5
   440|bridge-profile bind add default-bridge device intelbras-110b gpon 6
   441|bridge-profile bind add default-bridge device intelbras-110b gpon 7
   442|bridge-profile bind add default-bridge device intelbras-110b gpon 8
   443|bridge-profile bind add default-bridge device intelbras-110g gpon 1
   444|bridge-profile bind add default-bridge device intelbras-110g gpon 2
   445|bridge-profile bind add default-bridge device intelbras-110g gpon 3
   446|bridge-profile bind add default-bridge device intelbras-110g gpon 4
   447|bridge-profile bind add default-bridge device intelbras-110g gpon 5
   448|bridge-profile bind add default-bridge device intelbras-110g gpon 6
   449|bridge-profile bind add default-bridge device intelbras-110g gpon 7
   450|bridge-profile bind add default-bridge device intelbras-110g gpon 8
   451|bridge-profile bind add default-router device intelbras-121ac gpon 1
   452|bridge-profile bind add default-router device intelbras-121ac gpon 2
   453|bridge-profile bind add default-router device intelbras-121ac gpon 3
   454|bridge-profile bind add default-router device intelbras-121ac gpon 4
   455|bridge-profile bind add default-router device intelbras-121ac gpon 5
   456|bridge-profile bind add default-router device intelbras-121ac gpon 6
   457|bridge-profile bind add default-router device intelbras-121ac gpon 7
   458|bridge-profile bind add default-router device intelbras-121ac gpon 8
   459|
   460|auto-service disable
   461|yes
   462|
   463|onu set gpon 1 noauto
   464|yes
   465|onu set gpon 2 noauto
   466|yes
   467|onu set gpon 3 noauto
   468|yes
   469|onu set gpon 4 noauto
   470|yes
   471|onu set gpon 5 noauto
   472|yes
   473|onu set gpon 6 noauto
   474|yes
   475|onu set gpon 7 noauto
   476|yes
   477|onu set gpon 8 noauto
   478|yes
   479|
   480|
   481|=========================================
   482|intelbras-olt>
   483|
   484|```
   485|