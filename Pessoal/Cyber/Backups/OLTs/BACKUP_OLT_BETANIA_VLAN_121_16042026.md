---
name: Backup de Equipamento
created: 2026-04-24 23:54
---

# Backup de OLT_BETANIA

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | OLT_BETANIA |
| **Tipo** | OLT |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 📂 Arquivo de Configuração
```text
1|[[OLT_BETANIA]]
     2|
     3|     1|```vbnet
     4|     2|
     5|     3|
     6|     4|intelbras-olt> show running-config-devel
     7|     5|Starting configuration dump ...
     8|     6|=========================================
     9|     7|
    10|     8|session timeout 10
    11|     9|session command-wait on
    12|    10|
    13|    11|onu set gpon 1 onu 1 serial-number ITBSE8FEC8D8 meprof intelbras-default
    14|    12|onu set gpon 1 onu 2 serial-number ZNTS0D343D75 meprof intelbras-default
    15|    13|onu set gpon 1 onu 3 serial-number ITBSE8F8D36D meprof intelbras-default
    16|    14|onu set gpon 1 onu 4 serial-number ZNTS2C173B5C meprof intelbras-110
    17|    15|onu set gpon 1 onu 5 serial-number FSTTB81CFD0C meprof intelbras-default
    18|    16|onu set gpon 1 onu 6 serial-number ZNTS2C14A495 meprof intelbras-default
    19|    17|onu set gpon 1 onu 7 serial-number ITBS2CBEDA3B meprof intelbras-110
    20|    18|onu set gpon 1 onu 8 serial-number ITBS0A6E715E meprof intelbras-default
    21|    19|onu set gpon 1 onu 9 serial-number ITBS2CBEA395 meprof intelbras-110
    22|    20|onu set gpon 1 onu 11 serial-number ITBS0D42ACF1 meprof intelbras-default
    23|    21|onu set gpon 1 onu 13 serial-number ITBS440AC0E1 meprof intelbras-default
    24|    22|onu set gpon 1 onu 14 serial-number ZNTS2C3372AB meprof intelbras-default
    25|    23|onu set gpon 1 onu 15 serial-number ITBS321D58E9 meprof intelbras-default
    26|    24|onu set gpon 1 onu 16 serial-number ITBS2C8396FB meprof intelbras-default
    27|    25|onu set gpon 1 onu 17 serial-number ITBS0D2B8059 meprof intelbras-110b
    28|    26|onu set gpon 1 onu 18 serial-number ITBS0D2B80DF meprof intelbras-110b
    29|    27|onu set gpon 1 onu 20 serial-number ITBS0D6AEDDD meprof intelbras-default
    30|    28|onu set gpon 1 onu 24 serial-number ITBS8B699153 meprof intelbras-110b
    31|    29|onu set gpon 1 onu 25 serial-number ITBS0A6E6DA4 meprof intelbras-default
    32|    30|onu set gpon 1 onu 27 serial-number ITBS32B63C18 meprof intelbras-default
    33|    31|onu set gpon 1 onu 28 serial-number ITBSCFD83890 meprof intelbras-default
    34|    32|onu set gpon 1 onu 30 serial-number ITBS0D2B80C7 meprof intelbras-default
    35|    33|onu set gpon 1 onu 32 serial-number ZNTS2C14BC1F meprof intelbras-default
    36|    34|onu set gpon 1 onu 33 serial-number ITBS2C70F359 meprof intelbras-default
    37|    35|onu set gpon 1 onu 35 serial-number ZNTS2C173C1E meprof intelbras-default
    38|    36|onu set gpon 1 onu 38 serial-number ZNTS2C12B18F meprof intelbras-default
    39|    37|onu set gpon 1 onu 42 serial-number ITBS441CB739 meprof intelbras-default
    40|    38|onu set gpon 1 onu 45 serial-number ZNTS3F909EA3 meprof intelbras-default
    41|    39|onu set gpon 1 onu 46 serial-number ITBS441CB60F meprof intelbras-default
    42|    40|onu set gpon 1 onu 47 serial-number ZNTS2C48CEE5 meprof intelbras-default
    43|    41|onu set gpon 1 onu 49 serial-number ITBS44388EF4 meprof intelbras-default
    44|    42|onu set gpon 2 onu 3 serial-number ITBS325765BF meprof intelbras-110b
    45|    43|onu set gpon 2 onu 7 serial-number ZNTS3F81EDFD meprof intelbras-default
    46|    44|onu set gpon 3 onu 2 serial-number ZNTS2CB7FDD9 meprof intelbras-110
    47|    45|onu set gpon 3 onu 3 serial-number ITBS0D5F3660 meprof intelbras-110
    48|    46|onu set gpon 3 onu 4 serial-number ITBS2C9ED01E meprof intelbras-110
    49|    47|onu set gpon 3 onu 5 serial-number ITBSAC4D0C8E meprof intelbras-default
    50|    48|onu set gpon 3 onu 6 serial-number ITBS2CBEDD11 meprof intelbras-default
    51|    49|onu set gpon 3 onu 8 serial-number ZNTS0D1D0ECC meprof intelbras-default
    52|    50|onu set gpon 3 onu 10 serial-number ITBS440DA9E3 meprof intelbras-default
    53|    51|onu set gpon 3 onu 11 serial-number ZNTS3FFE818E meprof intelbras-default
    54|    52|onu set gpon 3 onu 12 serial-number ITBS0A5ADCEC meprof intelbras-default
    55|    53|onu set gpon 4 onu 1 serial-number FSTT0000E413 meprof intelbras-default
    56|    54|onu set gpon 4 onu 2 serial-number ZNTS2C1C3AE9 meprof intelbras-110
    57|    55|onu set gpon 4 onu 4 serial-number ITBS0DD66105 meprof intelbras-110
    58|    56|onu set gpon 4 onu 9 serial-number ITBS2CEA2E0D meprof intelbras-default
    59|    57|onu set gpon 4 onu 10 serial-number ITBS0D286EC1 meprof intelbras-110
    60|    58|onu set gpon 4 onu 13 serial-number ITBS0D2B8605 meprof intelbras-110b
    61|    59|onu set gpon 4 onu 19 serial-number ITBS2CBEE305 meprof intelbras-default
    62|    60|onu set gpon 5 onu 1 serial-number ITBS0D2B8517 meprof intelbras-default
    63|    61|onu set gpon 5 onu 2 serial-number ITBS5F79CBD7 meprof intelbras-r1
    64|    62|onu set gpon 5 onu 3 serial-number ZNTS3FFE60E0 meprof intelbras-default
    65|    63|onu set gpon 5 onu 4 serial-number ITBS0D2A4BDB meprof intelbras-110
    66|    64|onu set gpon 5 onu 5 serial-number ITBS32B5FAC6 meprof intelbras-default
    67|    65|onu set gpon 5 onu 6 serial-number FSTTB81D0B0E meprof intelbras-default
    68|    66|onu set gpon 5 onu 7 serial-number ITBS325768AB meprof intelbras-110b
    69|    67|onu set gpon 6 onu 1 serial-number ITBS2CBEDBF3 meprof intelbras-110
    70|    68|onu set gpon 6 onu 2 serial-number ZNTS3F81EDF5 meprof intelbras-default
    71|    69|onu set gpon 6 onu 3 serial-number ITBS2C70F299 meprof intelbras-110
    72|    70|onu set gpon 6 onu 4 serial-number ZNTS2C1C3AEF meprof intelbras-110
    73|    71|onu set gpon 6 onu 5 serial-number ITBS0D22D193 meprof intelbras-default
    74|    72|onu set gpon 6 onu 6 serial-number ITBSCFCB4FA3 meprof intelbras-default
    75|    73|onu set gpon 6 onu 8 serial-number FSTT0000D91F meprof intelbras-default
    76|    74|onu set gpon 6 onu 10 serial-number ZNTS8C98ED2A meprof intelbras-110
    77|    75|onu set gpon 6 onu 13 serial-number DD72E606F960 meprof intelbras-default
    78|    76|onu set gpon 6 onu 15 serial-number DD72E606F8B8 meprof intelbras-default
    79|    77|onu set gpon 6 onu 16 serial-number ITBS0D2B85F7 meprof intelbras-110b
    80|    78|onu set gpon 6 onu 18 serial-number ITBS2C718517 meprof intelbras-default
    81|    79|onu set gpon 6 onu 21 serial-number ITBS3231B94B meprof intelbras-110b
    82|    80|onu set gpon 6 onu 25 serial-number ITBS8B697FC9 meprof intelbras-110b
    83|    81|onu set gpon 6 onu 27 serial-number ITBS441CBA3F meprof intelbras-default
    84|    82|onu set gpon 6 onu 29 serial-number ITBS44389066 meprof intelbras-default
    85|    83|
    86|    84|onu description add gpon 1 onu 1 text Bruna_Kaminski_Duarte
    87|    85|onu description add gpon 1 onu 2 text Cleiton_Luis_Swiatovy
    88|    86|onu description add gpon 1 onu 3 text Gloria_Steffen_Hieger
    89|    87|onu description add gpon 1 onu 5 text Eduarda_Portalli_Montero
    90|    88|onu description add gpon 1 onu 6 text Priscila_Valentin_da_Silva
    91|    89|onu description add gpon 1 onu 8 text Carlos_de_Oliveira
    92|    90|onu description add gpon 1 onu 9 text Cristiana_Mesquita_Ribeiro
    93|    91|onu description add gpon 1 onu 11 text Elisiane_Rosa_do_Nascimento
    94|    92|onu description add gpon 1 onu 13 text Rafael_Pereira_de_Oliveira
    95|    93|onu description add gpon 1 onu 14 text Debora_Pereira_Gonalves
    96|    94|onu description add gpon 1 onu 15 text Marcos_Fabio_Linhares_Magalhaes
    97|    95|onu description add gpon 1 onu 16 text Pamela_Valentin_da_Silva
    98|    96|onu description add gpon 1 onu 17 text Diana_Selau_Mesquita
    99|    97|onu description add gpon 1 onu 18 text Ronaldo_Silveira_Rosa
   100|    98|onu description add gpon 1 onu 20 text Marlene_Machado_Torana
   101|    99|onu description add gpon 1 onu 25 text Jonatam_Marcelo_de_Lima_PONTO_2
   102|   100|onu description add gpon 1 onu 27 text Liria_Siqueira_Gomes
   103|   101|onu description add gpon 1 onu 28 text Cristina_Elizabeth_Domingos_Pacheti
   104|   102|onu description add gpon 1 onu 30 text Antonia_Caetano_dos_Anjos
   105|   103|onu description add gpon 1 onu 32 text Serraria_LM
   106|   104|onu description add gpon 1 onu 33 text SPADER_SERVICOS_ADMINISTRATIVOS_LTDA
   107|   105|onu description add gpon 1 onu 35 text Terezinha_Goncalves_da_Silva
   108|   106|onu description add gpon 1 onu 38 text G_B_TRANSPORTES_REMOCAO_E_DEPOSITO_DE_VEICULOS_LTDA
   109|   107|onu description add gpon 1 onu 42 text Patria_Soares_da_Silva
   110|   108|onu description add gpon 1 onu 45 text Mara_Regina_Rocha_Nitz
   111|   109|onu description add gpon 1 onu 46 text Lisiane_da_Silva_Alves
   112|   110|onu description add gpon 1 onu 47 text Sabrina_Alves_Wainaeme
   113|   111|onu description add gpon 1 onu 49 text Antonio_Carlos_Silva_do_Nascimento
   114|   112|onu description add gpon 2 onu 3 text Liege_Dalbem_Ferreira
   115|   113|onu description add gpon 2 onu 7 text Zaira_Cardoso_Migliavaca
   116|   114|onu description add gpon 3 onu 2 text Adao_Machado_Prestes
   117|   115|onu description add gpon 3 onu 3 text Eden_Josue_Chagas_dos_Rezes
   118|   116|onu description add gpon 3 onu 5 text Gabriel_Belchior_Moraes
   119|   117|onu description add gpon 3 onu 8 text Ester_Miriam_Luz_da_Silva
   120|   118|onu description add gpon 3 onu 10 text Adelson_Pereira_da_Silva
   121|   119|onu description add gpon 3 onu 11 text Indiara_da_Silva_Monteiro
   122|   120|onu description add gpon 3 onu 12 text Gelson_Luis_Lemos_Almeida
   123|   121|onu description add gpon 4 onu 1 text Maria_Ines_de_Machado
   124|   122|onu description add gpon 4 onu 9 text Alice_Getner_de_Oliveira_Ferreira
   125|   123|onu description add gpon 4 onu 19 text Vagner_Fernandes
   126|   124|onu description add gpon 5 onu 1 text Manoel_de_Jesus_Ortega
   127|   125|onu description add gpon 5 onu 4 text Leandro_Schultz_Bandeira
   128|   126|onu description add gpon 5 onu 5 text Leonardo_da_Silva_Soares
   129|   127|onu description add gpon 5 onu 6 text Diego_Witte_Antunes
   130|   128|onu description add gpon 5 onu 7 text Nicolas_Cardoso_de_Souza
   131|   129|onu description add gpon 6 onu 2 text Ivone_Marins_Moreira
   132|   130|onu description add gpon 6 onu 3 text Valoricio_Meyer_Ribeiro
   133|   131|onu description add gpon 6 onu 5 text Sabrina_de_Oliveira_Brito
   134|   132|onu description add gpon 6 onu 6 text Wesley_Alisson_Pinheiro_Abreu
   135|   133|onu description add gpon 6 onu 8 text Carlos_Miguel_e_Silva_Terra
   136|   134|onu description add gpon 6 onu 10 text Tania_Maria_Palhano
   137|   135|onu description add gpon 6 onu 16 text Ander_Luis_Cardoso
   138|   136|onu description add gpon 6 onu 18 text Bianca_de_Oliveira_Airoldi
   139|   137|onu description add gpon 6 onu 21 text Xeila_Zamara_Varaschin_de_Lima
   140|   138|onu description add gpon 6 onu 25 text Francisco_Djones_da_Silva_Ribeiro
   141|   139|onu description add gpon 6 onu 27 text Albertina_Maria_da_Silva
   142|   140|onu description add gpon 6 onu 29 text Catia_Andrea_dos_Santos_Gomes
   143|   141|
   144|   142|onu block enable gpon 1
   145|   143|onu block enable gpon 2
   146|   144|onu block enable gpon 3
   147|   145|onu block enable gpon 4
   148|   146|onu block enable gpon 5
   149|   147|onu block enable gpon 6
   150|   148|onu block enable gpon 7
   151|   149|onu block enable gpon 8
   152|   150|
   153|   151|olt set mac-aging-time 3600
   154|   152|
   155|   153|port modify eth 1 storm-control broadcast 100 mbps
   156|   154|port modify eth 1 storm-control multicast 400 mbps
   157|   155|port modify eth 1 storm-control unknown-unicast 100 mbps
   158|   156|port modify gpon 5 storm-control broadcast 125 mbps
   159|   157|port modify gpon 5 storm-control multicast 500 mbps
   160|   158|port modify gpon 5 storm-control unknown-unicast 125 mbps
   161|   159|
   162|   160|cpe-mgr add local gpon 1 onu 27 gtp 2 gem 284
   163|   161|cpe-mgr add local gpon 5 onu 5 gtp 2 gem 265
   164|   162|cpe-mgr add local gpon 6 onu 25 gtp 2 gem 281
   165|   163|cpe-mgr add local gpon 1 onu 15 gtp 2 gem 268
   166|   164|
   167|   165|bridge add eth 1 downlink vlan 121 untagged
   168|   166|bridge-path modify eth 1 vlan 121 mode flap
   169|   167|bridge add xeth 1 tls vlan 1103 tagged
   170|   168|bridge add xeth 2 tls vlan 120 tagged
   171|   169|bridge add xeth 2 uplink vlan 121 tagged
   172|   170|bridge add xeth 2 tls vlan 127 tagged
   173|   171|bridge add xeth 2 tls vlan 1103 tagged
   174|   172|bridge add xeth 2 uplink vlan 3540 tagged
   175|   173|bridge add gpon 1 onu 1 downlink vlan 121 tagged data eth 1
   176|   174|bridge-path modify gpon 1 onu 1 gem 259 mode flap
   177|   175|bridge add gpon 1 onu 2 downlink vlan 121 tagged data eth 1
   178|   176|bridge-path modify gpon 1 onu 2 gem 281 mode flap
   179|   177|bridge add gpon 1 onu 3 downlink vlan 121 tagged data eth 1
   180|   178|bridge-path modify gpon 1 onu 3 gem 257 mode flap
   181|   179|bridge add gpon 1 onu 4 downlink vlan 121 tagged data eth 1
   182|   180|bridge-path modify gpon 1 onu 4 gem 280 mode flap
   183|   181|bridge add gpon 1 onu 5 downlink vlan 121 tagged data eth 1
   184|   182|bridge-path modify gpon 1 onu 5 gem 267 mode flap
   185|   183|bridge add gpon 1 onu 6 downlink vlan 121 tagged data eth 1
   186|   184|bridge-path modify gpon 1 onu 6 gem 260 mode flap
   187|   185|bridge add gpon 1 onu 7 downlink vlan 121 tagged data eth 1
   188|   186|bridge-path modify gpon 1 onu 7 gem 258 mode flap
   189|   187|bridge add gpon 1 onu 8 downlink vlan 121 tagged data eth 1
   190|   188|bridge-path modify gpon 1 onu 8 gem 263 mode flap
   191|   189|bridge add gpon 1 onu 9 downlink vlan 121 tagged data eth 1
   192|   190|bridge-path modify gpon 1 onu 9 gem 266 mode flap
   193|   191|bridge add gpon 1 onu 11 downlink vlan 121 tagged data eth 1
   194|   192|bridge-path modify gpon 1 onu 11 gem 261 mode flap
   195|   193|bridge add gpon 1 onu 13 downlink vlan 121 tagged data eth 1
   196|   194|bridge-path modify gpon 1 onu 13 gem 273 mode flap
   197|   195|bridge add gpon 1 onu 14 downlink vlan 121 tagged data eth 1
   198|   196|bridge-path modify gpon 1 onu 14 gem 262 mode flap
   199|   197|bridge add gpon 1 onu 15 downlink vlan 121 tagged router
   200|   198|bridge-path modify gpon 1 onu 15 gem 264 mode flap
   201|   199|bridge add gpon 1 onu 16 downlink vlan 121 tagged data eth 1
   202|   200|bridge-path modify gpon 1 onu 16 gem 275 mode flap
   203|   201|bridge add gpon 1 onu 17 downlink vlan 121 tagged data eth 1
   204|   202|bridge-path modify gpon 1 onu 17 gem 276 mode flap
   205|   203|bridge add gpon 1 onu 18 downlink vlan 121 tagged data eth 1
   206|   204|bridge-path modify gpon 1 onu 18 gem 274 mode flap
   207|   205|bridge add gpon 1 onu 20 downlink vlan 121 tagged data eth 1
   208|   206|bridge-path modify gpon 1 onu 20 gem 270 mode flap
   209|   207|bridge add gpon 1 onu 24 downlink vlan 121 tagged data eth 1
   210|   208|bridge-path modify gpon 1 onu 24 gem 271 mode flap
   211|   209|bridge add gpon 1 onu 25 downlink vlan 121 tagged data eth 1
   212|   210|bridge-path modify gpon 1 onu 25 gem 278 mode flap
   213|   211|bridge add gpon 1 onu 27 downlink vlan 121 tagged router
   214|   212|bridge-path modify gpon 1 onu 27 gem 283 mode flap
   215|   213|bridge add gpon 1 onu 28 downlink vlan 121 tagged data eth 1
   216|   214|bridge-path modify gpon 1 onu 28 gem 286 mode flap
   217|   215|bridge add gpon 1 onu 30 downlink vlan 121 tagged data eth 1
   218|   216|bridge-path modify gpon 1 onu 30 gem 288 mode flap
   219|   217|bridge add gpon 1 onu 32 downlink vlan 121 tagged data eth 1
   220|   218|bridge-path modify gpon 1 onu 32 gem 291 mode flap
   221|   219|bridge add gpon 1 onu 33 downlink vlan 121 tagged data eth 1
   222|   220|bridge-path modify gpon 1 onu 33 gem 290 mode flap
   223|   221|bridge add gpon 1 onu 35 downlink vlan 121 tagged data eth 1
   224|   222|bridge-path modify gpon 1 onu 35 gem 293 mode flap
   225|   223|bridge add gpon 1 onu 38 downlink vlan 121 tagged data eth 1
   226|   224|bridge-path modify gpon 1 onu 38 gem 292 mode flap
   227|   225|bridge add gpon 1 onu 42 downlink vlan 121 tagged data eth 1
   228|   226|bridge-path modify gpon 1 onu 42 gem 299 mode flap
   229|   227|bridge add gpon 1 onu 45 downlink vlan 121 tagged data eth 1
   230|   228|bridge-path modify gpon 1 onu 45 gem 302 mode flap
   231|   229|bridge add gpon 1 onu 46 downlink vlan 121 tagged data eth 1
   232|   230|bridge-path modify gpon 1 onu 46 gem 303 mode flap
   233|   231|bridge add gpon 1 onu 47 downlink vlan 121 tagged data eth 1
   234|   232|bridge-path modify gpon 1 onu 47 gem 304 mode flap
   235|   233|bridge add gpon 1 onu 49 downlink vlan 121 tagged data eth 1
   236|   234|bridge-path modify gpon 1 onu 49 gem 306 mode flap
   237|   235|bridge add gpon 2 onu 3 downlink vlan 121 tagged data eth 1
   238|   236|bridge-path modify gpon 2 onu 3 gem 259 mode flap
   239|   237|bridge add gpon 2 onu 7 downlink vlan 121 tagged data eth 1
   240|   238|bridge-path modify gpon 2 onu 7 gem 263 mode flap
   241|   239|bridge add gpon 3 onu 2 downlink vlan 121 tagged data eth 1
   242|   240|bridge-path modify gpon 3 onu 2 gem 257 mode flap
   243|   241|bridge add gpon 3 onu 3 downlink vlan 121 tagged data eth 1
   244|   242|bridge-path modify gpon 3 onu 3 gem 259 mode flap
   245|   243|bridge add gpon 3 onu 4 downlink vlan 121 tagged data eth 1
   246|   244|bridge-path modify gpon 3 onu 4 gem 261 mode flap
   247|   245|bridge add gpon 3 onu 5 downlink vlan 121 tagged data eth 1
   248|   246|bridge-path modify gpon 3 onu 5 gem 260 mode flap
   249|   247|bridge add gpon 3 onu 6 downlink vlan 121 tagged data eth 1
   250|   248|bridge-path modify gpon 3 onu 6 gem 262 mode flap
   251|   249|bridge add gpon 3 onu 8 downlink vlan 121 tagged data eth 1
   252|   250|bridge-path modify gpon 3 onu 8 gem 264 mode flap
   253|   251|bridge add gpon 3 onu 10 downlink vlan 121 tagged data eth 1
   254|   252|bridge-path modify gpon 3 onu 10 gem 267 mode flap
   255|   253|bridge add gpon 3 onu 11 downlink vlan 121 tagged data eth 1
   256|   254|bridge-path modify gpon 3 onu 11 gem 268 mode flap
   257|   255|bridge add gpon 3 onu 12 downlink vlan 121 tagged data eth 1
   258|   256|bridge-path modify gpon 3 onu 12 gem 269 mode flap
   259|   257|bridge add gpon 4 onu 1 downlink vlan 121 tagged data eth 1
   260|   258|bridge-path modify gpon 4 onu 1 gem 257 mode flap
   261|   259|bridge add gpon 4 onu 2 downlink vlan 121 tagged data eth 1
   262|   260|bridge-path modify gpon 4 onu 2 gem 258 mode flap
   263|   261|bridge add gpon 4 onu 4 downlink vlan 121 tagged data eth 1
   264|   262|bridge-path modify gpon 4 onu 4 gem 269 mode flap
   265|   263|bridge add gpon 4 onu 9 downlink vlan 121 tagged data eth 1
   266|   264|bridge-path modify gpon 4 onu 9 gem 265 mode flap
   267|   265|bridge add gpon 4 onu 10 downlink vlan 121 tagged data eth 1
   268|   266|bridge-path modify gpon 4 onu 10 gem 263 mode flap
   269|   267|bridge add gpon 4 onu 13 downlink vlan 121 tagged data eth 1
   270|   268|bridge-path modify gpon 4 onu 13 gem 261 mode flap
   271|   269|bridge add gpon 4 onu 19 downlink vlan 121 tagged data eth 1
   272|   270|bridge-path modify gpon 4 onu 19 gem 275 mode flap
   273|   271|bridge add gpon 5 onu 1 downlink vlan 121 tagged data eth 1
   274|   272|bridge-path modify gpon 5 onu 1 gem 257 mode flap
   275|   273|bridge add gpon 5 onu 2 downlink vlan 121 tagged data eth 1
   276|   274|bridge-path modify gpon 5 onu 2 gem 263 mode flap
   277|   275|bridge add gpon 5 onu 3 downlink vlan 121 tagged data eth 1
   278|   276|bridge-path modify gpon 5 onu 3 gem 258 mode flap
   279|   277|bridge add gpon 5 onu 4 downlink vlan 121 tagged data eth 1
   280|   278|bridge-path modify gpon 5 onu 4 gem 260 mode flap
   281|   279|bridge add gpon 5 onu 5 downlink vlan 121 tagged router
   282|   280|bridge-path modify gpon 5 onu 5 gem 264 mode flap
   283|   281|bridge add gpon 5 onu 6 downlink vlan 121 tagged data eth 1
   284|   282|bridge-path modify gpon 5 onu 6 gem 259 mode flap
   285|   283|bridge add gpon 5 onu 7 downlink vlan 121 tagged data eth 1
   286|   284|bridge-path modify gpon 5 onu 7 gem 262 mode flap
   287|   285|bridge add gpon 6 onu 1 downlink vlan 121 tagged data eth 1
   288|   286|bridge-path modify gpon 6 onu 1 gem 278 mode flap
   289|   287|bridge add gpon 6 onu 2 downlink vlan 121 tagged data eth 1
   290|   288|bridge-path modify gpon 6 onu 2 gem 277 mode flap
   291|   289|bridge add gpon 6 onu 3 downlink vlan 121 tagged data eth 1
   292|   290|bridge-path modify gpon 6 onu 3 gem 275 mode flap
   293|   291|bridge add gpon 6 onu 4 downlink vlan 121 tagged data eth 1
   294|   292|bridge-path modify gpon 6 onu 4 gem 257 mode flap
   295|   293|bridge add gpon 6 onu 5 downlink vlan 121 tagged data eth 1
   296|   294|bridge-path modify gpon 6 onu 5 gem 258 mode flap
   297|   295|bridge add gpon 6 onu 6 downlink vlan 121 tagged data eth 1
   298|   296|bridge-path modify gpon 6 onu 6 gem 259 mode flap
   299|   297|bridge add gpon 6 onu 8 downlink vlan 121 tagged data eth 1
   300|   298|bridge-path modify gpon 6 onu 8 gem 268 mode flap
   301|   299|bridge add gpon 6 onu 10 downlink vlan 121 tagged data eth 1
   302|   300|bridge-path modify gpon 6 onu 10 gem 264 mode flap
   303|   301|bridge add gpon 6 onu 13 downlink vlan 121 tagged data eth 1
   304|   302|bridge-path modify gpon 6 onu 13 gem 260 mode flap
   305|   303|bridge add gpon 6 onu 15 downlink vlan 121 tagged data eth 1
   306|   304|bridge-path modify gpon 6 onu 15 gem 261 mode flap
   307|   305|bridge add gpon 6 onu 16 downlink vlan 121 tagged data eth 1
   308|   306|bridge-path modify gpon 6 onu 16 gem 263 mode flap
   309|   307|bridge add gpon 6 onu 18 downlink vlan 121 tagged data eth 1
   310|   308|bridge-path modify gpon 6 onu 18 gem 266 mode flap
   311|   309|bridge add gpon 6 onu 21 downlink vlan 121 tagged data eth 1
   312|   310|bridge-path modify gpon 6 onu 21 gem 272 mode flap
   313|   311|bridge add gpon 6 onu 25 downlink vlan 121 tagged data eth 1
   314|   312|bridge-path modify gpon 6 onu 25 gem 280 mode flap
   315|   313|bridge add gpon 6 onu 27 downlink vlan 121 tagged data eth 1
   316|   314|bridge-path modify gpon 6 onu 27 gem 284 mode flap
   317|   315|bridge add gpon 6 onu 29 downlink vlan 121 tagged data eth 1
   318|   316|bridge-path modify gpon 6 onu 29 gem 286 mode flap
   319|   317|
   320|   318|interface modify oob new-ip 10.244.12.254/30
   321|   319|interface add inband ip 10.244.12.250/30 vlan 127
   322|   320|
   323|   321|snmp community add CyberWeb ro
   324|   322|
   325|   323|
   326|   324|route add default 10.244.12.253
   327|   325|
   328|   326|bridge-profile add default-router downlink vlan 121 tagged router gtp 0
   329|   327|bridge-profile add default downlink vlan 121 tagged eth 1 gtp 0
   330|   328|
   331|   329|bridge-profile bind add default-router device intelbras-121w gpon 1
   332|   330|bridge-profile bind add default-router device intelbras-121w gpon 2
   333|   331|bridge-profile bind add default-router device intelbras-121w gpon 3
   334|   332|bridge-profile bind add default-router device intelbras-121w gpon 4
   335|   333|bridge-profile bind add default-router device intelbras-121w gpon 5
   336|   334|bridge-profile bind add default-router device intelbras-121w gpon 6
   337|   335|bridge-profile bind add default-router device intelbras-121w gpon 7
   338|   336|bridge-profile bind add default-router device intelbras-121w gpon 8
   339|   337|bridge-profile bind add default-router device intelbras-1420g gpon 1
   340|   338|bridge-profile bind add default-router device intelbras-1420g gpon 2
   341|   339|bridge-profile bind add default-router device intelbras-1420g gpon 3
   342|   340|bridge-profile bind add default-router device intelbras-1420g gpon 4
   343|   341|bridge-profile bind add default-router device intelbras-1420g gpon 5
   344|   342|bridge-profile bind add default-router device intelbras-1420g gpon 6
   345|   343|bridge-profile bind add default-router device intelbras-1420g gpon 7
   346|   344|bridge-profile bind add default-router device intelbras-1420g gpon 8
   347|   345|bridge-profile bind add default-router device intelbras-121ac gpon 1
   348|   346|bridge-profile bind add default-router device intelbras-121ac gpon 2
   349|   347|bridge-profile bind add default-router device intelbras-121ac gpon 3
   350|   348|bridge-profile bind add default-router device intelbras-121ac gpon 4
   351|   349|bridge-profile bind add default-router device intelbras-121ac gpon 5
   352|   350|bridge-profile bind add default-router device intelbras-121ac gpon 6
   353|   351|bridge-profile bind add default-router device intelbras-121ac gpon 7
   354|   352|bridge-profile bind add default-router device intelbras-121ac gpon 8
   355|   353|bridge-profile bind add default-router device intelbras-120ac gpon 1
   356|   354|bridge-profile bind add default-router device intelbras-120ac gpon 2
   357|   355|bridge-profile bind add default-router device intelbras-120ac gpon 3
   358|   356|bridge-profile bind add default-router device intelbras-120ac gpon 4
   359|   357|bridge-profile bind add default-router device intelbras-120ac gpon 5
   360|   358|bridge-profile bind add default-router device intelbras-120ac gpon 6
   361|   359|bridge-profile bind add default-router device intelbras-120ac gpon 7
   362|   360|bridge-profile bind add default-router device intelbras-120ac gpon 8
   363|   361|bridge-profile bind add default-router device intelbras-142nw gpon 1
   364|   362|bridge-profile bind add default-router device intelbras-142nw gpon 2
   365|   363|bridge-profile bind add default-router device intelbras-142nw gpon 3
   366|   364|bridge-profile bind add default-router device intelbras-142nw gpon 4
   367|   365|bridge-profile bind add default-router device intelbras-142nw gpon 5
   368|   366|bridge-profile bind add default-router device intelbras-142nw gpon 6
   369|   367|bridge-profile bind add default-router device intelbras-142nw gpon 7
   370|   368|bridge-profile bind add default-router device intelbras-142nw gpon 8
   371|   369|bridge-profile bind add default-router device intelbras-142ng gpon 1
   372|   370|bridge-profile bind add default-router device intelbras-142ng gpon 2
   373|   371|bridge-profile bind add default-router device intelbras-142ng gpon 3
   374|   372|bridge-profile bind add default-router device intelbras-142ng gpon 4
   375|   373|bridge-profile bind add default-router device intelbras-142ng gpon 5
   376|   374|bridge-profile bind add default-router device intelbras-142ng gpon 6
   377|   375|bridge-profile bind add default-router device intelbras-142ng gpon 7
   378|   376|bridge-profile bind add default-router device intelbras-142ng gpon 8
   379|   377|bridge-profile bind add default device intelbras-default gpon 1
   380|   378|bridge-profile bind add default device intelbras-default gpon 2
   381|   379|bridge-profile bind add default device intelbras-default gpon 3
   382|   380|bridge-profile bind add default device intelbras-default gpon 4
   383|   381|bridge-profile bind add default device intelbras-default gpon 5
   384|   382|bridge-profile bind add default device intelbras-default gpon 6
   385|   383|bridge-profile bind add default device intelbras-default gpon 7
   386|   384|bridge-profile bind add default device intelbras-default gpon 8
   387|   385|bridge-profile bind add default device intelbras-110 gpon 1
   388|   386|bridge-profile bind add default device intelbras-110 gpon 2
   389|   387|bridge-profile bind add default device intelbras-110 gpon 3
   390|   388|bridge-profile bind add default device intelbras-110 gpon 4
   391|   389|bridge-profile bind add default device intelbras-110 gpon 5
   392|   390|bridge-profile bind add default device intelbras-110 gpon 6
   393|   391|bridge-profile bind add default device intelbras-110 gpon 7
   394|   392|bridge-profile bind add default device intelbras-110 gpon 8
   395|   393|bridge-profile bind add default device intelbras-110b gpon 1
   396|   394|bridge-profile bind add default device intelbras-110b gpon 2
   397|   395|bridge-profile bind add default device intelbras-110b gpon 3
   398|   396|bridge-profile bind add default device intelbras-110b gpon 4
   399|   397|bridge-profile bind add default device intelbras-110b gpon 5
   400|   398|bridge-profile bind add default device intelbras-110b gpon 6
   401|   399|bridge-profile bind add default device intelbras-110b gpon 7
   402|   400|bridge-profile bind add default device intelbras-110b gpon 8
   403|   401|bridge-profile bind add default device intelbras-110g gpon 1
   404|   402|bridge-profile bind add default device intelbras-110g gpon 2
   405|   403|bridge-profile bind add default device intelbras-110g gpon 3
   406|   404|bridge-profile bind add default device intelbras-110g gpon 4
   407|   405|bridge-profile bind add default device intelbras-110g gpon 5
   408|   406|bridge-profile bind add default device intelbras-110g gpon 6
   409|   407|bridge-profile bind add default device intelbras-110g gpon 7
   410|   408|bridge-profile bind add default device intelbras-110g gpon 8
   411|   409|
   412|   410|auto-service disable
   413|   411|yes
   414|   412|
   415|   413|onu set gpon 1 noauto
   416|   414|yes
   417|   415|onu set gpon 2 noauto
   418|   416|yes
   419|   417|onu set gpon 3 noauto
   420|   418|yes
   421|   419|onu set gpon 4 noauto
   422|   420|yes
   423|   421|onu set gpon 5 noauto
   424|   422|yes
   425|   423|onu set gpon 6 noauto
   426|   424|yes
   427|   425|onu set gpon 7 noauto
   428|   426|yes
   429|   427|onu set gpon 8 noauto
   430|   428|yes
   431|   429|
   432|   430|
   433|   431|=========================================
   434|   432|intelbras-olt>
   435|   433|
   436|   434|```
   437|   435|
```

## 🗒️ Observações
- {{notes}}
