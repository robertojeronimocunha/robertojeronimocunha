# Problema

Exemplo didático baseado em situações comuns de infraestrutura. Diretório fictício `/var/backups/lab`.

## Sintoma

Não houve alarme. O job da noite terminou com código zero. A falha aparece na hora de restaurar um arquivo de teste.

## Contexto

O destino encheu na semana anterior. Houve limpeza parcial. O job voltou a terminar sem erro, e ninguém conferiu o tamanho do arquivo.

## Evidências

- Código de saída 0
- Arquivo do dia com poucos bytes, ou mais velho do que a política
- Arquivo do dia anterior com tamanho habitual
- Log do job sem linha de cópia concluída, apesar do código final

## Hipóteses

- Agendador
- Destino sem espaço
- Caminho de gravação errado

O código zero, sozinho, não escolhe a hipótese.

## Investigação

Idade, tamanho e presença do arquivo, antes de rodar o job de novo.

## Causa

O job trata ausência de erro como sucesso e não verifica tamanho nem idade do resultado.

## Correção

Ajustar destino e retenção. Incluir verificação de presença, tamanho mínimo e idade máxima. Restaurar um arquivo de teste, não só reexecutar o job.

## Validação

Arquivo novo dentro da idade e do tamanho esperados, lido depois de restaurado em outro diretório.

## Prevenção

Política de exemplo em [backup-policy-example.md](../../examples/configurations/backup-policy-example.md). Checagem de idade em [backup-check.sh](../../automation/bash/backup-check.sh). O ensaio do repositório usa `automation/bash/samples/backup-sample`.

## Lições aprendidas

Backup existe quando a restauração foi provada. Código de saída zero não é essa prova.
