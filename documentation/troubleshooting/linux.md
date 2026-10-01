# Caso ilustrativo: disco cheio em /var

Ambiente fictício. Host `app-01.example.com`.

## 1. Alarme

Aplicação fora do ar. O monitoramento aponta o filesystem.

## 2. O que falhou

O host `app-01.example.com`, ponto de montagem `/var`. O processo da aplicação é o efeito, não o primeiro fato.

## 3. Situação

O volume de log subiu depois que a verbosidade de um serviço foi aumentada. Não houve mudança de disco nem de aplicação na mesma janela.

## 4. Evidências

- `df -h` mostra `/var` em 100%
- O maior crescimento está em `/var/log`, em um único arquivo do serviço
- `systemctl status` do serviço mostra falha ao gravar
- `logrotate` não tem regra para esse arquivo, ou a regra não rodou

## 5. Causa

Log sem rotação ocupou o filesystem do qual o serviço também depende para escrever.

## 6. Correção

Liberar espaço com rotação e compressão do arquivo já fechado, incluir o caminho na política de log e recolocar o limite de verbosidade combinado. Apagar log às cegas, sem guardar uma amostra do erro, destrói a evidência.

## 7. Validação

`/var` abaixo do limiar, serviço ativo, novas linhas entrando em arquivo rotacionado. Repetir a consulta que falhava.

## 8. Documentação

Registrar o serviço, o caminho, a regra de retenção e o motivo do aumento de verbosidade.

Script relacionado, para o limite de uso: [system-health.sh](../../automation/bash/system-health.sh).
