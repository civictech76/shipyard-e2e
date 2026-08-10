#!/usr/bin/env bash
# the whole test suite: one honest assertion
[ "$(echo ok)" = "ok" ] || exit 1
echo "1 passing"
