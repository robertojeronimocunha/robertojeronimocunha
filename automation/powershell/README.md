# PowerShell

Scripts locais para Windows. Não alteram serviço, disco nem registro. A saída vai para o console.

## system-info.ps1

Resumo de sistema operacional, processador, memória e volumes fixos.

```powershell
.\system-info.ps1
```

## disk-check.ps1

Encerra com código 1 se algum volume fixo tiver percentual livre abaixo do limite. O padrão é 15.

```powershell
.\disk-check.ps1 -MinFreePercent 15
.\disk-check.ps1 -Drive C -MinFreePercent 20
```

## service-status.ps1

Consulta serviços pelo nome. Não lista todos os serviços da máquina.

```powershell
.\service-status.ps1 -Name Spooler, EventLog
```

Código 0 quando todos estão em execução. Código 1 quando algum está parado ou não existe. Código 2 quando o parâmetro é inválido.
