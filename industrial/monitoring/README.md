# Monitoramento industrial

Leitura de estado de máquina e de manutenção para decidir, não para enfeitar um painel. Um sinal útil diz o que parou, desde quando, e se isso já tem ordem de serviço.

## O que observar

- Máquina em produção, em setup ou parada
- Alarme ativo e a hora em que entrou
- Preventiva vencida
- Tempo de reparo em aberto
- Repetição do mesmo modo de falha

A ponte com a infraestrutura de TI está em [documentation/architecture/visao-geral.md](../../documentation/architecture/visao-geral.md). Indicadores de manutenção estão em [projects/cmms/docs/indicadores.md](../../projects/cmms/docs/indicadores.md).

Não há coleta de CLP, endereço de rede de máquina nem série temporal real.
