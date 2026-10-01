# Squid

Proxy HTTP para controle de saída e leitura de acesso. O valor operacional está no log: quem pediu o quê, quando, e se a resposta foi negada pela política ou pelo destino.

## Exemplo

A configuração em [examples/configurations/squid-example.conf](../../examples/configurations/squid-example.conf) é de laboratório. A rede de origem é `192.0.2.0/24`. Não há autenticação real, lista de sites internos nem regra copiada de um firewall.

## Leitura de um bloqueio

1. O cliente está na ACL de origem esperada?
2. A porta de destino está entre as permitidas para `CONNECT`?
3. O log mostra `TCP_DENIED` antes de qualquer suspeita sobre o site?
