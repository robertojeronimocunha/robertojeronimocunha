# Caso ilustrativo: alarme de CNC na troca de ferramenta

Máquina fictícia, TAG `CNC-LAB-01`. Sem fabricante, modelo ou planta. Não é procedimento de intervenção elétrica.

## 1. Alarme

Código de confirmação de ferramenta. A máquina interrompe o ciclo.

## 2. O que apresenta o problema

O magazine / a troca de ferramenta da `CNC-LAB-01`. O eixo de usinagem não é o primeiro suspeito, porque o alarme aponta a confirmação da ferramenta.

## 3. Situação

Durante a troca, antes do corte. A ferramenta tinha sido medida e colocada no pote correspondente. Não houve colisão nem edição de programa nessa parada.

## 4. Evidências

- Histórico: o mesmo código apareceu duas vezes na semana, sempre na troca, nunca em ciclo
- O operador descreve cavaco na região do sensor de confirmação
- A preventiva dessa limpeza estava atrasada no cadastro
- Não há alarme de servo nem de referência na mesma hora

## 5. Causa

O sensor não confirma o assentamento porque há cavaco no ponto de leitura. A hipótese só se mantém se, com a máquina bloqueada e conforme o procedimento dela, a limpeza fizer o sinal voltar. Se não voltar, a causa ainda está aberta: sensor, cabo ou ajuste. Não se troca peça antes dessa prova.

## 6. Correção

Parar e bloquear a máquina. Limpar o ponto de leitura segundo o procedimento do fabricante. Sem procedimento e sem bloqueio, a limpeza não é feita. Este texto não ensina essa intervenção.

## 7. Validação

Alarme limpo, troca de ferramenta concluída em vazio, e uma peça de teste dentro do critério já usado na máquina. O histórico da TAG recebe a causa e a ação.

## 8. Documentação

Código do alarme, fase do ciclo, atraso da preventiva e o que foi validado. Recorrência no mesmo ponto vira revisão do plano, não só mais uma corretiva.

Conceitos de ordem e de plano: [manutenção](../../industrial/maintenance/README.md).
