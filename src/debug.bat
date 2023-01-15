@echo off

echo [Step 0] Make analysis Folder

mkdir analysis

echo [Step 1] Compiled Verilog 

iverilog -o ./analysis/dsn inverter_tb.v inverter.v

echo [Step 2] Write VCD File

vvp ./analysis/dsn

echo [Step 2] Open Results

gtkwave ./analysis/inverter.vcd
