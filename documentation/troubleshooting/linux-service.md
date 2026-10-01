# Problema

Exemplo didático baseado em situações comuns de infraestrutura. Host fictício `app-01.example.com`.

## Sintoma

A aplicação não responde. O serviço está parado e o monitoramento aponta o filesystem.

## Contexto

A verbosidade de um serviço foi aumentada. Não houve troca de disco nem publicação de aplicação na mesma janela.

## Evidências

- `systemctl status` mostra a unidade em falha ao gravar
- `df -h` mostra `/var` em 100%
- O crescimento está em um único arquivo em `/var/log`
- Não há regra de `logrotate` efetiva para esse arquivo

## Hipóteses

- Falha da própria aplicação
- Disco sem espaço
- Permissão do diretório de log

A aplicação fica em segundo plano enquanto o filesystem não for lido.

## Investigação

Confirmar o ponto de montagem, o arquivo que cresceu e se a rotação existe. Guardar uma amostra do erro antes de apagar qualquer log.

## Causa

Log sem rotação encheu `/var`, e o serviço deixou de gravar. O processo parado é o efeito.

## Correção

Liberar espaço com rotação do arquivo já fechado, incluir o caminho na política de log e recolher a verbosidade ao nível combinado.

## Validação

`/var` abaixo do limite, unidade ativa e linhas novas entrando em arquivo rotacionado. Repetir a consulta que falhava.

## Prevenção

Alerta de uso de disco e checagem de rotação no mesmo serviço que gera o log. O script [system-health.sh](../../automation/bash/system-health.sh) cobre o limite de uso. Não substitui a política de retenção.

## Lições aprendidas

O alarme da aplicação não é a primeira causa. O que mudou foi a verbosidade. Sem essa situação, o disco vira um palpite.
