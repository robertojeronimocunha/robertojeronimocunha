# Repositório público

Este GitHub é público. O critério de publicação é simples: se o dado identifica uma rede, uma pessoa ou um segredo, ele não entra.

## Não publicar

- senha, token, chave de API, `.env`
- chave SSH e certificado privado
- IP público real e topologia interna
- endereço, usuário interno, cliente, funcionário
- documento pessoal, CPF, RG, telefone, e-mail privado
- dado comercial, dump, backup, regra real de firewall

## Substitutos

| No lugar de | Usar |
|---|---|
| Domínio | `example.com` |
| E-mail | `usuario@example.com` |
| Rede de documentação | `192.0.2.0/24`, `198.51.100.0/24`, `203.0.113.0/24` |
| Rede privada de exemplo | `10.0.0.0/24` |
| Realm | `EXAMPLE.LOCAL` |

`192.0.2.0/24`, `198.51.100.0/24` e `203.0.113.0/24` são blocos reservados pela RFC 5737 para documentação.

## Antes de um commit

Procurar credencial, arquivo de backup e nome que só faz sentido dentro de uma empresa. Na dúvida, o exemplo fictício fica; o original não.
