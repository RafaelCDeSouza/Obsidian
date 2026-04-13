# Vault automation

Arquivos auxiliares para sincronização automática do vault pelo Hermes.

## Script principal
- `sync-vault.sh`

## Comportamento
- faz `fetch`
- faz `pull --rebase --autostash`
- adiciona mudanças
- cria commit se houver alterações locais
- executa `push`
