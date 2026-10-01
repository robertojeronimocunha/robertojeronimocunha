# Proxmox

Virtualização com Proxmox: ciclo de vida de máquina virtual, armazenamento e backup do próprio host. ZFS entra como sistema de arquivos e de volume usado nesse contexto.

## O que a operação pede

- Saber qual VM sustenta qual serviço antes de reiniciar um nó
- Tratar snapshot como atalho de retorno, não como backup
- Guardar o backup fora do mesmo disco que será perdido junto com o host
- Depois de restaurar, conferir horário, rede e nome. Diretório e Kerberos sofrem quando o relógio volta errado

Não há aqui cluster, storage real nem identificador de VM.

## Ligações

- [Backup](../backup/README.md)
- [Samba AD e relógio](../samba-ad/README.md)
- [Diagrama de visão geral](../../documentation/architecture/visao-geral.md)
