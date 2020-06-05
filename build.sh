#!/usr/bin/env bash
rm -f mqforward
../scripts/go_rpi clean -r
#../scripts/go build --ldflags '-linkmode external -extldflags "-static -no-pie"' -o mqforward
#../scripts/go build --ldflags '-static -no-pie' -o mqforward
../scripts/go_rpi build -o mqforward
scp mqforward mqtt:/tmp
