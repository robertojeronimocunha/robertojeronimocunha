# CMMS / EAM para manutenção industrial

Sistema de gestão de manutenção de máquinas e equipamentos. CMMS (Computerized Maintenance Management System) e EAM (Enterprise Asset Management) nomeiam esse tipo de controle: ativo, plano, ordem e histórico.

A aplicação não é publicada aqui. O texto registra o problema e o modelo.

## 1. Problema

A manutenção perde o fio quando a máquina não tem cadastro estável, a preventiva vive em planilha solta e a corretiva não volta para o histórico. O indicador, nesse cenário, mede o lançamento faltante, não a máquina.

## 2. Objetivo

Registrar máquina, TAG, plano preventivo, corretiva, ordem de serviço, peça, parada e indicador a partir do mesmo cadastro.

## 3. Arquitetura

```mermaid
flowchart LR
  asset[Máquina e TAG]
  plan[Plano preventivo]
  wo[Ordem de serviço]
  hist[Histórico]
  kpi[MTBF, MTTR, OEE]
  asset --> plan --> wo --> hist --> kpi
```

O detalhe está em [architecture.md](architecture.md). As fórmulas, com o cuidado de não apresentar número de planta, estão em [docs/indicadores.md](docs/indicadores.md).

## 4. Tecnologias

Modelagem relacional, com PostgreSQL como banco usado nesse tipo de sistema, e interface web. SQL Server aparece no conjunto de bancos com os quais há trabalho; não é descrito um servidor específico.

## 5. Implementação

Entidades mínimas: equipamento, TAG, plano, ordem de serviço, apontamento de parada, item de estoque e vínculo entre eles. Sem esse vínculo, MTBF e MTTR não fecham.

Não há schema, dump nem massa de dados neste repositório.

## 6. Segurança

Cadastro industrial também é informação de operação. Ficam de fora: patrimônio real, número de série, layout, nome de operador e estoque.

## 7. Resultado

Histórico por máquina, preventiva que mostra atraso, corretiva que deixa causa e ação, e indicador calculado sobre evento lançado.

## 8. Possíveis melhorias

- Modo de falha padronizado, para a recorrência aparecer
- Leitura de estado da máquina, quando o sinal for confiável
- Separação clara entre tempo de espera de peça e tempo de reparo
- Revisão periódica do plano, não só cumprimento do calendário
