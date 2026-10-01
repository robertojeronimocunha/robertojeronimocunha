# Política de backup — exemplo

Texto de laboratório. Não descreve rotina, mídia nem site de nenhuma organização.

## Escopo fictício

- Origem: `/srv/example`
- Destino primário: outro volume, no mesmo laboratório lógico
- Destino secundário: cópia fora desse volume
- Retenção: 7 cópias diárias e 4 semanais

## O job só conta como bom se

- o arquivo do dia existe
- o tamanho é compatível com o habitual
- a idade está dentro de 24 horas para a cópia diária
- uma amostra foi restaurada e lida no último ciclo de teste

Código de saída zero, sozinho, não atende a política.

## Ensaio

O script [backup-check.sh](../../automation/bash/backup-check.sh) cobre presença e idade. Ele não restaura e não mede o tamanho habitual. Essas duas provas continuam manuais neste exemplo.
