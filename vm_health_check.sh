#!/bin/bash

# VM Health Check Script
echo "Checking VM health..."

# Example checks
if [ $(uptime | awk '{print $8}' | sed 's/,//') -gt 1 ]; then
    echo "VM is healthy"
else
    echo "VM needs attention"
fi
