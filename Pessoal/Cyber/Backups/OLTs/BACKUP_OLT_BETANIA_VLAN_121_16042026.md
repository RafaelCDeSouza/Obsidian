[[OLT_BETANIA]]

     1|```vbnet
     2|
     3|
     4|intelbras-olt> show running-config-devel
     5|Starting configuration dump ...
     6|=========================================
     7|
     8|session timeout 10
     9|session command-wait on
    10|
    11|onu set gpon 1 onu 1 serial-number ITBSE8FEC8D8 meprof intelbras-default
    12|onu set gpon 1 onu 2 serial-number ZNTS0D343D75 meprof intelbras-default
    13|onu set gpon 1 onu 3 serial-number ITBSE8F8D36D meprof intelbras-default
    14|onu set gpon 1 onu 4 serial-number ZNTS2C173B5C meprof intelbras-110
    15|onu set gpon 1 onu 5 serial-number FSTTB81CFD0C meprof intelbras-default
    16|onu set gpon 1 onu 6 serial-number ZNTS2C14A495 meprof intelbras-default
    17|onu set gpon 1 onu 7 serial-number ITBS2CBEDA3B meprof intelbras-110
    18|onu set gpon 1 onu 8 serial-number ITBS0A6E715E meprof intelbras-default
    19|onu set gpon 1 onu 9 serial-number ITBS2CBEA395 meprof intelbras-110
    20|onu set gpon 1 onu 11 serial-number ITBS0D42ACF1 meprof intelbras-default
    21|onu set gpon 1 onu 13 serial-number ITBS440AC0E1 meprof intelbras-default
    22|onu set gpon 1 onu 14 serial-number ZNTS2C3372AB meprof intelbras-default
    23|onu set gpon 1 onu 15 serial-number ITBS321D58E9 meprof intelbras-default
    24|onu set gpon 1 onu 16 serial-number ITBS2C8396FB meprof intelbras-default
    25|onu set gpon 1 onu 17 serial-number ITBS0D2B8059 meprof intelbras-110b
    26|onu set gpon 1 onu 18 serial-number ITBS0D2B80DF meprof intelbras-110b
    27|onu set gpon 1 onu 20 serial-number ITBS0D6AEDDD meprof intelbras-default
    28|onu set gpon 1 onu 24 serial-number ITBS8B699153 meprof intelbras-110b
    29|onu set gpon 1 onu 25 serial-number ITBS0A6E6DA4 meprof intelbras-default
    30|onu set gpon 1 onu 27 serial-number ITBS32B63C18 meprof intelbras-default
    31|onu set gpon 1 onu 28 serial-number ITBSCFD83890 meprof intelbras-default
    32|onu set gpon 1 onu 30 serial-number ITBS0D2B80C7 meprof intelbras-default
    33|onu set gpon 1 onu 32 serial-number ZNTS2C14BC1F meprof intelbras-default
    34|onu set gpon 1 onu 33 serial-number ITBS2C70F359 meprof intelbras-default
    35|onu set gpon 1 onu 35 serial-number ZNTS2C173C1E meprof intelbras-default
    36|onu set gpon 1 onu 38 serial-number ZNTS2C12B18F meprof intelbras-default
    37|onu set gpon 1 onu 42 serial-number ITBS441CB739 meprof intelbras-default
    38|onu set gpon 1 onu 45 serial-number ZNTS3F909EA3 meprof intelbras-default
    39|onu set gpon 1 onu 46 serial-number ITBS441CB60F meprof intelbras-default
    40|onu set gpon 1 onu 47 serial-number ZNTS2C48CEE5 meprof intelbras-default
    41|onu set gpon 1 onu 49 serial-number ITBS44388EF4 meprof intelbras-default
    42|onu set gpon 2 onu 3 serial-number ITBS325765BF meprof intelbras-110b
    43|onu set gpon 2 onu 7 serial-number ZNTS3F81EDFD meprof intelbras-default
    44|onu set gpon 3 onu 2 serial-number ZNTS2CB7FDD9 meprof intelbras-110
    45|onu set gpon 3 onu 3 serial-number ITBS0D5F3660 meprof intelbras-110
    46|onu set gpon 3 onu 4 serial-number ITBS2C9ED01E meprof intelbras-110
    47|onu set gpon 3 onu 5 serial-number ITBSAC4D0C8E meprof intelbras-default
    48|onu set gpon 3 onu 6 serial-number ITBS2CBEDD11 meprof intelbras-default
    49|onu set gpon 3 onu 8 serial-number ZNTS0D1D0ECC meprof intelbras-default
    50|onu set gpon 3 onu 10 serial-number ITBS440DA9E3 meprof intelbras-default
    51|onu set gpon 3 onu 11 serial-number ZNTS3FFE818E meprof intelbras-default
    52|onu set gpon 3 onu 12 serial-number ITBS0A5ADCEC meprof intelbras-default
    53|onu set gpon 4 onu 1 serial-number FSTT0000E413 meprof intelbras-default
    54|onu set gpon 4 onu 2 serial-number ZNTS2C1C3AE9 meprof intelbras-110
    55|onu set gpon 4 onu 4 serial-number ITBS0DD66105 meprof intelbras-110
    56|onu set gpon 4 onu 9 serial-number ITBS2CEA2E0D meprof intelbras-default
    57|onu set gpon 4 onu 10 serial-number ITBS0D286EC1 meprof intelbras-110
    58|onu set gpon 4 onu 13 serial-number ITBS0D2B8605 meprof intelbras-110b
    59|onu set gpon 4 onu 19 serial-number ITBS2CBEE305 meprof intelbras-default
    60|onu set gpon 5 onu 1 serial-number ITBS0D2B8517 meprof intelbras-default
    61|onu set gpon 5 onu 2 serial-number ITBS5F79CBD7 meprof intelbras-r1
    62|onu set gpon 5 onu 3 serial-number ZNTS3FFE60E0 meprof intelbras-default
    63|onu set gpon 5 onu 4 serial-number ITBS0D2A4BDB meprof intelbras-110
    64|onu set gpon 5 onu 5 serial-number ITBS32B5FAC6 meprof intelbras-default
    65|onu set gpon 5 onu 6 serial-number FSTTB81D0B0E meprof intelbras-default
    66|onu set gpon 5 onu 7 serial-number ITBS325768AB meprof intelbras-110b
    67|onu set gpon 6 onu 1 serial-number ITBS2CBEDBF3 meprof intelbras-110
    68|onu set gpon 6 onu 2 serial-number ZNTS3F81EDF5 meprof intelbras-default
    69|onu set gpon 6 onu 3 serial-number ITBS2C70F299 meprof intelbras-110
    70|onu set gpon 6 onu 4 serial-number ZNTS2C1C3AEF meprof intelbras-110
    71|onu set gpon 6 onu 5 serial-number ITBS0D22D193 meprof intelbras-default
    72|onu set gpon 6 onu 6 serial-number ITBSCFCB4FA3 meprof intelbras-default
    73|onu set gpon 6 onu 8 serial-number FSTT0000D91F meprof intelbras-default
    74|onu set gpon 6 onu 10 serial-number ZNTS8C98ED2A meprof intelbras-110
    75|onu set gpon 6 onu 13 serial-number DD72E606F960 meprof intelbras-default
    76|onu set gpon 6 onu 15 serial-number DD72E606F8B8 meprof intelbras-default
    77|onu set gpon 6 onu 16 serial-number ITBS0D2B85F7 meprof intelbras-110b
    78|onu set gpon 6 onu 18 serial-number ITBS2C718517 meprof intelbras-default
    79|onu set gpon 6 onu 21 serial-number ITBS3231B94B meprof intelbras-110b
    80|onu set gpon 6 onu 25 serial-number ITBS8B697FC9 meprof intelbras-110b
    81|onu set gpon 6 onu 27 serial-number ITBS441CBA3F meprof intelbras-default
    82|onu set gpon 6 onu 29 serial-number ITBS44389066 meprof intelbras-default
    83|
    84|onu description add gpon 1 onu 1 text Bruna_Kaminski_Duarte
    85|onu description add gpon 1 onu 2 text Cleiton_Luis_Swiatovy
    86|onu description add gpon 1 onu 3 text Gloria_Steffen_Hieger
    87|onu description add gpon 1 onu 5 text Eduarda_Portalli_Montero
    88|onu description add gpon 1 onu 6 text Priscila_Valentin_da_Silva
    89|onu description add gpon 1 onu 8 text Carlos_de_Oliveira
    90|onu description add gpon 1 onu 9 text Cristiana_Mesquita_Ribeiro
    91|onu description add gpon 1 onu 11 text Elisiane_Rosa_do_Nascimento
    92|onu description add gpon 1 onu 13 text Rafael_Pereira_de_Oliveira
    93|onu description add gpon 1 onu 14 text Debora_Pereira_Gonalves
    94|onu description add gpon 1 onu 15 text Marcos_Fabio_Linhares_Magalhaes
    95|onu description add gpon 1 onu 16 text Pamela_Valentin_da_Silva
    96|onu description add gpon 1 onu 17 text Diana_Selau_Mesquita
    97|onu description add gpon 1 onu 18 text Ronaldo_Silveira_Rosa
    98|onu description add gpon 1 onu 20 text Marlene_Machado_Torana
    99|onu description add gpon 1 onu 25 text Jonatam_Marcelo_de_Lima_PONTO_2
   100|onu description add gpon 1 onu 27 text Liria_Siqueira_Gomes
   101|onu description add gpon 1 onu 28 text Cristina_Elizabeth_Domingos_Pacheti
   102|onu description add gpon 1 onu 30 text Antonia_Caetano_dos_Anjos
   103|onu description add gpon 1 onu 32 text Serraria_LM
   104|onu description add gpon 1 onu 33 text SPADER_SERVICOS_ADMINISTRATIVOS_LTDA
   105|onu description add gpon 1 onu 35 text Terezinha_Goncalves_da_Silva
   106|onu description add gpon 1 onu 38 text G_B_TRANSPORTES_REMOCAO_E_DEPOSITO_DE_VEICULOS_LTDA
   107|onu description add gpon 1 onu 42 text Patria_Soares_da_Silva
   108|onu description add gpon 1 onu 45 text Mara_Regina_Rocha_Nitz
   109|onu description add gpon 1 onu 46 text Lisiane_da_Silva_Alves
   110|onu description add gpon 1 onu 47 text Sabrina_Alves_Wainaeme
   111|onu description add gpon 1 onu 49 text Antonio_Carlos_Silva_do_Nascimento
   112|onu description add gpon 2 onu 3 text Liege_Dalbem_Ferreira
   113|onu description add gpon 2 onu 7 text Zaira_Cardoso_Migliavaca
   114|onu description add gpon 3 onu 2 text Adao_Machado_Prestes
   115|onu description add gpon 3 onu 3 text Eden_Josue_Chagas_dos_Rezes
   116|onu description add gpon 3 onu 5 text Gabriel_Belchior_Moraes
   117|onu description add gpon 3 onu 8 text Ester_Miriam_Luz_da_Silva
   118|onu description add gpon 3 onu 10 text Adelson_Pereira_da_Silva
   119|onu description add gpon 3 onu 11 text Indiara_da_Silva_Monteiro
   120|onu description add gpon 3 onu 12 text Gelson_Luis_Lemos_Almeida
   121|onu description add gpon 4 onu 1 text Maria_Ines_de_Machado
   122|onu description add gpon 4 onu 9 text Alice_Getner_de_Oliveira_Ferreira
   123|onu description add gpon 4 onu 19 text Vagner_Fernandes
   124|onu description add gpon 5 onu 1 text Manoel_de_Jesus_Ortega
   125|onu description add gpon 5 onu 4 text Leandro_Schultz_Bandeira
   126|onu description add gpon 5 onu 5 text Leonardo_da_Silva_Soares
   127|onu description add gpon 5 onu 6 text Diego_Witte_Antunes
   128|onu description add gpon 5 onu 7 text Nicolas_Cardoso_de_Souza
   129|onu description add gpon 6 onu 2 text Ivone_Marins_Moreira
   130|onu description add gpon 6 onu 3 text Valoricio_Meyer_Ribeiro
   131|onu description add gpon 6 onu 5 text Sabrina_de_Oliveira_Brito
   132|onu description add gpon 6 onu 6 text Wesley_Alisson_Pinheiro_Abreu
   133|onu description add gpon 6 onu 8 text Carlos_Miguel_e_Silva_Terra
   134|onu description add gpon 6 onu 10 text Tania_Maria_Palhano
   135|onu description add gpon 6 onu 16 text Ander_Luis_Cardoso
   136|onu description add gpon 6 onu 18 text Bianca_de_Oliveira_Airoldi
   137|onu description add gpon 6 onu 21 text Xeila_Zamara_Varaschin_de_Lima
   138|onu description add gpon 6 onu 25 text Francisco_Djones_da_Silva_Ribeiro
   139|onu description add gpon 6 onu 27 text Albertina_Maria_da_Silva
   140|onu description add gpon 6 onu 29 text Catia_Andrea_dos_Santos_Gomes
   141|
   142|onu block enable gpon 1
   143|onu block enable gpon 2
   144|onu block enable gpon 3
   145|onu block enable gpon 4
   146|onu block enable gpon 5
   147|onu block enable gpon 6
   148|onu block enable gpon 7
   149|onu block enable gpon 8
   150|
   151|olt set mac-aging-time 3600
   152|
   153|port modify eth 1 storm-control broadcast 100 mbps
   154|port modify eth 1 storm-control multicast 400 mbps
   155|port modify eth 1 storm-control unknown-unicast 100 mbps
   156|port modify gpon 5 storm-control broadcast 125 mbps
   157|port modify gpon 5 storm-control multicast 500 mbps
   158|port modify gpon 5 storm-control unknown-unicast 125 mbps
   159|
   160|cpe-mgr add local gpon 1 onu 27 gtp 2 gem 284
   161|cpe-mgr add local gpon 5 onu 5 gtp 2 gem 265
   162|cpe-mgr add local gpon 6 onu 25 gtp 2 gem 281
   163|cpe-mgr add local gpon 1 onu 15 gtp 2 gem 268
   164|
   165|bridge add eth 1 downlink vlan 121 untagged
   166|bridge-path modify eth 1 vlan 121 mode flap
   167|bridge add xeth 1 tls vlan 1103 tagged
   168|bridge add xeth 2 tls vlan 120 tagged
   169|bridge add xeth 2 uplink vlan 121 tagged
   170|bridge add xeth 2 tls vlan 127 tagged
   171|bridge add xeth 2 tls vlan 1103 tagged
   172|bridge add xeth 2 uplink vlan 3540 tagged
   173|bridge add gpon 1 onu 1 downlink vlan 121 tagged data eth 1
   174|bridge-path modify gpon 1 onu 1 gem 259 mode flap
   175|bridge add gpon 1 onu 2 downlink vlan 121 tagged data eth 1
   176|bridge-path modify gpon 1 onu 2 gem 281 mode flap
   177|bridge add gpon 1 onu 3 downlink vlan 121 tagged data eth 1
   178|bridge-path modify gpon 1 onu 3 gem 257 mode flap
   179|bridge add gpon 1 onu 4 downlink vlan 121 tagged data eth 1
   180|bridge-path modify gpon 1 onu 4 gem 280 mode flap
   181|bridge add gpon 1 onu 5 downlink vlan 121 tagged data eth 1
   182|bridge-path modify gpon 1 onu 5 gem 267 mode flap
   183|bridge add gpon 1 onu 6 downlink vlan 121 tagged data eth 1
   184|bridge-path modify gpon 1 onu 6 gem 260 mode flap
   185|bridge add gpon 1 onu 7 downlink vlan 121 tagged data eth 1
   186|bridge-path modify gpon 1 onu 7 gem 258 mode flap
   187|bridge add gpon 1 onu 8 downlink vlan 121 tagged data eth 1
   188|bridge-path modify gpon 1 onu 8 gem 263 mode flap
   189|bridge add gpon 1 onu 9 downlink vlan 121 tagged data eth 1
   190|bridge-path modify gpon 1 onu 9 gem 266 mode flap
   191|bridge add gpon 1 onu 11 downlink vlan 121 tagged data eth 1
   192|bridge-path modify gpon 1 onu 11 gem 261 mode flap
   193|bridge add gpon 1 onu 13 downlink vlan 121 tagged data eth 1
   194|bridge-path modify gpon 1 onu 13 gem 273 mode flap
   195|bridge add gpon 1 onu 14 downlink vlan 121 tagged data eth 1
   196|bridge-path modify gpon 1 onu 14 gem 262 mode flap
   197|bridge add gpon 1 onu 15 downlink vlan 121 tagged router
   198|bridge-path modify gpon 1 onu 15 gem 264 mode flap
   199|bridge add gpon 1 onu 16 downlink vlan 121 tagged data eth 1
   200|bridge-path modify gpon 1 onu 16 gem 275 mode flap
   201|bridge add gpon 1 onu 17 downlink vlan 121 tagged data eth 1
   202|bridge-path modify gpon 1 onu 17 gem 276 mode flap
   203|bridge add gpon 1 onu 18 downlink vlan 121 tagged data eth 1
   204|bridge-path modify gpon 1 onu 18 gem 274 mode flap
   205|bridge add gpon 1 onu 20 downlink vlan 121 tagged data eth 1
   206|bridge-path modify gpon 1 onu 20 gem 270 mode flap
   207|bridge add gpon 1 onu 24 downlink vlan 121 tagged data eth 1
   208|bridge-path modify gpon 1 onu 24 gem 271 mode flap
   209|bridge add gpon 1 onu 25 downlink vlan 121 tagged data eth 1
   210|bridge-path modify gpon 1 onu 25 gem 278 mode flap
   211|bridge add gpon 1 onu 27 downlink vlan 121 tagged router
   212|bridge-path modify gpon 1 onu 27 gem 283 mode flap
   213|bridge add gpon 1 onu 28 downlink vlan 121 tagged data eth 1
   214|bridge-path modify gpon 1 onu 28 gem 286 mode flap
   215|bridge add gpon 1 onu 30 downlink vlan 121 tagged data eth 1
   216|bridge-path modify gpon 1 onu 30 gem 288 mode flap
   217|bridge add gpon 1 onu 32 downlink vlan 121 tagged data eth 1
   218|bridge-path modify gpon 1 onu 32 gem 291 mode flap
   219|bridge add gpon 1 onu 33 downlink vlan 121 tagged data eth 1
   220|bridge-path modify gpon 1 onu 33 gem 290 mode flap
   221|bridge add gpon 1 onu 35 downlink vlan 121 tagged data eth 1
   222|bridge-path modify gpon 1 onu 35 gem 293 mode flap
   223|bridge add gpon 1 onu 38 downlink vlan 121 tagged data eth 1
   224|bridge-path modify gpon 1 onu 38 gem 292 mode flap
   225|bridge add gpon 1 onu 42 downlink vlan 121 tagged data eth 1
   226|bridge-path modify gpon 1 onu 42 gem 299 mode flap
   227|bridge add gpon 1 onu 45 downlink vlan 121 tagged data eth 1
   228|bridge-path modify gpon 1 onu 45 gem 302 mode flap
   229|bridge add gpon 1 onu 46 downlink vlan 121 tagged data eth 1
   230|bridge-path modify gpon 1 onu 46 gem 303 mode flap
   231|bridge add gpon 1 onu 47 downlink vlan 121 tagged data eth 1
   232|bridge-path modify gpon 1 onu 47 gem 304 mode flap
   233|bridge add gpon 1 onu 49 downlink vlan 121 tagged data eth 1
   234|bridge-path modify gpon 1 onu 49 gem 306 mode flap
   235|bridge add gpon 2 onu 3 downlink vlan 121 tagged data eth 1
   236|bridge-path modify gpon 2 onu 3 gem 259 mode flap
   237|bridge add gpon 2 onu 7 downlink vlan 121 tagged data eth 1
   238|bridge-path modify gpon 2 onu 7 gem 263 mode flap
   239|bridge add gpon 3 onu 2 downlink vlan 121 tagged data eth 1
   240|bridge-path modify gpon 3 onu 2 gem 257 mode flap
   241|bridge add gpon 3 onu 3 downlink vlan 121 tagged data eth 1
   242|bridge-path modify gpon 3 onu 3 gem 259 mode flap
   243|bridge add gpon 3 onu 4 downlink vlan 121 tagged data eth 1
   244|bridge-path modify gpon 3 onu 4 gem 261 mode flap
   245|bridge add gpon 3 onu 5 downlink vlan 121 tagged data eth 1
   246|bridge-path modify gpon 3 onu 5 gem 260 mode flap
   247|bridge add gpon 3 onu 6 downlink vlan 121 tagged data eth 1
   248|bridge-path modify gpon 3 onu 6 gem 262 mode flap
   249|bridge add gpon 3 onu 8 downlink vlan 121 tagged data eth 1
   250|bridge-path modify gpon 3 onu 8 gem 264 mode flap
   251|bridge add gpon 3 onu 10 downlink vlan 121 tagged data eth 1
   252|bridge-path modify gpon 3 onu 10 gem 267 mode flap
   253|bridge add gpon 3 onu 11 downlink vlan 121 tagged data eth 1
   254|bridge-path modify gpon 3 onu 11 gem 268 mode flap
   255|bridge add gpon 3 onu 12 downlink vlan 121 tagged data eth 1
   256|bridge-path modify gpon 3 onu 12 gem 269 mode flap
   257|bridge add gpon 4 onu 1 downlink vlan 121 tagged data eth 1
   258|bridge-path modify gpon 4 onu 1 gem 257 mode flap
   259|bridge add gpon 4 onu 2 downlink vlan 121 tagged data eth 1
   260|bridge-path modify gpon 4 onu 2 gem 258 mode flap
   261|bridge add gpon 4 onu 4 downlink vlan 121 tagged data eth 1
   262|bridge-path modify gpon 4 onu 4 gem 269 mode flap
   263|bridge add gpon 4 onu 9 downlink vlan 121 tagged data eth 1
   264|bridge-path modify gpon 4 onu 9 gem 265 mode flap
   265|bridge add gpon 4 onu 10 downlink vlan 121 tagged data eth 1
   266|bridge-path modify gpon 4 onu 10 gem 263 mode flap
   267|bridge add gpon 4 onu 13 downlink vlan 121 tagged data eth 1
   268|bridge-path modify gpon 4 onu 13 gem 261 mode flap
   269|bridge add gpon 4 onu 19 downlink vlan 121 tagged data eth 1
   270|bridge-path modify gpon 4 onu 19 gem 275 mode flap
   271|bridge add gpon 5 onu 1 downlink vlan 121 tagged data eth 1
   272|bridge-path modify gpon 5 onu 1 gem 257 mode flap
   273|bridge add gpon 5 onu 2 downlink vlan 121 tagged data eth 1
   274|bridge-path modify gpon 5 onu 2 gem 263 mode flap
   275|bridge add gpon 5 onu 3 downlink vlan 121 tagged data eth 1
   276|bridge-path modify gpon 5 onu 3 gem 258 mode flap
   277|bridge add gpon 5 onu 4 downlink vlan 121 tagged data eth 1
   278|bridge-path modify gpon 5 onu 4 gem 260 mode flap
   279|bridge add gpon 5 onu 5 downlink vlan 121 tagged router
   280|bridge-path modify gpon 5 onu 5 gem 264 mode flap
   281|bridge add gpon 5 onu 6 downlink vlan 121 tagged data eth 1
   282|bridge-path modify gpon 5 onu 6 gem 259 mode flap
   283|bridge add gpon 5 onu 7 downlink vlan 121 tagged data eth 1
   284|bridge-path modify gpon 5 onu 7 gem 262 mode flap
   285|bridge add gpon 6 onu 1 downlink vlan 121 tagged data eth 1
   286|bridge-path modify gpon 6 onu 1 gem 278 mode flap
   287|bridge add gpon 6 onu 2 downlink vlan 121 tagged data eth 1
   288|bridge-path modify gpon 6 onu 2 gem 277 mode flap
   289|bridge add gpon 6 onu 3 downlink vlan 121 tagged data eth 1
   290|bridge-path modify gpon 6 onu 3 gem 275 mode flap
   291|bridge add gpon 6 onu 4 downlink vlan 121 tagged data eth 1
   292|bridge-path modify gpon 6 onu 4 gem 257 mode flap
   293|bridge add gpon 6 onu 5 downlink vlan 121 tagged data eth 1
   294|bridge-path modify gpon 6 onu 5 gem 258 mode flap
   295|bridge add gpon 6 onu 6 downlink vlan 121 tagged data eth 1
   296|bridge-path modify gpon 6 onu 6 gem 259 mode flap
   297|bridge add gpon 6 onu 8 downlink vlan 121 tagged data eth 1
   298|bridge-path modify gpon 6 onu 8 gem 268 mode flap
   299|bridge add gpon 6 onu 10 downlink vlan 121 tagged data eth 1
   300|bridge-path modify gpon 6 onu 10 gem 264 mode flap
   301|bridge add gpon 6 onu 13 downlink vlan 121 tagged data eth 1
   302|bridge-path modify gpon 6 onu 13 gem 260 mode flap
   303|bridge add gpon 6 onu 15 downlink vlan 121 tagged data eth 1
   304|bridge-path modify gpon 6 onu 15 gem 261 mode flap
   305|bridge add gpon 6 onu 16 downlink vlan 121 tagged data eth 1
   306|bridge-path modify gpon 6 onu 16 gem 263 mode flap
   307|bridge add gpon 6 onu 18 downlink vlan 121 tagged data eth 1
   308|bridge-path modify gpon 6 onu 18 gem 266 mode flap
   309|bridge add gpon 6 onu 21 downlink vlan 121 tagged data eth 1
   310|bridge-path modify gpon 6 onu 21 gem 272 mode flap
   311|bridge add gpon 6 onu 25 downlink vlan 121 tagged data eth 1
   312|bridge-path modify gpon 6 onu 25 gem 280 mode flap
   313|bridge add gpon 6 onu 27 downlink vlan 121 tagged data eth 1
   314|bridge-path modify gpon 6 onu 27 gem 284 mode flap
   315|bridge add gpon 6 onu 29 downlink vlan 121 tagged data eth 1
   316|bridge-path modify gpon 6 onu 29 gem 286 mode flap
   317|
   318|interface modify oob new-ip 10.244.12.254/30
   319|interface add inband ip 10.244.12.250/30 vlan 127
   320|
   321|snmp community add CyberWeb ro
   322|
   323|
   324|route add default 10.244.12.253
   325|
   326|bridge-profile add default-router downlink vlan 121 tagged router gtp 0
   327|bridge-profile add default downlink vlan 121 tagged eth 1 gtp 0
   328|
   329|bridge-profile bind add default-router device intelbras-121w gpon 1
   330|bridge-profile bind add default-router device intelbras-121w gpon 2
   331|bridge-profile bind add default-router device intelbras-121w gpon 3
   332|bridge-profile bind add default-router device intelbras-121w gpon 4
   333|bridge-profile bind add default-router device intelbras-121w gpon 5
   334|bridge-profile bind add default-router device intelbras-121w gpon 6
   335|bridge-profile bind add default-router device intelbras-121w gpon 7
   336|bridge-profile bind add default-router device intelbras-121w gpon 8
   337|bridge-profile bind add default-router device intelbras-1420g gpon 1
   338|bridge-profile bind add default-router device intelbras-1420g gpon 2
   339|bridge-profile bind add default-router device intelbras-1420g gpon 3
   340|bridge-profile bind add default-router device intelbras-1420g gpon 4
   341|bridge-profile bind add default-router device intelbras-1420g gpon 5
   342|bridge-profile bind add default-router device intelbras-1420g gpon 6
   343|bridge-profile bind add default-router device intelbras-1420g gpon 7
   344|bridge-profile bind add default-router device intelbras-1420g gpon 8
   345|bridge-profile bind add default-router device intelbras-121ac gpon 1
   346|bridge-profile bind add default-router device intelbras-121ac gpon 2
   347|bridge-profile bind add default-router device intelbras-121ac gpon 3
   348|bridge-profile bind add default-router device intelbras-121ac gpon 4
   349|bridge-profile bind add default-router device intelbras-121ac gpon 5
   350|bridge-profile bind add default-router device intelbras-121ac gpon 6
   351|bridge-profile bind add default-router device intelbras-121ac gpon 7
   352|bridge-profile bind add default-router device intelbras-121ac gpon 8
   353|bridge-profile bind add default-router device intelbras-120ac gpon 1
   354|bridge-profile bind add default-router device intelbras-120ac gpon 2
   355|bridge-profile bind add default-router device intelbras-120ac gpon 3
   356|bridge-profile bind add default-router device intelbras-120ac gpon 4
   357|bridge-profile bind add default-router device intelbras-120ac gpon 5
   358|bridge-profile bind add default-router device intelbras-120ac gpon 6
   359|bridge-profile bind add default-router device intelbras-120ac gpon 7
   360|bridge-profile bind add default-router device intelbras-120ac gpon 8
   361|bridge-profile bind add default-router device intelbras-142nw gpon 1
   362|bridge-profile bind add default-router device intelbras-142nw gpon 2
   363|bridge-profile bind add default-router device intelbras-142nw gpon 3
   364|bridge-profile bind add default-router device intelbras-142nw gpon 4
   365|bridge-profile bind add default-router device intelbras-142nw gpon 5
   366|bridge-profile bind add default-router device intelbras-142nw gpon 6
   367|bridge-profile bind add default-router device intelbras-142nw gpon 7
   368|bridge-profile bind add default-router device intelbras-142nw gpon 8
   369|bridge-profile bind add default-router device intelbras-142ng gpon 1
   370|bridge-profile bind add default-router device intelbras-142ng gpon 2
   371|bridge-profile bind add default-router device intelbras-142ng gpon 3
   372|bridge-profile bind add default-router device intelbras-142ng gpon 4
   373|bridge-profile bind add default-router device intelbras-142ng gpon 5
   374|bridge-profile bind add default-router device intelbras-142ng gpon 6
   375|bridge-profile bind add default-router device intelbras-142ng gpon 7
   376|bridge-profile bind add default-router device intelbras-142ng gpon 8
   377|bridge-profile bind add default device intelbras-default gpon 1
   378|bridge-profile bind add default device intelbras-default gpon 2
   379|bridge-profile bind add default device intelbras-default gpon 3
   380|bridge-profile bind add default device intelbras-default gpon 4
   381|bridge-profile bind add default device intelbras-default gpon 5
   382|bridge-profile bind add default device intelbras-default gpon 6
   383|bridge-profile bind add default device intelbras-default gpon 7
   384|bridge-profile bind add default device intelbras-default gpon 8
   385|bridge-profile bind add default device intelbras-110 gpon 1
   386|bridge-profile bind add default device intelbras-110 gpon 2
   387|bridge-profile bind add default device intelbras-110 gpon 3
   388|bridge-profile bind add default device intelbras-110 gpon 4
   389|bridge-profile bind add default device intelbras-110 gpon 5
   390|bridge-profile bind add default device intelbras-110 gpon 6
   391|bridge-profile bind add default device intelbras-110 gpon 7
   392|bridge-profile bind add default device intelbras-110 gpon 8
   393|bridge-profile bind add default device intelbras-110b gpon 1
   394|bridge-profile bind add default device intelbras-110b gpon 2
   395|bridge-profile bind add default device intelbras-110b gpon 3
   396|bridge-profile bind add default device intelbras-110b gpon 4
   397|bridge-profile bind add default device intelbras-110b gpon 5
   398|bridge-profile bind add default device intelbras-110b gpon 6
   399|bridge-profile bind add default device intelbras-110b gpon 7
   400|bridge-profile bind add default device intelbras-110b gpon 8
   401|bridge-profile bind add default device intelbras-110g gpon 1
   402|bridge-profile bind add default device intelbras-110g gpon 2
   403|bridge-profile bind add default device intelbras-110g gpon 3
   404|bridge-profile bind add default device intelbras-110g gpon 4
   405|bridge-profile bind add default device intelbras-110g gpon 5
   406|bridge-profile bind add default device intelbras-110g gpon 6
   407|bridge-profile bind add default device intelbras-110g gpon 7
   408|bridge-profile bind add default device intelbras-110g gpon 8
   409|
   410|auto-service disable
   411|yes
   412|
   413|onu set gpon 1 noauto
   414|yes
   415|onu set gpon 2 noauto
   416|yes
   417|onu set gpon 3 noauto
   418|yes
   419|onu set gpon 4 noauto
   420|yes
   421|onu set gpon 5 noauto
   422|yes
   423|onu set gpon 6 noauto
   424|yes
   425|onu set gpon 7 noauto
   426|yes
   427|onu set gpon 8 noauto
   428|yes
   429|
   430|
   431|=========================================
   432|intelbras-olt>
   433|
   434|```
   435|