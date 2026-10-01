# Problema

Exemplo didático baseado em situações comuns de infraestrutura. Conta de laboratório `lab.user`. Nenhum nome de pessoa real.

## Sintoma

Um usuário não consegue abrir sessão no posto. Os colegas no mesmo posto entram com as próprias contas.

## Contexto

A senha dessa conta venceu no dia anterior. Não houve mudança de imagem nem de política de grupo na janela do chamado.

## Evidências

- O posto autentica outras contas
- O log de segurança registra falha de logon para `lab.user` com senha expirada
- A conta não está desabilitada
- O relógio do posto está alinhado

## Hipóteses

- Posto fora do domínio
- Conta bloqueada ou desabilitada
- Senha expirada

As duas primeiras caem com as evidências acima.

## Investigação

Ler o evento de logon antes de redefinir senha ou reingressar o posto no domínio.

## Causa

A senha da conta expirou. O posto e o domínio estão sãos.

## Correção

Orientar a troca de senha pelo fluxo previsto no laboratório. Não registrar a senha em ticket, script ou repositório.

## Validação

Nova sessão interativa com `lab.user` no mesmo posto, e ausência de novo evento de senha expirada.

## Prevenção

Aviso de expiração antes do vencimento, para a conta não estourar no meio do expediente.

## Lições aprendidas

Se outras contas entram no mesmo posto, o posto deixa de ser o primeiro suspeito. O evento nomeia a conta e o motivo.
