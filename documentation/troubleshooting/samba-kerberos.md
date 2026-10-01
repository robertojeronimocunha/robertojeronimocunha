# Caso ilustrativo: logon Samba AD e relógio

Ambiente fictício. Realm `EXAMPLE.LOCAL`. Host `file-01.example.lan`.

## 1. Alarme

Usuários não acessam o compartilhamento. A mensagem fala em autenticação, não em permissão de pasta.

## 2. O que falhou

A emissão de ticket Kerberos no membro `file-01.example.lan`. O share é o lugar onde o sintoma aparece.

## 3. Situação

A VM tinha ficado desligada e foi religada depois de uma restauração. O sintoma começou nesse retorno, não depois de uma mudança de ACL.

## 4. Evidências

- Diferença de horário maior que cinco minutos entre o membro e o controlador de domínio de laboratório
- Log do Kerberos com erro de skew (`KRB5KRB_AP_ERR_SKEW`)
- Resolução do nome do realm continua correta
- A ACL do share não foi alterada

## 5. Causa

Desvio de relógio. O Kerberos recusa o ticket quando a diferença passa da tolerância. Senha e grupo, nesse caso, nem chegaram a ser avaliados.

## 6. Correção

Sincronizar o horário com a fonte NTP do laboratório e confirmar que a VM não volta com o relógio atrasado a cada boot. Só então, se o logon ainda falhar, olhar conta e ACL.

## 7. Validação

Horários alinhados, obtenção de ticket bem-sucedida e acesso ao share de exemplo com a conta de teste.

## 8. Documentação

Anotar o desvio encontrado, a fonte de tempo e o fato de a restauração ter sido o gatilho. Restauração de VM de diretório entra na lista de checagens de horário.

Não há keytab, senha nem `smb.conf` real neste caso.
