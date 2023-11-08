#!/bin/bash

make -C splat
./splat/split.py evangelion.yaml
git checkout asm/*.s
