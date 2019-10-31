#!/bin/bash

make -C riscv-coremark/coremark CC=riscv64-unknown-linux-gnu-gcc compile

mkdir -p overlay
mv riscv-coremark/coremark/coremark.exe overlay/coremark.riscv
