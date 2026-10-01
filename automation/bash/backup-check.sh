#!/usr/bin/env bash
# Confere se existe arquivo recente em um diretório. Não apaga nem copia nada.
set -u
set -o pipefail

max_age_hours=24
max_depth=3

usage() {
  echo "Uso: $0 <diretório> [--max-age-hours N] [--max-depth N]" >&2
}

if [[ $# -lt 1 ]]; then
  usage
  exit 2
fi

target_input="$1"
shift

while [[ $# -gt 0 ]]; do
  case "$1" in
    --max-age-hours)
      max_age_hours="${2:-}"
      shift 2
      ;;
    --max-depth)
      max_depth="${2:-}"
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

if ! [[ "$max_age_hours" =~ ^[0-9]+$ && "$max_depth" =~ ^[0-9]+$ ]]; then
  echo "Idade e profundidade precisam ser números inteiros." >&2
  exit 2
fi

if (( max_depth < 1 || max_depth > 6 )); then
  echo "A profundidade deve ficar entre 1 e 6." >&2
  exit 2
fi

if [[ ! -d "$target_input" ]]; then
  echo "Diretório inexistente: $target_input" >&2
  exit 2
fi

target="$(cd "$target_input" && pwd)"
if [[ "$target" == "/" ]]; then
  echo "Recuso verificar a raiz do sistema de arquivos." >&2
  exit 2
fi

newest_epoch=""
newest_file=""

while IFS= read -r file; do
  [[ -z "$file" ]] && continue
  epoch="$(stat -c '%Y' "$file" 2>/dev/null || true)"
  if [[ -z "$epoch" ]]; then
    continue
  fi
  if [[ -z "$newest_epoch" || "$epoch" -gt "$newest_epoch" ]]; then
    newest_epoch="$epoch"
    newest_file="$file"
  fi
done < <(find "$target" -maxdepth "$max_depth" -type f -print)

if [[ -z "$newest_file" ]]; then
  echo "Nenhum arquivo encontrado em $target"
  exit 1
fi

now="$(date +%s)"
age_seconds=$(( now - newest_epoch ))
limit_seconds=$(( max_age_hours * 3600 ))
age_hours=$(( age_seconds / 3600 ))

echo "Mais novo: $newest_file"
echo "Idade: ${age_hours} h (limite ${max_age_hours} h)"

if (( age_seconds > limit_seconds )); then
  echo "Arquivo mais novo está acima da idade permitida."
  exit 1
fi

echo "Dentro do limite."
exit 0
