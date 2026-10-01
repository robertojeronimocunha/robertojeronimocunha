# Linux

Administração de servidores Linux, com uso frequente de Ubuntu Server: serviços, usuários, disco, permissões e leitura de log.

## No dia a dia

- Subir, parar e habilitar unidade pelo systemd, e ler o motivo quando a unidade não sobe
- Separar erro de aplicação, erro de permissão e erro de recurso (disco, memória, arquivo aberto)
- Tratar log como evidência: hora, unidade, mensagem, e o que mudou antes do alarme
- Manter pacote, horário e nome do host coerentes com o papel da máquina

Comandos que costumam abrir o diagnóstico, sempre no host afetado e no horário do evento:

```bash
systemctl status nome-do-servico
journalctl -u nome-do-servico --since "1 hour ago"
df -h
```

## Neste repositório

- [Caso ilustrativo: disco em /var](../../documentation/troubleshooting/linux.md)
- [Checagem de saúde](../../automation/bash/system-health.sh)
- [Checagem de arquivo de backup](../../automation/bash/backup-check.sh)

## Fora deste repositório

Configuração de produção, chaves, usuários internos e endereços reais.
