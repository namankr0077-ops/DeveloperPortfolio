#!/bin/bash
# Author: Naman Kumar
# Description: Generates a formatted system information report.

echo "=================================================================="
echo "Name: Naman Kumar | Roll No: <2601730406> | Date: $(25/11/2026)"
echo "=================================================================="

# CPU Model and Cores
CPU_MODEL=$(lscpu | grep "Model name:" | sed 's/Model name:[ \t]*//')
CPU_CORES=$(nproc)
echo "CPU Model : $CPU_MODEL"
echo "CPU Cores : $CPU_CORES"

# Total and Used Memory via free -h and awk
MEM_INFO=$(free -h | awk '/^Mem:/ {print "Total: " $2 " | Used: " $3}')
echo "Memory    : $MEM_INFO"

echo "------------------------------------------------------------------"
echo "Top 3 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4
echo "------------------------------------------------------------------"
echo "Report generated successfully."
