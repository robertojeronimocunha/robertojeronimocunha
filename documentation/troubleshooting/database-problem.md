# Problema

Exemplo didático baseado em situações comuns de infraestrutura. Instância fictícia `db.example.com`. Não há dump, usuário nem parâmetro real.

## Sintoma

A aplicação retorna erro de conexão. Parte das telas abre, parte não.

## Contexto

O sintoma cresce ao longo do expediente e melhora quando o processo da aplicação é reiniciado. Não houve aumento súbito de usuários.

## Evidências

- Log do PostgreSQL recusando conexão por limite de sessões
- Sessões altas, concentradas na aplicação `lab-api`, várias ociosas e antigas
- `max_connections` não foi alterado no dia
- O disco do servidor não é o erro citado no log

## Hipóteses

- Instância fora do ar
- Limite de sessões estourado por vazamento de conexão
- Aumento de carga de usuários

A instância está no ar. A melhora ao reiniciar aponta para sessão que a aplicação não devolve.

## Investigação

Contar sessões por aplicação antes de alterar `max_connections`.

```sql
SELECT count(*) AS sessions, usename, application_name
FROM pg_stat_activity
GROUP BY usename, application_name
ORDER BY sessions DESC;
```

## Causa

A aplicação abre conexão e não a devolve. Subir o limite esconde o vazamento até o próximo teto.

## Correção

Corrigir o fechamento, ou o pool, na aplicação de laboratório. Revisar o limite só depois que a contagem fica estável.

## Validação

Sessões estáveis sob o mesmo uso que antes estourava o limite. O fluxo que falhava completa. O log deixa de registrar recusa por excesso de conexões.

## Prevenção

Alerta de sessões por aplicação, não só de "banco no ar".

## Lições aprendidas

Reiniciar alivia e não corrige. O que mudou não foi o parâmetro do banco. Foi o acúmulo de sessão da aplicação.
