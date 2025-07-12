#!/bin/bash

OUTPUT_FILE="cpu_usage_log.txt"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

#Extract CPU usage top + grep + awk 
# awk - A powerful  text processing language - awk '{print $1}'file.txt - print the first column of each line in a file
# -bn1 means b = batch mode - outputs to terminal (not interactive) & n1 = Number of iterations - run the command only once and exit
#
echo "$(date): CPU Usage: $CPU_USAGE%" >> "$OUTPUT_FILE"

echo "CPU Usage logged to $OUTPUT_FILE"

