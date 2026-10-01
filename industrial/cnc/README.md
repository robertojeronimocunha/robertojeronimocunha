# CNC

Diagnóstico em máquinas CNC. O curso documentado é Manutenção Mecânica e Eletro-Eletrônica das linhas Discovery Siemens 810D V1.0/V1.1, emitido pela ROMI em junho de 2008. O contexto industrial também inclui Mazak, DMG Mori e Romi. Plantas, parâmetros e programas de máquina não são publicados.

## Ordem de leitura de um alarme

1. Código e texto do alarme, não só o relato de que a máquina "parou".
2. Qual eixo, magazine, spindle ou periférico o comando aponta.
3. Em que movimento ocorreu: usinagem, troca de ferramenta, referenciamento, ciclo de aquecimento.
4. O que mudou antes: ferramenta, programa, colisão, manutenção recente, queda de energia.
5. Histórico de alarmes da mesma máquina, para separar evento novo de recorrência.

O caso ilustrativo está em [documentation/troubleshooting/industrial-machines.md](../../documentation/troubleshooting/industrial-machines.md).

Parâmetro de eixo, ladder e backup de CNC de uma máquina real não entram neste repositório.
