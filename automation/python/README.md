# Python

Scripts de biblioteca padrão. Python 3.9 ou superior.

## log-analyzer.py

Conta `ERROR`, `WARNING`, `INFO` e o restante. Pode mostrar as últimas linhas de um nível. Recusa arquivo acima de 50 MB.

```bash
python log-analyzer.py samples/app-sample.log
python log-analyzer.py samples/app-sample.log --level ERROR --tail 5
```

A amostra em `samples/app-sample.log` é fictícia.

## network-check.py

Abre uma conexão TCP com um único host e uma única porta. Não varre faixa de endereços nem de portas. O tempo limite fica entre 1 e 30 segundos.

```bash
python network-check.py example.com 443
python network-check.py 192.0.2.1 443 --timeout 3
```

`192.0.2.1` é endereço de documentação (RFC 5737). A conexão deve falhar, e o script deve dizer isso com código 1.

Código 0 quando a porta aceita a conexão. Código 1 quando não aceita. Código 2 quando o uso está errado.
