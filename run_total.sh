#!/bin/bash
riscv64-linux-gnu-g++ -O3 -static nqueens.cpp -o nqueens.rv
./nqueens.sh
./scripts/report.pl -last