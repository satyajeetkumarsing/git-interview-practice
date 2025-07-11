#!/bin/bash

# Script to display memory usage

echo "=== Memory Usage Summary ==="

# Get memory usage using 'free' command
free -h

echo ""
echo "=== Detailed Memory Info ==="
# Show total, used, free memory with percentages
echo ""
echo "Total Memory: $(grep MemTotal /proc/meminfo | awk '{print $2/1024 " MB"}')"
echo "Free Memory : $(grep MemFree /proc/meminfo | awk '{print $2/1024 " MB"}')"
echo "Available   : $(grep MemAvailable /proc/meminfo | awk '{print $2/1024 " MB"}')"

echo ""
echo "=== Top 5 Processes by Memory Usage ==="
ps aux --sort=-%mem | awk 'NR<=6{print $0}'


