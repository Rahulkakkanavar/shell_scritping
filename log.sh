#!/bin/bash

logfile="/tmp/logfile.txt"

grep "Error" "$logfile" > error_log.txt
echo "Error log created"
