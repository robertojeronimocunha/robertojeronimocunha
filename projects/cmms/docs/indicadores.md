# Indicadores de manutenção

Definições de trabalho. Nenhum valor abaixo é medida de uma fábrica.

## MTBF

Mean Time Between Failures, tempo médio entre falhas. Em equipamento reparável, uma forma usual é:

```text
MTBF = tempo de funcionamento / número de falhas
```

O relógio de funcionamento precisa estar definido: hora de máquina ligada, hora em ciclo, ou hora de calendário. Misturar essas bases invalida a comparação.

## MTTR

Mean Time To Repair, tempo médio para reparo:

```text
MTTR = tempo total de reparo / número de reparos
```

Espera de peça, espera de acesso e tempo de mãos na máquina são coisas diferentes. Se tudo entra no MTTR, o número aponta para o almoxarifado e para a bancada ao mesmo tempo.

## Disponibilidade

Uma forma simples, quando MTBF e MTTR usam a mesma base:

```text
Disponibilidade = MTBF / (MTBF + MTTR)
```

## OEE

Overall Equipment Effectiveness:

```text
OEE = Disponibilidade × Desempenho × Qualidade
```

- Disponibilidade: tempo em que a máquina podia produzir e não estava parada
- Desempenho: ritmo real em relação ao ritmo de referência
- Qualidade: peças boas em relação ao total produzido

OEE sem produção boa e ruim lançadas não é OEE. É outra conta.

## O que o indicador não faz

Não substitui o relato da falha. Um MTBF alto com modo de falha grave e raro ainda pede análise. Um OEE baixo sem separar setup, espera e quebra não diz onde agir.
