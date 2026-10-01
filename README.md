# Roberto Jeronimo da Cunha

**Técnico de Manutenção Eletrônica · Gestão de TI e Infraestrutura · Manutenção Industrial · Automação**

[English](README.en.md)

Trabalho com infraestrutura de TI e manutenção industrial desde 2006. A atuação junta administração de servidores Linux, redes, automação e o chão de fábrica: máquinas, manutenção e a integração entre os dois ambientes. O ponto de partida é sempre o fato observado, não a suposição.

![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=flat-square&logo=powershell&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-777BB4?style=flat-square&logo=php&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![Proxmox](https://img.shields.io/badge/Proxmox-E57000?style=flat-square&logo=proxmox&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)

## Índice

- [Sobre mim](#sobre-mim)
- [O que eu faço](#o-que-eu-faco)
- [Tecnologias](#tecnologias)
- [Projetos](#projetos)
- [Troubleshooting e resolução de problemas](#troubleshooting)
- [Conhecimento técnico](#conhecimento-tecnico)
- [Atualmente estudando](#atualmente-estudando)
- [Formação](#formacao)
- [Como eu trabalho](#como-eu-trabalho)
- [Repositório](#repositorio)

<a id="sobre-mim"></a>

## Sobre mim

Experiência profissional desde 2006, com formação em Ciência da Computação e formação técnica em Informática Industrial.

O percurso cobre infraestrutura de TI, administração de servidores Linux, redes, segurança operacional, automação de rotinas e desenvolvimento de ferramentas. No ambiente industrial, inclui manutenção eletrônica, máquinas CNC, gestão de manutenção e a integração entre TI e operação.

Na prática, isso aparece como troubleshooting: ler o alarme, situar o que falhou, reunir evidência e só então corrigir.

<a id="o-que-eu-faco"></a>

## O que eu faço

<table>
  <tr>
    <td valign="top" width="33%">
      <h3>Infrastructure &amp; IT</h3>
      <ul>
        <li>Linux Server</li>
        <li>Samba Active Directory</li>
        <li>Networking</li>
        <li>DNS</li>
        <li>DHCP</li>
        <li>Proxy</li>
        <li>Firewall</li>
        <li>VPN</li>
        <li>Backup</li>
        <li>Monitoring</li>
        <li>Virtualization</li>
      </ul>
    </td>
    <td valign="top" width="33%">
      <h3>Development &amp; Automation</h3>
      <ul>
        <li>Python</li>
        <li>PowerShell</li>
        <li>Bash</li>
        <li>PHP</li>
        <li>JavaScript</li>
        <li>PostgreSQL</li>
        <li>APIs</li>
        <li>Aplicações web</li>
        <li>Automação</li>
      </ul>
    </td>
    <td valign="top" width="33%">
      <h3>Industrial</h3>
      <ul>
        <li>CNC</li>
        <li>Manutenção industrial</li>
        <li>Manutenção preventiva</li>
        <li>Manutenção corretiva</li>
        <li>Sistemas elétricos</li>
        <li>Eletrônica</li>
        <li>Redes industriais</li>
        <li>Indústria 4.0</li>
        <li>CMMS / EAM</li>
      </ul>
    </td>
  </tr>
</table>

JavaScript entra no conjunto usado em aplicações web. Não é o centro da atuação, que está em infraestrutura, automação e manutenção.

<a id="tecnologias"></a>

## Tecnologias

A lista reúne tecnologias de trabalho e de estudo. A profundidade não é a mesma em todos os itens.

### Sistemas operacionais

Linux · Ubuntu Server · Windows Server · Windows

### Infraestrutura

Samba AD · DNS · DHCP · Nginx · Squid · Proxmox · ZFS

### Redes

MikroTik · VLAN · VPN · TCP/IP · Routing · Switching

### Desenvolvimento

Python · PHP · PowerShell · Bash · JavaScript · SQL

### Bancos de dados

PostgreSQL · SQL Server

### Monitoramento

Grafana · dashboards · logs · Syslog · sistemas de monitoramento

### Industrial

CNC · Siemens · Mazak · DMG Mori · Romi · sistemas de manutenção

<a id="projetos"></a>

## Projetos

Os textos descrevem problema, arquitetura e resultado esperado. Código de aplicação, topologia e dados de operação não são publicados.

### Planifer InfraMonitor

Dashboard para acompanhar a infraestrutura de TI: servidores, disponibilidade, backups, internet, VPN, logs, indicadores e alertas.

[Problema, arquitetura e limites](projects/inframonitor/README.md)

### CMMS / EAM para manutenção industrial

Gestão de máquinas e equipamentos: cadastro, TAG, planos preventivos, corretivas, ordens de serviço, histórico, estoque e indicadores (MTBF, MTTR, OEE).

[Problema, arquitetura e indicadores](projects/cmms/README.md)

### Automação de tarefas administrativas

Rotinas em PowerShell, Python e Bash para consulta de sistema, checagem de disco, serviço, log, alcance de rede e idade de arquivo de backup. Os scripts deste repositório rodam sozinhos, sem depender de uma rede real.

[Exemplos publicáveis](projects/other/README.md)

<a id="troubleshooting"></a>

## Troubleshooting e resolução de problemas

Investigar bem vale mais do que acertar uma troca no escuro. O diagnóstico começa pelo alarme e pelas evidências. A hipótese vem depois, e só permanece se os fatos a sustentam.

1. Identificar o alarme
2. Identificar o que está apresentando o problema
3. Entender em que situação ocorreu
4. Levantar evidências
5. Identificar a causa
6. Corrigir
7. Validar
8. Documentar

```mermaid
flowchart TD
  A[Alarme] --> B[O que falhou]
  B --> C[Em que situação]
  C --> D[Evidências]
  D --> E[Causa]
  E --> F[Correção]
  F --> G[Validação]
  G --> H[Documentação]
```

Casos ilustrativos, com nomes e endereços fictícios:

- [Linux](documentation/troubleshooting/linux.md)
- [Samba / Kerberos](documentation/troubleshooting/samba-kerberos.md)
- [Windows](documentation/troubleshooting/windows.md)
- [Redes](documentation/troubleshooting/networking.md)
- [Backup](documentation/troubleshooting/backup.md)
- [Banco de dados](documentation/troubleshooting/database.md)
- [Máquinas industriais](documentation/troubleshooting/industrial-machines.md)

[Método completo](documentation/troubleshooting/README.md)

<a id="conhecimento-tecnico"></a>

## Conhecimento técnico

| Área | Conhecimentos |
|---|---|
| Linux | Ubuntu Server, serviços, logs, systemd |
| Windows | Windows Server, PowerShell, GPO |
| Active Directory | Samba AD, DNS, Kerberos |
| Networking | TCP/IP, VLAN, VPN, routing |
| Virtualização | Proxmox, máquinas virtuais |
| Storage | ZFS, backup, recuperação |
| Desenvolvimento | Python, PHP, Bash, PowerShell |
| Banco de dados | PostgreSQL, SQL Server |
| Industrial | CNC, manutenção, eletrônica |
| Monitoramento | dashboards, logs, alertas |
| Segurança | hardening, controle de acesso, backups |

<a id="atualmente-estudando"></a>

## Atualmente estudando

Temas em estudo. Conclusão e instituição não são afirmadas quando essa informação não está disponível.

- MBA em Gestão da Manutenção, em andamento
- Gestão industrial
- Data Science e Analytics
- Indústria 4.0
- Lean Manufacturing
- TPM
- OEE
- Supply Chain
- Gestão da produção

[Notas de estudo](documentation/studies/README.md)

<a id="formacao"></a>

## Formação

- Bacharelado em Ciência da Computação
- Técnico em Informática Industrial
- MBA / pós-graduação em Gestão da Manutenção, em andamento

Instituição, ano e certificado não são informados aqui.

<a id="como-eu-trabalho"></a>

## Como eu trabalho

- Entender o problema antes de agir
- Trabalhar com evidências
- Documentar o que foi visto e o que foi feito
- Automatizar tarefa repetitiva quando isso reduz erro
- Buscar a causa, não só o sintoma
- Reduzir indisponibilidade com correção que se sustenta
- Preferir solução simples de operar e de manter
- Integrar tecnologia com a operação
- Transformar problema recorrente em processo

<a id="repositorio"></a>

## Repositório

| Pasta | Conteúdo |
|---|---|
| [infrastructure](infrastructure/README.md) | Linux, Samba AD, redes, Proxmox, backup, monitoramento, Squid |
| [automation](automation/README.md) | Exemplos em PowerShell, Python, Bash e PHP |
| [industrial](industrial/README.md) | Manutenção, CNC, monitoramento industrial, Indústria 4.0 |
| [projects](projects/README.md) | InfraMonitor, CMMS e automações |
| [documentation](documentation/README.md) | Troubleshooting, arquitetura, procedimentos, estudos |
| [examples](examples/README.md) | Configurações e diagramas de laboratório |

Os exemplos usam apenas referências de documentação: `example.com`, `192.0.2.0/24`, `198.51.100.0/24`, `203.0.113.0/24` e `10.0.0.0/24`.

O código de exemplo está sob a licença [MIT](LICENSE).

Textos sugeridos para bio, descrição e links do perfil: [documentation/profile-github.md](documentation/profile-github.md).
