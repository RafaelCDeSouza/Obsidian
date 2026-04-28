# Tutorial – Como adicionar uma ONU em uma OLT Huawei

---

### 1. Preparação do ambiente
1. **Acesse a OLT** via console (telnet/SSH) com usuário habilitado para configuração.
2. **Identifique o slot GPON** onde a ONU será inserida (ex.: `0/1`, `0/2`, …).
3. **Verifique a disponibilidade de ONUs no slot** – comando de busca de “free slots” costuma aparecer na própria saída de `display ont` ou nas notas de backup (`Backups/OLTs`).

> **Exemplo de saída de slots livres** (extraído da sua nota):
```
Free slots in GPON Link 4:
=======================================
  2   10   12   13   14   15   17   18
 19   21   22   23   24   25   26   27
 …
 88   89   90   91   93   94   95
```
Escolha um **ID de ONT livre** (ex.: `8` ou `88`).

---

### 2. Dados necessários
| Campo | Onde encontrar | Exemplo |
|------|----------------|--------|
| **Serial (SN‑auth)** | Etiqueta da ONU ou listagem de “Discovered serial numbers” (`display ont`) | `465354540000FDDA` |
| **Line‑profile ID** | Sua base de perfis (ex.: `31`, `3907`, `133`) – verifique no arquivo `Switches Huawei … Running Config` ou nas notas de “Configuracoes/OLT Intelbras”. | `31` |
| **Service‑profile ID** | Igual ao line‑profile (geralmente o mesmo ID) ou outro definido na OLT. | `31` |
| **Descrição** | Nome/identificador do cliente. | `Sindicato_Metropolitano` |
| **VLAN de dados** | VLAN que trafega dados do cliente (ex.: `31`) | `31` |
| **VLAN de voz / serviços** (opcional) | Caso haja VLAN separada, use outro ID (ex.: `133`, `3907`). | `133` |

---

### 3. Comandos de adição – Sintaxe padrão Huawei

#### 3.1. Criar a ONU (sn‑auth, line‑profile e srv‑profile)
```text
ont add <slot> <ont-id> sn-auth "<SERIAL>" \
  omci ont-lineprofile-id <LINE_PROFILE_ID> \
  ont-srvprofile-id <SRV_PROFILE_ID> \
  desc "<DESCRICAO>"
```
**Exemplo (slot 0/1, ONU 8, VLAN 31):**
```text
ont add 8 88 sn-auth "465354540000FDDA" \
  omci ont-lineprofile-id 31 ont-srvprofile-id 31 \
  desc "Sindicato_Metropolitano"
```

#### 3.2. Configurar VLAN nativa nas portas Ethernet da ONU
```text
ont port native-vlan <slot> <ont-id> eth <eth-port> vlan <VLAN_ID> priority 0
```
**Exemplo (eth 1 e 2, VLAN 31):**
```text
ont port native-vlan 8 88 eth 1 vlan 31 priority 0
ont port native-vlan 8 88 eth 2 vlan 31 priority 0
```

#### 3.3. Criar *service‑port* (mapa VLAN ↔ GPON ↔ ONT ↔ GEM)
```text
service-port <SP_ID> vlan <VLAN_ID> gpon <slot>/<ont-id> \
  ont <ON_UID> gemport <GEM_ID> multi-service user-vlan <VLAN_ID> \
  tag-transform translate
```
- **`<SP_ID>`** pode ser qualquer número livre (ex.: 3428).
- **`<GEM_ID>`** normalmente coincide com a VLAN (ex.: 31).

**Exemplo:**
```text
service-port 3428 vlan 31 gpon 0/1/8 ont 88 gemport 31 \
  multi-service user-vlan 31 tag-transform translate
```

---

### 4. Verificação pós‑configuração
1. **Listar a ONU criada**
```text
display ont gpon 0/1 ont-id 88
```
2. **Checar os *service‑ports***
```text
display service-port | include 3428
```
3. **Testar conectividade** – ping ou verificação da camada‑2 a partir de um host downstream.

---

### 5. Dicas & Armadilhas (baseadas nas suas notas)
| Dica | Por quê? |
|------|----------|
| **Sempre verifique slots livres antes de escolher o ID** | Evita conflito “ONU already exists”. |
| **Use `undo service-port <id>` antes de recriar** caso esteja refazendo a configuração. | Garante limpeza completa. |
| **Confirme se line‑profile e srv‑profile correspondem** (os IDs devem estar criados na OLT). | Perfis ausentes geram erro “profile not exist”. |
| **Mantenha a consistência de VLAN nas portas `native‑vlan` e no `service‑port`** | Inconsistências causam perda de tráfego ou “tag‑transform” errado. |
| **Documente o serial da ONU antes de aplicar** – nas notas “Free slots in GPON Link” ou “Discovered serial numbers”. | Evita aplicar SN errado em outro cliente. |
| **Para OLT Intelbras** os comandos são diferentes (veja sua anotação “Intelbras” na mesma nota). Não misture. | Cada fornecedor tem sintaxe própria. |
| **Se precisar remover e recriar** siga o fluxo da nota “Huawei OLT - Procedimento Remover e Recriar ONU”: `undo service-port`, `ont delete`, depois repita os passos 3‑1 a 3‑3. | Garante que não restem referências antigas. |

---

### 6. Fluxo resumido (passo‑a‑passo)
| Etapa | Ação |
|------|------|
| 1 | Acesse a OLT (ssh/telnet). |
| 2 | Identifique slot GPON e escolha ID de ONU livre. |
| 3 | Verifique o serial da ONU (SN‑auth). |
| 4 | **`ont add …`** com SN‑auth, line‑profile, srv‑profile, descrição. |
| 5 | **`ont port native‑vlan …`** para cada porta Ethernet da ONU. |
| 6 | **`service‑port …`** para mapear VLAN ↔ GEM ↔ GPON ↔ ONT. |
| 7 | Verifique com `display ont` e `display service-port`. |
| 8 | Teste a conectividade do cliente. |

---

### 7. Exemplo completo (slot 0/1, ONU 8/88)
```text
# 1 – Cria a ONU
ont add 8 88 sn-auth "465354540000FDDA" \
  omci ont-lineprofile-id 31 ont-srvprofile-id 31 \
  desc "Sindicato_Metropolitano"

# 2 – Configura VLAN nativa nas duas portas Ethernet
ont port native-vlan 8 88 eth 1 vlan 31 priority 0
ont port native-vlan 8 88 eth 2 vlan 31 priority 0

# 3 – Cria service‑port (mapa VLAN‑GEM‑GPON‑ONT)
service-port 3428 vlan 31 gpon 0/1/8 ont 88 gemport 31 \
  multi-service user-vlan 31 tag-transform translate
```
---

**Pronto!** A ONU está provisionada e pronta para o cliente. Caso precise remover ou refazer a configuração, siga o procedimento “Remover e Recriar ONU” da sua nota “Huawei OLT - Procedimento Remover e Recriar ONU”.

Se precisar de mais ajustes (VLANs diferentes, perfis específicos, etc.), é só chamar.
