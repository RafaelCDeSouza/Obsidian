```scss
onu set gpon 3 onu 1 serial-number ITBS325766FB meprof intelbras-110g
onu set gpon 3 onu 2 serial-number ITBS0A6E43CA meprof intelbras-default
onu set gpon 3 onu 3 serial-number ZNTS2CD282A3 meprof intelbras-default
onu set gpon 3 onu 4 serial-number ITBS8BA5974B meprof intelbras-default
onu set gpon 3 onu 5 serial-number ITBS5B0E71EC meprof intelbras-default
onu set gpon 3 onu 6 serial-number ITBS0D7BFCBC meprof intelbras-default
onu set gpon 3 onu 7 serial-number ITBS443DCCF7 meprof intelbras-default
onu set gpon 3 onu 9 serial-number ITBS441CB667 meprof intelbras-default
onu set gpon 3 onu 10 serial-number RCMG3B9803F1 meprof intelbras-default
onu set gpon 3 onu 12 serial-number ZNTS2C1659EC meprof intelbras-default
onu set gpon 3 onu 13 serial-number ITBS0A6C8D0C meprof intelbras-default
onu set gpon 3 onu 14 serial-number ITBS44A0FB93 meprof intelbras-default
onu set gpon 3 onu 16 serial-number ITBSF1620E9E meprof intelbras-default



onu description add gpon 3 onu 1 text DESCONHECIDO
onu description add gpon 3 onu 2 text Moises_Gomes_dos_Santos - 495442530A6E43CA - Arquivado

onu description add gpon 3 onu 3 text PREF_CLISAM_VLAN_929


onu description add gpon 3 onu 4 text Anne_Caroline_Bandeira_Rutkoski_3 - 495442538BA5974B - ok
onu description add gpon 3 onu 5 text Maria_Luisa_Vicente_Ferreira - 495442535B0E71EC - ok
onu description add gpon 3 onu 6 text Junior_Cezar_Rutkoski - 495442530D7BFCBC - ok

onu description add gpon 3 onu 7 text Anne_Caroline_Bandeira_Rutkoski
onu description add gpon 3 onu 9 text Tatiana_Fontoura_Bauer - Arquivado
onu description add gpon 3 onu 10 text Leandro_da_Silveira_Gabriel - Arquivado


onu description add gpon 3 onu 12 text PREF_EMEI_MARA_MATTOS_VLAN_964_CYBER
onu description add gpon 3 onu 13 text PREF_Secretaria_de_Mun_Esporte_e_Lazer_VLAN_967
onu description add gpon 3 onu 14 text PREF_ESF_Cohab_Casas_VLAN_918
onu description add gpon 3 onu 16 text MIDIANET_FUNDACAO_DE_SAUDE_SAPUCAIA_DO_SUL_VLAN_3540


bridge add gpon 3 onu 1 downlink vlan 251 tagged data eth 1
bridge-path modify gpon 3 onu 1 gem 257 mode flap
bridge add gpon 3 onu 2 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 2 gem 258 mode flap
bridge add gpon 3 onu 3 downlink vlan 929 tagged data eth 1
bridge-path modify gpon 3 onu 3 gem 262 mode flap
bridge add gpon 3 onu 4 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 4 gem 260 mode flap
bridge add gpon 3 onu 5 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 5 gem 259 mode flap
bridge add gpon 3 onu 6 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 6 gem 261 mode flap
bridge add gpon 3 onu 7 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 7 gem 263 mode flap
bridge add gpon 3 onu 9 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 9 gem 268 mode flap
bridge add gpon 3 onu 10 downlink vlan 258 tagged data eth 1
bridge-path modify gpon 3 onu 10 gem 269 mode flap
bridge add gpon 3 onu 12 downlink vlan 964 tagged data eth 1
bridge-path modify gpon 3 onu 12 gem 270 mode flap
bridge add gpon 3 onu 13 downlink vlan 967 tagged data eth 1
bridge-path modify gpon 3 onu 13 gem 271 mode flap
bridge add gpon 3 onu 14 downlink vlan 918 tagged data eth 1
bridge-path modify gpon 3 onu 14 gem 272 mode flap
bridge add gpon 3 onu 16 downlink vlan 3540 tagged data eth 1
bridge-path modify gpon 3 onu 16 gem 273 mode flap

```
