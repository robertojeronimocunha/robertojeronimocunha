# Problema

Exemplo didático baseado em situações comuns de infraestrutura. Realm fictício `EXAMPLE.LOCAL`. Host `file-01.example.lan`.

## Sintoma

Usuários não acessam o compartilhamento. A mensagem fala em autenticação, não em permissão de pasta.

## Contexto

A VM ficou desligada e voltou depois de uma restauração. O sintoma começou nesse retorno. A ACL do share não foi alterada.

## Evidências

- Diferença de horário maior que cinco minutos entre o membro e o controlador de laboratório
- Log do Kerberos com erro de skew (`KRB5KRB_AP_ERR_SKEW`)
- O nome do realm continua resolvendo
- A ACL do compartilhamento não mudou

## Hipóteses

- Senha ou grupo
- Relógio
- ACL do share

Senha e ACL só entram se o ticket for emitido.

## Investigação

Comparar os relógios, ler o erro do Kerberos e confirmar que a resolução do realm está estável.

## Causa

Desvio de relógio. O Kerberos recusa o ticket quando a diferença passa da tolerância.

## Correção

Sincronizar o horário com a fonte NTP do laboratório e confirmar que a VM não volta atrasada a cada boot.

## Validação

Relógios alinhados, ticket obtido e acesso ao share de exemplo com a conta de teste.

## Prevenção

Depois de restaurar uma VM de diretório, horário entra na lista de checagem antes de qualquer teste de senha.

## Lições aprendidas

O compartilhamento é onde o sintoma aparece. A causa, neste caso, está no relógio. Não há keytab, senha nem `smb.conf` real neste exemplo.
