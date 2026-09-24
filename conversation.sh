#!/usr/bin/env bash
# Greeting then farewell, reusing both scripts so a change to either flows through.
set -eu
# CDPATH= and >/dev/null: an exported CDPATH makes cd print the path, doubling $here.
here="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" >/dev/null && pwd)"
bash "$here/greeting.sh"
bash "$here/farewell.sh"
