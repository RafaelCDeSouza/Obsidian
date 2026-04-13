---
title: Huawei OLT - Procedimento Remover e Recriar ONU
type: procedure
vendor: huawei
device_type: olt
status: active
created: 2026-04-13 17:45
updated: 2026-04-13 17:45
tags: [cyber, huawei, olt, onu, procedimento]
source: hermes
---

# Huawei OLT - Procedimento Remover e Recriar ONU

## Objetivo
Base operacional para remover e recriar ONUs em OLT Huawei, preservando VLAN, service-port e associação de perfil.

## Quando usar
- troca de ONU
- reprovisionamento de cliente
- ajuste de serial / SN-auth
- correção de service-port e native-vlan

## Cuidados
- conferir GPON, posição da ONU e service-port antes de remover
- validar line-profile e srvprofile antes de recriar
- confirmar VLAN de dados e/ou VLAN de serviço dedicado
- documentar o serial correto antes de aplicar

## Casos presentes nesta nota
- GPON 0/1/6 ONT 57 - CLIENTE_DEDICADO_ADVICEIT
- GPON 0/1/12 ONT 62 - ADVANTA_PONTO3
- GPON 0/1/12 ONT 61 - ADVANTA_PONTO19
- GPON 0/1/13 ONT 5 - DGT_SMSEG333

## Sequência sugerida
1. identificar service-port e ONT atual
2. remover service-port antigo
3. remover ONT antiga, se necessário
4. recriar ONT com `sn-auth`, line profile e service profile corretos
5. recriar `ont port native-vlan`
6. recriar `service-port`
7. validar navegação/serviço no cliente

## Comandos importantes
```text
undo service-port 11
interface gpon 0/1
ont add 6 57 sn-auth "485754431DD9A39B" omci ont-lineprofile-id 3907 ont-srvprofile-id 3907 desc "CLIENTE_DEDICADO_ADVICEIT"
service-port 8 vlan 133 gpon 0/1/6 ont 57 gemport 133 multi-service user-vlan 133 tag-transform translate
service-port 11 vlan 3907 gpon 0/1/6 ont 57 gemport 907 multi-service user-vlan 3907 tag-transform translate
```

## Observações
- a nota mistura múltiplos casos reais; tratar cada bloco antes de reutilizar
- há mais de uma combinação de VLAN/perfil, então não usar como template cego
- vale sempre revisar se o `service-port` removido corresponde mesmo ao cliente em questão

## Comandos brutos preservados
```text
Remover ONU Huawai



undo service-port 11



interface gpon 0/1

ont port native-vlan 6 57 eth 1 vlan 3907 priority 0
ont port native-vlan 6 57 eth 2 vlan 133 priority 0

service-port 8 vlan 133 gpon 0/1/6 ont 57 gemport 133 multi-service user-vlan 133 tag-transform translate
service-port 11 vlan 3907 gpon 0/1/6 ont 57 gemport 907 multi-service user-vlan 3907 tag-transform translate

ont add 6 57 sn-auth "485754431DD9A39B" omci ont-lineprofile-id 3907 ont-srvprofile-id 3907 desc "CLIENTE_DEDICADO_ADVICEIT"











interface gpon 0/1
ont add 12 62 sn-auth "48575443BE89B688" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ADVANTA _PONTO3"

ont port native-vlan 12 62 eth 1 vlan 133 priority 0
ont port native-vlan 12 62 eth 2 vlan 133 priority 0

service-port 261 vlan 133 gpon 0/1/12 ont 62 gemport 133 multi-service user-vlan 133 tag-transform translate





Remover 
undo service-port 260

interface gpon 0/1
ont delete 12 61


ont add 12 61 sn-auth "485754432F15D37D" omci ont-lineprofile-id 133 ont-srvprofile-id 133 desc "ADVANTA _PONTO19"
ont port native-vlan 12 61 eth 1 vlan 133 priority 0

quit
service-port 260 vlan 133 gpon 0/1/12 ont 61 gemport 133 multi-service user-vlan 133 tag-transform translate




0/1/13 5 

interface gpon 0/1
 ont add 13 5 sn-auth "485754431DAB889B" omci ont-lineprofile-id 3107 ont-srvprofile-id 3107 desc "DGT_SMSEG333"
 ont port native-vlan 13 5 eth 1 vlan 3107 priority 0
quit 
 service-port 28 vlan 201 gpon 0/1/13 ont 5 gemport 107 multi-service user-vlan 3107 tag-transform translate

```
