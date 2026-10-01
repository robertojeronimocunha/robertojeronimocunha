#!/usr/bin/env bash
# Resume disco, memória e carga. Não altera o sistema.
set -u
set -o pipefail

disk_threshold=85
mem_threshold=90

usage() {
  echo "Uso: $0 [--disk-threshold N] [--mem-threshold N]" >&2
  echo "N é o percentual de uso, de 1 a 99." >&2
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --disk-threshold)
      disk_threshold="${2:-}"
      shift 2
      ;;
    --mem-threshold)
      mem_threshold="${2:-}"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Argumento desconhecido: $1" >&2
      usage
      exit 2
      ;;
  esac
done

if ! [[ "$disk_threshold" =~ ^[0-9]+$ && "$mem_threshold" =~ ^[0-9]+$ ]]; then
  echo "Os limites precisam ser números inteiros." >&2
  exit 2
fi

if (( disk_threshold < 1 || disk_threshold > 99 || mem_threshold < 1 || mem_threshold > 99 )); then
  echo "Os limites precisam ficar entre 1 e 99." >&2
  exit 2
fi

alert=0

disk_line="$(df -P / | awk 'NR==2 {print $(NF-1)}')"
disk_used="${disk_line%%%}"
if ! [[ "$disk_used" =~ ^[0-9]+$ ]]; then
  echo "Não foi possível ler o uso de disco." >&2
  exit 1
fi

echo "Disco /: ${disk_used}% em uso (limite ${disk_threshold}%)"
if (( disk_used >= disk_threshold )); then
  echo "Disco acima do limite."
  alert=1
fi

if [[ -r /proc/meminfo ]]; then
  mem_total="$(awk '/^MemTotal:/ {print $2}' /proc/meminfo)"
  mem_available="$(awk '/^MemAvailable:/ {print $2}' /proc/meminfo)"
  if [[ -z "$mem_available" ]]; then
    mem_available="$(awk '/^MemFree:/ {print $2}' /proc/meminfo)"
  fi
  if [[ -n "$mem_total" && -n "$mem_available" && "$mem_total" -gt 0 ]]; then
    mem_used=$(( (mem_total - mem_available) * 100 / mem_total ))
    echo "Memória: ${mem_used}% em uso (limite ${mem_threshold}%)"
    if (( mem_used >= mem_threshold )); then
      echo "Memória acima do limite."
      alert=1
    fi
  else
    echo "Memória: não foi possível calcular."
  fi
else
  echo "Memória: indisponível neste sistema (sem /proc/meminfo)."
fi

if [[ -r /proc/loadavg ]]; then
  echo "Carga: $(cut -d' ' -f1-3 /proc/loadavg)"
else
  echo "Carga: indisponível neste sistema."
fi

exit "$alert"
