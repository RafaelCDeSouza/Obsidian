---
title: Huawei OLT POP13 Havana - Remover e Recriar ONU
type: procedure
vendor: huawei
device_type: olt
location: pop13_havana
status: active
created: 2026-04-13 17:45
updated: 2026-04-13 17:45
tags: [cyber, huawei, olt, onu, havana, procedimento]
source: hermes
---

# Huawei OLT POP13 Havana - Remover e Recriar ONU

## Objetivo
Procedimento específico do POP13 Havana para remover uma ONU existente, ajustar line/srv profile e recriar os bindings necessários.

## Contexto identificado
- equipamento: `POP13_OLT1_HAVANA`
- caso principal: GPON `0/1/12`, ONT `11`
- VLANs envolvidas: `133` e `3907`
- revisão de profile antigo x novo incluída na própria nota

## Fluxo operacional
1. remover `service-port 11`
2. remover `service-port 8`
3. entrar na interface GPON correta
4. apagar a ONT antiga
5. revisar/ajustar line profile
6. revisar/ajustar srv profile
7. recriar service-ports e native-vlans
8. validar serviço após o ajuste

## Pontos críticos
- esta nota mostra troca de mapeamento entre as portas eth 1 e eth 2
- o line-profile 3907 altera a relação entre gems 907 e 133
- o srvprofile também muda o mapeamento q-in-q/translation entre as portas
- não aplicar sem confirmar o comportamento esperado do cliente

## Comandos principais
```text
undo service-port 11
undo service-port 8
interface gpon 0/1
ont delete 12 11
service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate
service-port 11 vlan 3907 gpon 0/1/12 ont 11 gemport 907 multi-service user-vlan 3907 tag-transform translate
ont port native-vlan 12 11 eth 1 vlan 3907 priority 0
ont port native-vlan 12 11 eth 2 vlan 133 priority 0
```

## Teste adicional anotado
A nota também contém um teste em outra Huawei/Sapucaia:
- interface `gpon 0/2`
- `ont add 0 1`
- `service-port 1 vlan 11`

## Comandos brutos preservados
```text

Remover ONU da Huawai


POP13_OLT1_HAVANA(config)#undo service-port 11

POP13_OLT1_HAVANA(config)#undo service-port 8

POP13_OLT1_HAVANA(config)#interface gpon 0/1

POP13_OLT1_HAVANA(config-if-gpon-0/1)#ont delete 12 11 ?
---------------------------------------------
  Command of gpon-0/1 Mode:
---------------------------------------------
<cr>  Please press ENTER to execute command

POP13_OLT1_HAVANA(config-if-gpon-0/1)#ont delete 12 11
  Number of ONTs that can be deleted: 1, success: 1

POP13_OLT1_HAVANA(config-if-gpon-0/1)#



#Adiconar



service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate

service-port 11 vlan 3907 gpon 0/1/12 ont 11 gemport 907 multi-service user-vlan 3907 tag-transform translate




 ont port native-vlan 12 11 eth 1 vlan 3907 priority 0
 ont port native-vlan 12 11 eth 2 vlan 133 priority 0


#Antigo
 ont-lineprofile gpon profile-id 3540 profile-name "LINE_PROFILE_3540"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  tcont 2 dba-profile-id 12
  gem add 133 eth tcont 1 encrypt on
  gem add 907 eth tcont 2 encrypt on
  gem mapping 133 0 vlan 133
  gem mapping 907 0 vlan 3907
  commit
  quit


#novo
 ont-lineprofile gpon profile-id 3907 profile-name "LINE_PROFILE_3907"
  omcc encrypt on
  tcont 1 dba-profile-id 11
  tcont 2 dba-profile-id 12
  gem add 907 eth tcont 1 encrypt on
  gem add 133 eth tcont 2 encrypt on
  gem mapping 133 0 vlan 133
  gem mapping 907 0 vlan 3907
  commit
  quit


#Antigo
 ont-srvprofile gpon profile-id 3907 profile-name "SRVPROFILE_BRIDGE_3907"
  ont-port eth 2
  port vlan eth 1 translation 133 user-vlan 133
  port q-in-q eth 2 enable
  port vlan eth 2 translation 3907 user-vlan 3907
  commit


#Novo
 ont-srvprofile gpon profile-id 3907 profile-name "SRVPROFILE_BRIDGE_3907"
  ont-port eth 2
  port q-in-q eth 1 enable
  port vlan eth 1 translation 3907 user-vlan 3907
  port vlan eth 2 translation 133 user-vlan 133
  commit

service-port 8 vlan 133 gpon 0/1/12 ont 11 gemport 133 multi-service user-vlan 133 tag-transform translate






Teste HUAWAI Sapucaia
interface gpon 0/2
ont add 0 1 sn-auth "52434D471998DDA0" omci ont-lineprofile-id 1 ont-srvprofile-id 1 desc "4651"
service-port 1 vlan 11 gpon 0/2/0 ont 1 gemport 1 multi-service user-vlan 11 tag-transform translate



```
