# Caso ilustrativo: backup com sucesso e arquivo inútil

Ambiente fictício. Diretório `/var/backups/lab`. Nenhum arquivo real é usado.

## 1. Alarme

Não houve alarme. O job da noite terminou com código zero. O problema aparece na hora de restaurar um arquivo de teste.

## 2. O que falhou

O artefato do backup, não o agendador. O agendador só provou que o processo saiu sem erro.

## 3. Situação

O destino encheu na semana anterior. Alguém limpou espaço parcial. O job voltou a "passar" sem que o tamanho do arquivo fosse conferido.

## 4. Evidências

- Código de saída 0
- Arquivo do dia com poucos bytes, ou mais velho do que a política
- Arquivo do dia anterior com tamanho habitual
- Log do job sem linha de cópia concluída, apesar do código final

## 5. Causa

O job trata ausência de erro do comando como sucesso e não verifica tamanho nem idade do resultado. O destino sem espaço gerou um arquivo vazio, e a checagem não olhou para ele.

## 6. Correção

Ajustar o destino e a retenção. Incluir verificação de presença, tamanho mínimo e idade máxima. Rodar uma restauração de um arquivo de teste, não só uma nova execução do job.

## 7. Validação

Arquivo novo dentro da idade e do tamanho esperados, e leitura desse arquivo restaurado em outro diretório.

## 8. Documentação

Política de exemplo: [backup-policy-example.md](../../examples/configurations/backup-policy-example.md). Checagem de idade: [backup-check.sh](../../automation/bash/backup-check.sh).

```bash
./backup-check.sh /var/backups/lab --max-age-hours 24
```

O caminho acima é ilustrativo. No repositório, o ensaio usa `automation/bash/samples/backup-sample`.
