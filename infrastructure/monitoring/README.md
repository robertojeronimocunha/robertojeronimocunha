# Monitoramento

Acompanhamento de infraestrutura por disponibilidade, backup, conectividade, log e indicador. Grafana entra na visualização quando o painel é feito nele. O princípio não depende da ferramenta: um gráfico sem limiar e sem dono não é alerta.

## Sinais que fazem diferença

| Sinal | Pergunta |
|---|---|
| Disponibilidade | O serviço respondeu, ou só o host pingou? |
| Backup | O arquivo existe, tem tamanho e idade aceitáveis? |
| VPN e internet | O caminho externo mudou em relação ao interno? |
| Log | O erro aumentou, ou só o volume de INFO? |
| Alerta | Alguém é dono da resposta, e o alarme repete à toa? |

## Neste repositório

- [Planifer InfraMonitor](../../projects/inframonitor/README.md)
- [Análise de log](../../automation/python/log-analyzer.py)
- [Monitoramento industrial](../../industrial/monitoring/README.md)
