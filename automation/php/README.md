# PHP

Um utilitário de linha de comando, em PHP 8, para contar níveis em um arquivo de log. Não usa framework nem extensão além do que vem na CLI.

```bash
php log-summary.php ../python/samples/app-sample.log
```

A saída lista `ERROR`, `WARNING`, `INFO` e `OTHER`. Código 2 quando o arquivo não é informado ou não pode ser lido.
