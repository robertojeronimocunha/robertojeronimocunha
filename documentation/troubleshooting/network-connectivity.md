# Problema

Exemplo didático baseado em situações comuns de infraestrutura. Bloco `192.0.2.0/24` (RFC 5737). Gateway `192.0.2.1`. Host `192.0.2.10`.

## Sintoma

Um posto alcança a rede de forma intermitente. Os postos vizinhos, na mesma sala, não.

## Contexto

O cabo foi para outra tomada. O servidor de destino não foi alterado.

## Evidências

- O posto não alcança `192.0.2.1`
- A tomada atual está na VLAN 20
- O endereço `192.0.2.10` pertence à VLAN 10
- O link físico da porta está ativo

## Hipóteses

- Cabo
- VLAN da porta de acesso
- Serviço de destino

O cabo deixa de ser a causa quando o link está ativo e só um posto falha.

## Investigação

Separar alcance do gateway e VLAN anunciada na porta. Uma mudança por vez.

## Causa

A porta de acesso ficou na VLAN errada. Há link, não há a rede que o endereço espera.

## Correção

Colocar a porta na VLAN 10 do laboratório, ou mover o posto para uma tomada que já esteja nessa VLAN. Não fazer as duas ao mesmo tempo.

## Validação

O posto alcança `192.0.2.1` e a porta do serviço de teste. Os vizinhos seguem como estavam.

## Prevenção

Tomada e VLAN correta registrados quando houver mudança física.

## Lições aprendidas

Link ativo não significa rede certa. O teste de uma porta, sem varrer a rede, está em [network-check.py](../../automation/python/network-check.py). No endereço de documentação a conexão deve falhar. O resultado útil é a mensagem clara.
