#!/bin/bash

make -C splat
./splat/split.py --rom baserom.eva.z64 evangelion.yaml --outdir .
