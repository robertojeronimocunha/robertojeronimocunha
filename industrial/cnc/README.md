# CNC

Diagnóstico em máquinas CNC. Fabricantes presentes nesse contexto: Siemens, Mazak, DMG Mori e Romi. Modelos, plantas e programas não são citados.

## Ordem de leitura de um alarme

1. Código e texto do alarme, não só o relato de que a máquina "parou".
2. Qual eixo, magazine, spindle ou periférico o comando aponta.
3. Em que movimento ocorreu: usinagem, troca de ferramenta, referenciamento, ciclo de aquecimento.
4. O que mudou antes: ferramenta, programa, colisão, manutenção recente, queda de energia.
5. Histórico de alarmes da mesma máquina, para separar evento novo de recorrência.

O caso ilustrativo está em [documentation/troubleshooting/industrial-machines.md](../../documentation/troubleshooting/industrial-machines.md).

Parâmetro de eixo, ladder e backup de CNC de uma máquina real não entram neste repositório.
