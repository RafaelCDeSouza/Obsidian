---
name: Backup de Equipamento
created: {{date}}
---

# Backup de {{equipment_name}}

## 📋 Informações do Equipamento
| Campo | Valor |
| ----- | ----- |
| **Nome** | {{equipment_name}} |
| **Tipo** | {{equipment_type}} |
| **Modelo** | {{model}} |
| **Versão de Firmware** | {{firmware_version}} |
| **IP / Endereço** | {{ip_address}} |
| **Local/Área** | {{location}} |
| **Data de Backup** | {{backup_date}} |
| **Responsável** | {{owner}} |

## 🗂️ Arquivo de Configuração
```text
{{config_export}}
```

## 🗒️ Observações
- {{notes}}

---
*Template para padronizar backups de switches, OLTs, roteadores e demais equipamentos de rede. Substitua as variáveis entre `{{ }}` pelos valores correspondentes antes de salvar.*
