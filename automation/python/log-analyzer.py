#!/usr/bin/env python3
"""Conta níveis em um arquivo de log local e mostra as últimas ocorrências."""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

MAX_BYTES = 50 * 1024 * 1024
LEVELS = ("ERROR", "WARNING", "INFO")
PATTERNS = {
    "ERROR": re.compile(r"\b(ERROR|ERR|CRITICAL|FATAL)\b", re.IGNORECASE),
    "WARNING": re.compile(r"\b(WARNING|WARN)\b", re.IGNORECASE),
    "INFO": re.compile(r"\bINFO\b", re.IGNORECASE),
}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Resume ERROR, WARNING, INFO e demais linhas de um log."
    )
    parser.add_argument("logfile", type=Path, help="Caminho do arquivo de log")
    parser.add_argument(
        "--level",
        choices=LEVELS,
        help="Nível das linhas exibidas no final",
    )
    parser.add_argument(
        "--tail",
        type=int,
        default=5,
        help="Quantidade de linhas finais do nível escolhido (1 a 50)",
    )
    return parser.parse_args()


def classify(line: str) -> str:
    for level in LEVELS:
        if PATTERNS[level].search(line):
            return level
    return "OTHER"


def main() -> int:
    args = parse_args()
    if not 1 <= args.tail <= 50:
        print("O valor de --tail deve ficar entre 1 e 50.", file=sys.stderr)
        return 2

    path = args.logfile
    if not path.is_file():
        print(f"Arquivo não encontrado: {path}", file=sys.stderr)
        return 2

    size = path.stat().st_size
    if size > MAX_BYTES:
        print("Arquivo acima de 50 MB. Recusado de propósito.", file=sys.stderr)
        return 2

    counts = {level: 0 for level in (*LEVELS, "OTHER")}
    matched: list[str] = []

    try:
        with path.open("r", encoding="utf-8", errors="replace") as handle:
            for raw_line in handle:
                line = raw_line.rstrip("\r\n")
                level = classify(line)
                counts[level] += 1
                if args.level and level == args.level:
                    matched.append(line)
    except OSError as exc:
        print(f"Falha ao ler o arquivo: {exc}", file=sys.stderr)
        return 2

    total = sum(counts.values())
    print(f"Arquivo: {path}")
    print(f"Linhas: {total}")
    for level in (*LEVELS, "OTHER"):
        print(f"{level}: {counts[level]}")

    if args.level:
        print()
        print(f"Últimas ocorrências ({args.level}):")
        selected = matched[-args.tail :]
        if not selected:
            print("(nenhuma)")
        else:
            for line in selected:
                print(line)

    return 0


if __name__ == "__main__":
    sys.exit(main())
