#!/bin/bash

EXAMPLE=$1
ENTRY_POINT=$2
UNROLL=$3

smack.py -t "$EXAMPLE" --entry-points "$ENTRY_POINT" --verifier=boogie
bam a.bpl --shadowing --modifies-correction -o b.bpl
boogie b.bpl /loopUnroll:$UNROLL
