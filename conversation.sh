#!/usr/bin/env bash
# Greeting then farewell, reusing both scripts so a change to either flows through.
set -eu
here="$(cd "$(dirname "$0")" && pwd)"
bash "$here/greeting.sh"
bash "$here/farewell.sh"
