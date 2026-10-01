# Automação de tarefas administrativas

Rotinas de apoio à operação de TI: consultar sistema, ver disco, ver serviço, ler log, testar uma porta e conferir se um arquivo de backup ainda está dentro da idade.

Os exemplos publicáveis estão em [automation](../../automation/README.md). Eles não conversam com diretório, banco ou compartilhamento de uma empresa. Processam a máquina local ou o arquivo e o host que você passar.

| Situação | Script |
|---|---|
| Resumo de hardware e sistema no Windows | [system-info.ps1](../../automation/powershell/system-info.ps1) |
| Espaço livre | [disk-check.ps1](../../automation/powershell/disk-check.ps1) |
| Serviço Windows | [service-status.ps1](../../automation/powershell/service-status.ps1) |
| Saúde de host Linux | [system-health.sh](../../automation/bash/system-health.sh) |
| Idade de arquivo de backup | [backup-check.sh](../../automation/bash/backup-check.sh) |
| Contagem em log | [log-analyzer.py](../../automation/python/log-analyzer.py) e [log-summary.php](../../automation/php/log-summary.php) |
| Alcance TCP de um destino | [network-check.py](../../automation/python/network-check.py) |

Integração entre sistemas, quando existir material público e sanitizado, deve entrar aqui como descrição. Não como configuração real.
