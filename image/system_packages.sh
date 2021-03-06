#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install bats
[ "$DISABLE_BATS" -eq 0 ] && /build/packages/bats/bats.sh || true

## Install OpenResty
[ "$DISABLE_OPENRESTY" -eq 0 ] && /build/packages/openresty/openresty.sh || true

## Install Node.js
[ "$DISABLE_NODEJS" -eq 0 ] && /build/packages/nodejs/nodejs.sh || true

## Install rvm
[ "$DISABLE_RVM" -eq 0 ] && /build/packages/rvm/rvm.sh || true

## Install ruby
[ "$DISABLE_RUBY" -eq 0 ] && /build/packages/ruby/ruby.sh || true

## Instlal Bundler
[ "$DISABLE_BUNDLER" -eq 0 ] && /build/packages/bundler/bundler.sh || true
