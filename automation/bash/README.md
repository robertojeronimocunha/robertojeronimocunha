# Bash

Scripts para Linux, com GNU `find` e `stat`. No Windows, o Git Bash costuma atender esse requisito. Não precisam de root.

## system-health.sh

Mostra uso de disco da raiz, memória e carga. A memória usa `MemAvailable` quando o kernel informa; na falta dele, usa `MemFree`. Código 1 se disco ou memória passam do limite.

```bash
bash system-health.sh
bash system-health.sh --disk-threshold 85 --mem-threshold 90
```

Os limites são percentual de uso, de 1 a 99.

## backup-check.sh

Olha arquivos comuns em um diretório, até a profundidade pedida, e compara a idade do mais novo com o limite em horas. Não apaga nada. Recusa a raiz do sistema de arquivos.

```bash
bash backup-check.sh samples/backup-sample --max-age-hours 24
bash backup-check.sh /caminho/dos/arquivos --max-age-hours 24 --max-depth 2
```

A pasta `samples/backup-sample` contém um arquivo de texto só para ensaio. Não é um backup.
