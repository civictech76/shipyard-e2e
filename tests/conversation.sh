#!/usr/bin/env bash
[ "$(bash conversation.sh)" = "$(printf 'hello\ngoodbye')" ] || { echo "conversation wrong"; exit 1; }
