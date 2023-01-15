#!/bin/sh

echo "[Step 0] Create analysis Folder"

mkdir -p analysis

echo "[Step 1] Compiled Verilog"

iverilog -o ./analysis/dsn inverter_tb.v inverter.v

echo "[Step 2] Write VCD File"

vvp ./analysis/dsn

echo "[Step 2] Open Results"

gtkwave ./analysis/inverter.vcd