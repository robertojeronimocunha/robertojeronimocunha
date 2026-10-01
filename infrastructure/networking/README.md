# Redes

Administração de rede em TCP/IP: endereçamento, VLAN, routing, switching, VPN, DNS e DHCP. MikroTik faz parte das plataformas usadas nesse tipo de trabalho.

## Como o problema costuma ser separado

1. O host resolve o nome esperado?
2. Há caminho até o gateway da rede dele?
3. A porta de acesso está na VLAN anunciada?
4. O serviço de destino escuta a porta, ou só a rede chegou até o host?
5. VPN e proxy estão no caminho, e o sintoma muda sem eles?

Endereços usados nos textos: `10.0.0.0/24`, `192.0.2.0/24`, `198.51.100.0/24`, `203.0.113.0/24`. São blocos de documentação, não topologia de uma rede.

## Neste repositório

- [Caso ilustrativo: VLAN](../../documentation/troubleshooting/networking.md)
- [Teste de alcance TCP](../../automation/python/network-check.py)
- [Proxy de laboratório](../squid/README.md)

## Fora deste repositório

Mapa real, regras de firewall em uso, credenciais de equipamento e endereços públicos.
