#!/usr/bin/env python3
"""Testa uma única conexão TCP. Não varre rede nem faixa de portas."""

from __future__ import annotations

import argparse
import socket
import sys
import time

HOST_PATTERN_MAX = 253


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Verifica se host:porta aceita uma conexão TCP."
    )
    parser.add_argument("host", help="Nome ou endereço, por exemplo example.com")
    parser.add_argument("port", type=int, help="Porta TCP, de 1 a 65535")
    parser.add_argument(
        "--timeout",
        type=float,
        default=5,
        help="Tempo limite em segundos, de 1 a 30 (padrão: 5)",
    )
    return parser.parse_args()


def valid_host(host: str) -> bool:
    if not host or len(host) > HOST_PATTERN_MAX:
        return False
    if any(char.isspace() for char in host):
        return False
    return True


def main() -> int:
    args = parse_args()
    if not valid_host(args.host):
        print("Host inválido.", file=sys.stderr)
        return 2
    if not 1 <= args.port <= 65535:
        print("A porta deve ficar entre 1 e 65535.", file=sys.stderr)
        return 2
    if not 1 <= args.timeout <= 30:
        print("O tempo limite deve ficar entre 1 e 30 segundos.", file=sys.stderr)
        return 2

    started = time.monotonic()
    try:
        with socket.create_connection((args.host, args.port), timeout=args.timeout):
            elapsed_ms = int((time.monotonic() - started) * 1000)
    except socket.gaierror:
        print(f"{args.host}:{args.port} nome não resolvido")
        return 1
    except (TimeoutError, socket.timeout):
        print(f"{args.host}:{args.port} sem resposta dentro do tempo limite")
        return 1
    except OSError as exc:
        print(f"{args.host}:{args.port} inacessível: {exc.strerror or exc}")
        return 1

    print(f"{args.host}:{args.port} acessível ({elapsed_ms} ms)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
