# Arquitetura — CMMS / EAM

Modelo lógico. Sem tabela física e sem dado de equipamento.

## Entidades

| Entidade | Função |
|---|---|
| Equipamento | O ativo, com TAG estável |
| Local | Onde a máquina está, em cadastro fictício |
| Plano | Tarefa preventiva e periodicidade |
| Ordem de serviço | Preventiva ou corretiva, do pedido ao encerramento |
| Apontamento | Início e fim de parada, espera e reparo |
| Item | Peça ou material ligado à ordem |
| Falha | Sintoma e causa, com vocabulário curto |

## Regras de integridade

- Ordem sem equipamento não entra
- Encerramento sem ação registrada não conta como histórico
- Indicador lê ordem encerrada e apontamento, não texto livre
- TAG não é reaproveitada para outra máquina

## Fluxo

1. A máquina existe no cadastro antes da primeira ordem.
2. A preventiva gera ordem a partir do plano vencido.
3. A corretiva nasce do defeito e da situação.
4. Peça consumida baixa o item e fica no histórico da TAG.
5. MTBF, MTTR e disponibilidade saem dos apontamentos. OEE precisa também de produção, desempenho e qualidade; sem esses três, o índice não é calculado.
