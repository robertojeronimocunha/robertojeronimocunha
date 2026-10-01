# Caso ilustrativo: banco sem conexão livre

Ambiente fictício. Instância `db.example.com`, PostgreSQL de laboratório. Não há dump, usuário nem parâmetro real.

## 1. Alarme

A aplicação retorna erro de conexão. Parte das telas abre, parte não.

## 2. O que falhou

Novas sessões no banco. A instância está no ar. O disco do servidor não é o primeiro fato, porque o erro fala em conexão.

## 3. Situação

O sintoma cresce ao longo do expediente e melhora depois que o processo da aplicação é reiniciado. Não houve aumento súbito de usuários.

## 4. Evidências

- Log do PostgreSQL recusando conexão por limite de sessões
- Contagem de sessões alta, concentrada no aplicativo `lab-api`
- Sessões antigas, ociosas, da mesma aplicação
- `max_connections` não foi alterado no dia

## 5. Causa

A aplicação abre conexão e não a devolve. Subir `max_connections` esconde o vazamento até o próximo teto, e ainda compete com memória do host.

## 6. Correção

Corrigir o fechamento, ou o pool, na aplicação de laboratório. Revisar o limite só depois que a contagem fica estável, com folga explicada. Reiniciar o processo alivia na hora e não é a correção.

## 7. Validação

Sessões estáveis sob o mesmo uso que antes estourava o limite. A aplicação completa o fluxo que falhava. O log deixa de registrar recusa por excesso de conexões.

## 8. Documentação

Aplicação, sintoma de "melhora ao reiniciar", evidência no log e a decisão de não aumentar o limite como primeira ação.

Consulta ilustrativa, sem dado de catálogo real:

```sql
SELECT count(*) AS sessions, usename, application_name
FROM pg_stat_activity
GROUP BY usename, application_name
ORDER BY sessions DESC;
```
