#!/usr/bin/env bash
[ "$(bash greeting.sh)" = "hello" ] || { echo "greeting wrong"; exit 1; }
