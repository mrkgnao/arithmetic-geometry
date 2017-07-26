#!/bin/sh

mkdir -p _shake

stack --resolver lts-8.23 \
  --install-ghc ghc \
  --package shake \
  -- \
  --make Build.hs \
  -O0 \
  -threaded \
  -rtsopts -with-rtsopts="-I0 -qg -qb" \
  -outputdir=_shake \
  -o _shake/build

_shake/build "$@"
