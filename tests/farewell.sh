#!/usr/bin/env bash
[ "$(bash farewell.sh)" = "goodbye" ] || { echo "farewell wrong"; exit 1; }
