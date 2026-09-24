#!/usr/bin/env bash
# stderr and the exit code ride along, so "and nothing else" covers noise and failure too.
out="$(bash conversation.sh 2>&1; echo "rc=$?")"
[ "$out" = "$(printf 'hello\ngoodbye\nrc=0')" ] || { printf 'conversation wrong: got %q\n' "$out"; exit 1; }
