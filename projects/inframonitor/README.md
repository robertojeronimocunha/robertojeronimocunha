# Planifer InfraMonitor

Dashboard para acompanhamento de infraestrutura de TI.

Este texto cobre o conceito. Não publica tela real, endereço, nome de servidor nem métrica de um ambiente.

## 1. Problema

Infraestrutura espalhada em servidor, backup, link, VPN e log. O sintoma chega por pessoas diferentes, em horários diferentes, sem um lugar único que diga o que está degradado agora.

## 2. Objetivo

Reunir sinais já existentes em um painel: disponibilidade, backup, internet, VPN, logs e indicadores, com alerta quando um sinal cruza o limiar combinado.

## 3. Arquitetura

Coleta, normalização, indicador, painel e alerta. O desenho está em [architecture.md](architecture.md).

O monitor observa. Ele não substitui o backup, o proxy nem o diretório.

## 4. Tecnologias

O conceito conversa com Linux, logs, syslog, dashboards (Grafana entre as ferramentas de visualização), checagem de serviço e registro de backup. A stack fechada da aplicação não é detalhada aqui, para não transformar documentação pública em mapa de um ambiente.

## 5. Implementação

O que este repositório mostra são as verificações que alimentam um painel desse tipo:

- [Saúde do host](../../automation/bash/system-health.sh)
- [Idade de arquivo de backup](../../automation/bash/backup-check.sh)
- [Estado de serviço no Windows](../../automation/powershell/service-status.ps1)
- [Resumo de log](../../automation/python/log-analyzer.py)
- [Alcance TCP](../../automation/python/network-check.py)

A aplicação do dashboard em si não está neste repositório.

## 6. Segurança

Sem credencial no painel público, sem IP real, sem log bruto de produção. Detalhe em [docs/seguranca.md](docs/seguranca.md).

## 7. Resultado

Um lugar para ver o que precisa de ação: serviço fora, backup velho, destino inalcançável, erro crescendo no log. O valor está na triagem, não no gráfico.

## 8. Possíveis melhorias

- Donos explícitos para cada alerta
- Silêncio programado em janela de manutenção
- Histórico de mudança ligado ao horário do alarme
- Prova periódica de que o alerta ainda dispara quando o sinal some de verdade
