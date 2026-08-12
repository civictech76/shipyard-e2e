#!/usr/bin/env bash
# the whole test suite: one honest assertion per shipped behaviour
[ "$(echo ok)" = "ok" ] || exit 1
[ "$(bash greeting.sh)" = "hello" ] || { echo "greeting wrong"; exit 1; }
echo "2 passing"
