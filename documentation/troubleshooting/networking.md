# Caso ilustrativo: porta de acesso na VLAN errada

Laboratório. Bloco `192.0.2.0/24` (RFC 5737). Gateway `192.0.2.1`. Host `192.0.2.10`.

## 1. Alarme

Um posto alcança a rede de forma intermitente. Outros postos da mesma sala, não.

## 2. O que falhou

O posto `192.0.2.10`. O serviço de destino ainda não é o suspeito, porque os vizinhos o acessam.

## 3. Situação

Depois de uma troca de ponto de rede. O cabo foi para outra tomada. Não houve mudança no servidor.

## 4. Evidências

- O posto não alcança `192.0.2.1`
- A tomada em que ele está está na VLAN 20
- O endereço `192.0.2.10` pertence à VLAN 10
- Contador da porta mostra link físico ativo, então o cabo não está solto

## 5. Causa

A porta de acesso ficou na VLAN errada. Há link, não há a rede que o endereço espera.

## 6. Correção

Colocar a porta na VLAN 10 do laboratório, ou mover o posto para uma tomada que já esteja nessa VLAN. As duas ações não se fazem ao mesmo tempo: uma mudança por vez, para saber qual devolveu o acesso.

## 7. Validação

O posto alcança `192.0.2.1` e a porta do serviço de teste. Os vizinhos continuam como estavam.

## 8. Documentação

Tomada, VLAN correta e o fato de a mudança física ter sido o gatilho.

Para um teste pontual de porta, sem varrer a rede: [network-check.py](../../automation/python/network-check.py).

```bash
python network-check.py 192.0.2.1 443 --timeout 3
```

Nesse endereço de documentação a conexão deve falhar. O resultado útil é a mensagem clara, não um host encontrado.
