#!/usr/bin/env bash
# One file per shipped behaviour, so two epics never edit the same line.
set -u
n=0
for t in tests/*.sh; do bash "$t" || { echo "FAILED: $t"; exit 1; }; n=$((n+1)); done
echo "$n passing"
