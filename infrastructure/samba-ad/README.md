# Samba Active Directory

Operação de diretório com Samba AD: identidade, DNS integrado e Kerberos. O relógio entra nessa lista porque o ticket depende dele.

## Pontos de atenção

- O domínio de exemplo usado na documentação é `EXAMPLE.LOCAL`. Ele não existe.
- Resolução de nome e horário coerente vêm antes de culpar senha ou perfil.
- Falha de logon depois de uma máquina ficar desligada por muito tempo, ou depois de restaurar uma VM, pede leitura do desvio de relógio e do log do Kerberos.
- Compartilhamento é consequência da autenticação. Se o ticket não é emitido, a ACL do share ainda não é a pergunta.

## Neste repositório

- [Caso ilustrativo: desvio de relógio](../../documentation/troubleshooting/samba-kerberos.md)
- [Share fictício](../../examples/configurations/samba-share-example.conf)
- [Zona DNS de laboratório](../../examples/configurations/example.com.zone)

## Fora deste repositório

`smb.conf` real, senha de bind, keytab, SYSVOL de produção e relação de confiança com outro diretório.
