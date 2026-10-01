# Roberto Jeronimo da Cunha

**IT & Infrastructure | Industrial Maintenance | Automation | Troubleshooting**

I have worked in IT infrastructure and industrial maintenance since 1998, and at Planifer Ferramentaria e Estamparia since March 2006. The work joins Linux, networks, automation, and the shop floor: electrical power, compressed air, machines, and maintenance.

Diagnosis comes before the swap. The alarm, the situation, and the evidence define the cause. The fix comes after that.

Campinas, São Paulo, Brazil

[Português](README.md) · [LinkedIn](https://www.linkedin.com/in/robertojeronimo/) · roberto@cunha.net.br

![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=flat-square&logo=powershell&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-777BB4?style=flat-square&logo=php&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![Proxmox](https://img.shields.io/badge/Proxmox-E57000?style=flat-square&logo=proxmox&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white)

## Contents

- [About](#about)
- [How I approach a problem](#how-i-approach-a-problem)
- [How I work](#how-i-work)
- [Experience](#experience)
- [What I do](#what-i-do)
- [Technologies](#technologies)
- [Projects](#projects)
- [Troubleshooting](#troubleshooting)
- [Technical background](#technical-background)
- [Currently studying](#currently-studying)
- [Education](#education)
- [Certifications](#certifications)
- [Languages](#languages)
- [What is not published](#what-is-not-published)
- [Repository](#repository)

## About

Bachelor's degree in Computer Science and a technical qualification in Industrial Informatics from Centro Universitário Salesiano de São Paulo (UNISAL). The path runs through support, electronics maintenance, Linux infrastructure, Samba Active Directory, Python and PHP development, and the integration of IT with industrial maintenance.

<a id="how-i-approach-a-problem"></a>

## How I approach a problem

The diagnosis comes before the solution. I do not start by swapping parts or by trying fixes at random.

```text
ALARM
   ↓
WHAT happened?
   ↓
IN WHAT situation?
   ↓
EVIDENCE
   ↓
CAUSE
   ↓
CORRECTION
   ↓
VALIDATION
   ↓
DOCUMENTATION
```

```mermaid
flowchart TD
  A[Alarm] --> B[What happened]
  B --> C[In what situation]
  C --> D[Evidence]
  D --> E[Cause]
  E --> F[Correction]
  F --> G[Validation]
  G --> H[Documentation]
```

Before acting, I identify who raised the alarm, which equipment or service, in what situation, what evidence exists, what changed, the likely cause, and how the correction will be validated. A hypothesis stays only if the facts support it.

[Worked examples](documentation/troubleshooting/README.md)

## How I work

Understand what the operation needs, and act ahead of it. The infrastructure that keeps the plant running is one system: electrical power, compressed air, and IT. Do not wait for the machine or the service to stop. See what is forming and act before the problem happens or gets worse.

- Read the need before building the solution
- Treat electrical power, compressed air, and IT as parts of the same process
- Act on a weak signal, a drift, or a recurrence while there is still room to maneuver
- Confirm with evidence, correct the cause, and record what was seen

## Experience

### Planifer Ferramentaria e Estamparia

Industrial Maintenance Technician · IT Infrastructure and Automation

March 2006 — present · Campinas region

- Administration and evolution of Linux servers used as the base for authentication, files, applications, proxy, and the rest of the infrastructure, including migration of critical services to Ubuntu Server and Samba Active Directory
- Central authentication, access policy, and permissions
- Mail (Postfix), proxy (Squid), VPN (OpenVPN), DNS, and file shares
- Corporate information access rebuilt around a web application, replacing exposed shares
- A NOC for continuous monitoring of the infrastructure and of network performance
- Applications in Python (FastAPI, Selenium) and PHP (HTMX, DataTables), integrated with SQL Server and Supabase
- Tools for monitoring, inventory, industrial maintenance, and system integration
- PowerShell automation, JSON/UTF-8 logs, and an audit trail
- Technical leadership and mentoring during incident response
- Technical interface in aerospace customer audits against AS9100 and NADCAP
- Technical and financial feasibility studies (CAPEX/OPEX) for infrastructure and energy efficiency

### Liceu Coração de Jesus

Electronics Maintenance Technician

April 2002 — March 2006 · Campinas region

Continuation of the infrastructure started at Escola Salesiana São José, for the same academic community.

- Administration and support of the Novell NetWare infrastructure
- Email accounts, users, and access policy for more than 1,000 students, teachers, and administrative staff
- Preventive maintenance of computer labs and support for administrative areas
- Standard operating system images for workstation installation and recovery

### Escola Salesiana São José

Electronics Maintenance Technician

September 2001 — April 2002 · Campinas region

- Network administration on Novell NetWare
- Users, email accounts, and permissions
- Support for computer labs and administrative areas
- Preventive and corrective maintenance of computers and peripherals

### A. Carvalho & Souza Ltda

Computer Technician

January 2001 — September 2001 · Campinas region

- Preventive and corrective maintenance of computers and printers under warranty
- Bench and field service for public and private customers
- Diagnosis, parts replacement, functional testing, and restoration within the warranty standard

### Sudeste Serviços de Terceirização Ltda.

General Services Assistant

January 1998 — September 2001 · Campinas region

Outsourced to the IT secretariat of TRT da 15ª Região.

- Preventive and corrective maintenance of computers used by administrative and court units
- Remote support and phone support
- Installation and standardization of workstations
- Participation in the IT preparation for the year 2000 transition

## What I do

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
        <li>Web applications</li>
        <li>Automation</li>
      </ul>
    </td>
    <td valign="top" width="33%">
      <h3>Industrial</h3>
      <ul>
        <li>CNC</li>
        <li>Industrial maintenance</li>
        <li>Preventive maintenance</li>
        <li>Corrective maintenance</li>
        <li>Electrical systems</li>
        <li>Electronics</li>
        <li>Industrial networks</li>
        <li>Industry 4.0</li>
        <li>CMMS / EAM</li>
      </ul>
    </td>
  </tr>
</table>

JavaScript belongs to the web application work. It is not the center of the profile. Infrastructure, automation, and maintenance are.

## Technologies

These are technologies I have worked with or studied. Depth is not the same across the list.

### Operating systems

Linux · Ubuntu Server · Windows Server · Windows

### Infrastructure

Samba AD · DNS · DHCP · Postfix · Nginx · Squid · Proxmox · ZFS

### Networking

MikroTik · VLAN · OpenVPN · TCP/IP · Routing · Switching

### Development

Python (FastAPI) · PHP (HTMX) · PowerShell · Bash · JavaScript · SQL

### Databases

PostgreSQL · SQL Server · Supabase

### Monitoring

Grafana · dashboards · logs · Syslog · monitoring systems

### Industrial

CNC · Siemens · Mazak · DMG Mori · Romi · maintenance systems

## Projects

Architecture and routine write-ups. Internal application source and operational data are not published. The scripts in this repository are sanitized examples.

| Case | What it addresses |
|---|---|
| [InfraMonitor](projects/inframonitor/README.md) | Availability, backup, internet, VPN, services, logs, and alerts |
| [CMMS / EAM](projects/cmms/README.md) | Machine, tag, plan, work order, history, and indicators |
| [Automation](projects/automation/README.md) | Disk, service, log, connectivity, backup, and local collection |

## Troubleshooting

The method is in [How I approach a problem](#how-i-approach-a-problem). The pages below are teaching examples, with fictional names and addresses. They are not incidents from a real environment.

- [Linux service](documentation/troubleshooting/linux-service.md)
- [Samba / Kerberos](documentation/troubleshooting/samba-kerberos.md)
- [Network connectivity](documentation/troubleshooting/network-connectivity.md)
- [Backup failure](documentation/troubleshooting/backup-failure.md)
- [Windows logon](documentation/troubleshooting/windows-logon.md)
- [Database](documentation/troubleshooting/database-problem.md)
- [CNC machine](documentation/troubleshooting/industrial-machines.md)

## Technical background

| Area | Background |
|---|---|
| Linux | Ubuntu Server, services, logs, systemd |
| Windows | Windows Server, PowerShell, GPO |
| Active Directory | Samba AD, DNS, Kerberos |
| Networking | TCP/IP, VLAN, OpenVPN, routing |
| Virtualization | Proxmox, virtual machines |
| Storage | ZFS, backup, recovery |
| Development | Python (FastAPI), PHP (HTMX), Bash, PowerShell |
| Databases | PostgreSQL, SQL Server, Supabase |
| Industrial | CNC, maintenance, electronics, electrical power, compressed air |
| Monitoring | dashboards, logs, alerts |
| Security | hardening, access control, backups |

## Currently studying

Topics under study. Completion and institution are not stated when that information is not available.

- MBA in Maintenance Management, in progress
- Industrial management
- Data Science and Analytics
- Industry 4.0
- Lean Manufacturing
- TPM
- OEE
- Supply Chain
- Production management

[Study notes](documentation/studies/README.md)

## Education

- Bachelor's degree in Computer Science, Centro Universitário Salesiano de São Paulo (UNISAL), 2004–2008
- Technical education in Industrial Informatics, UNISAL, 2002–2004
- MBA / postgraduate studies in Maintenance Management, in progress

## Certifications

Completed courses. Issuer, date, and credential code are listed in [documentation/certificacoes.md](documentation/certificacoes.md).

- First-line Leadership, FM2S, 2025
- Nonviolent Communication, Assertive Communication, and Emotional Intelligence, FM2S, 2025
- Corporate Excel, basic to advanced, Supernova Treinamentos, 2018
- NR-35 — Work at Height, Planifer, 2012
- Programmable Logic Controllers, UNISAL, 2002
- Maintenance Planning and Control, SigaConsulting, 2007
- Mechanical and electro-electronic maintenance, Siemens 810D, ROMI, 2008
- Reducing electrical energy costs in installations, CIESP Campinas, 2010
- Electrical maintenance and mechanical maintenance, INDEX, 2011
- Application and maintenance of industrial bearings, Radial Rolamentos, 2018

## Languages

- Portuguese
- English, limited working proficiency

<a id="what-is-not-published"></a>

## What is not published

This GitHub does not contain live configuration, credentials, real topology, corporate data, customer data, backups, or confidential information.

What is here is architecture, documentation, sanitized code, examples, diagrams, and method. Lab addresses only: `example.com`, `192.0.2.0/24`, `198.51.100.0/24`, `203.0.113.0/24`, and `10.0.0.0/24`.

## Repository

| Folder | Contents |
|---|---|
| [infrastructure](infrastructure/README.md) | Linux, Samba AD, networking, Proxmox, backup, monitoring, Squid |
| [automation](automation/README.md) | PowerShell, Python, Bash, and PHP examples |
| [industrial](industrial/README.md) | Maintenance, CNC, industrial monitoring, Industry 4.0 |
| [projects](projects/README.md) | InfraMonitor, CMMS, and automation |
| [documentation](documentation/README.md) | Troubleshooting, architecture, procedures, studies |
| [examples](examples/README.md) | Lab configurations and diagrams |

Generic infrastructure diagram, not a real topology: [IT and operations](documentation/architecture/visao-geral.md).

Example code is under the [MIT](LICENSE) license.

Profile bio and description text: [documentation/profile-github.md](documentation/profile-github.md).
