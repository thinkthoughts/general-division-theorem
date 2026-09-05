#!/usr/bin/env bash
set -euo pipefail

lake build

lake build Challenge
lake build Solution

COMPARATOR_LANDRUN="${COMPARATOR_LANDRUN:-$HOME/landrun/landrun}"
COMPARATOR_LEAN4EXPORT="${COMPARATOR_LEAN4EXPORT:-$HOME/comparator/.lake/packages/lean4export/.lake/build/bin/lean4export}"
COMPARATOR_BIN="${COMPARATOR_BIN:-$HOME/comparator/.lake/build/bin/comparator}"

COMPARATOR_LANDRUN="$COMPARATOR_LANDRUN" \
COMPARATOR_LEAN4EXPORT="$COMPARATOR_LEAN4EXPORT" \
lake env "$COMPARATOR_BIN" Comparator/general_divisor_theorem.json
