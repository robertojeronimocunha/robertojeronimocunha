# Segurança — Planifer InfraMonitor

O dashboard concentra sinal de infraestrutura. Publicado sem cuidado, vira mapa do ambiente. Por isso a versão pública fica no nível de conceito.

## Regras

- Conta de leitura separada da conta que altera serviço
- Segredo fora do código e fora deste repositório
- Log exibido sem senha, token, cookie e linha de configuração sensível
- Alerta com o mínimo de detalhe necessário para achar o componente
- Acesso ao painel restrito; este GitHub não é o painel

## Exemplos

Os scripts ligados ao projeto consultam a máquina local ou um host informado na hora. Nenhum deles embute destino, usuário ou chave.
