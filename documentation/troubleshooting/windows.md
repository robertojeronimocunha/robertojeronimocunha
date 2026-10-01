# Caso ilustrativo: serviço Windows que não sobe

Ambiente fictício. Serviço de exemplo `LabApp`, dependente de `LabDb`. Nenhum dos dois é um serviço real de produto.

## 1. Alarme

A aplicação não responde. O atalho do operador não abre.

## 2. O que falhou

O serviço `LabApp` está parado. A porta da aplicação é consequência.

## 3. Situação

Depois da inicialização do servidor de laboratório. Não houve atualização de aplicação nessa janela.

## 4. Evidências

- `Get-Service LabApp` mostra `Stopped`
- O log do Sistema registra falha de partida por dependência
- `LabDb` também está parado
- Disco e horário do host estão normais

## 5. Causa

`LabApp` não inicia porque a dependência `LabDb` não está em execução. Reiniciar só o `LabApp` repete o mesmo erro.

## 6. Correção

Subir `LabDb`, confirmar que ele permanece em execução, e só então subir `LabApp`. Se `LabDb` cair de novo, a causa ainda está nele: conta de serviço, caminho ou recurso. Isso é outro ciclo de evidência, não um chute na aplicação.

## 7. Validação

Os dois serviços em `Running` e a porta da aplicação aceitando conexão local.

## 8. Documentação

Registrar a dependência e a ordem de subida. Um script de consulta, sem alterar estado, está em [service-status.ps1](../../automation/powershell/service-status.ps1).

```powershell
.\service-status.ps1 -Name EventLog, Spooler
```

O exemplo acima usa serviços comuns do Windows só para demonstrar a consulta. Não faz parte do caso fictício `LabApp`.
