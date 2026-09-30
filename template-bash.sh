#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

readonly SCRIPT_NAME=$(basename "${BASH_SOURCE[0]}")

usage() {
    echo "Usage: ${SCRIPT_NAME} <paramètre>" >&2
    exit 1
}

main() {
    [[ $# -eq 0 ]] && usage
    local readonly param="$1"
    
    echo "Exécution sécurisée avec le paramètre : ${param}"
}

main "$@"
