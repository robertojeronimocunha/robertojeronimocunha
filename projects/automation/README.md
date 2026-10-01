# Automação

Rotinas curtas para o dia a dia de infraestrutura. Cada script roda na máquina local, ou no arquivo e no host informados na hora. Nenhum deles consulta diretório, banco ou compartilhamento de uma empresa.

Os fontes estão em [automation](../../automation/README.md).

## Verificação de disco

**Problema.** O espaço acaba e o serviço cai antes de alguém olhar o volume.

**Automação.** [disk-check.ps1](../../automation/powershell/disk-check.ps1) lista os volumes fixos e termina com erro se o livre ficar abaixo do limite.

**Resultado.** A falta de espaço vira um fato verificável, com código de saída, em vez de um disco cheio descoberto na hora da falha.

## Verificação de serviços

**Problema.** A aplicação não responde e o primeiro dado útil é o estado do serviço, não uma reinicialização no escuro.

**Automação.** [service-status.ps1](../../automation/powershell/service-status.ps1) consulta somente os nomes informados.

**Resultado.** Fica explícito o que está em execução, parado ou ausente, sem varrer todos os serviços da máquina.

## Análise de logs

**Problema.** O arquivo de log cresce e o erro se perde no meio do INFO.

**Automação.** [log-analyzer.py](../../automation/python/log-analyzer.py) e [log-summary.php](../../automation/php/log-summary.php) contam ERROR, WARNING e INFO. A amostra em `automation/python/samples/app-sample.log` é fictícia.

**Resultado.** Dá para ver se o erro aumentou, e ler as últimas linhas daquele nível, antes de mudar configuração.

## Teste de conectividade

**Problema.** "A rede caiu" pode ser nome, rota ou porta. Sem separar isso, a investigação mistura camadas.

**Automação.** [network-check.py](../../automation/python/network-check.py) abre uma única conexão TCP, com tempo limite. Não varre faixa de endereço nem de porta.

**Resultado.** Um destino informado responde ou não, com uma mensagem objetiva.

## Verificação de backup

**Problema.** O job termina com código zero e o arquivo do dia está vazio ou velho.

**Automação.** [backup-check.sh](../../automation/bash/backup-check.sh) confere se existe arquivo recente no diretório indicado. Não apaga e não restaura. Recusa a raiz do sistema de arquivos.

**Resultado.** Sucesso do agendador deixa de ser tratado como prova de backup.

## Coleta de informações do sistema

**Problema.** O diagnóstico começa sem saber sistema, memória e disco da máquina em que se está.

**Automação.** [system-info.ps1](../../automation/powershell/system-info.ps1) no Windows e [system-health.sh](../../automation/bash/system-health.sh) no Linux. Nenhum dos dois envia dado para fora. O script Linux compara disco e memória com um limite.

**Resultado.** Um retrato local do host, útil como evidência inicial, sem inventário de uma rede inteira.

## PowerShell, Python e Bash

| Linguagem | Onde entra |
|---|---|
| PowerShell | Sistema, disco e serviço no Windows |
| Python | Log e alcance TCP, sem biblioteca externa |
| Bash | Saúde do host Linux e idade de arquivo de backup |
| PHP | A mesma contagem de log, em CLI, para rotinas que já usam PHP |
