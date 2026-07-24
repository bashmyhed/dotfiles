#!/bin/bash

# Kill hypridle and hypridle-inhibit.sh processes
# Self-excludes to avoid matching this script

set -euo pipefail

SCRIPT_PID=$$

echo "Searching for target processes..."

# Function to kill all matching processes
kill_process() {
    local pattern="$1"
    local name="$2"
    
    # Find all PIDs matching pattern, excluding this script
    local pids
    pids=$(pgrep -f "$pattern" | grep -v "^${SCRIPT_PID}$" || true)
    
    if [ -z "$pids" ]; then
        echo "No $name processes found."
        return 0
    fi
    
    echo "Found $name PIDs: $pids"
    
    # Send SIGTERM to all matching PIDs
    for pid in $pids; do
        echo "Sending SIGTERM to $name ($pid)..."
        kill "$pid" 2>/dev/null || true
    done
    
    sleep 2
    
    # Check if any are still alive
    local remaining
    remaining=$(pgrep -f "$pattern" | grep -v "^${SCRIPT_PID}$" || true)
    
    if [ -n "$remaining" ]; then
        echo "$name still running. Sending SIGKILL..."
        for pid in $remaining; do
            echo "Sending SIGKILL to $name ($pid)..."
            kill -9 "$pid" 2>/dev/null || true
        done
    fi
}

# Kill hypridle processes
kill_process "hypridle" "hypridle"

# Kill hypridle-inhibit.sh processes
kill_process "hypridle-inhibit.sh" "hypridle-inhibit.sh"

sleep 1

# Final verification
HYPER_PIDS=$(pgrep -f "hypridle" | grep -v "^${SCRIPT_PID}$" || true)
INHIBIT_PIDS=$(pgrep -f "hypridle-inhibit.sh" | grep -v "^${SCRIPT_PID}$" || true)

if [ -z "$HYPER_PIDS" ] && [ -z "$INHIBIT_PIDS" ]; then
    echo "Success: All target processes terminated."
    exit 0
else
    echo "Warning: Some processes may still be running."
    [ -n "$HYPER_PIDS" ] && echo "  hypridle: $HYPER_PIDS"
    [ -n "$INHIBIT_PIDS" ] && echo "  hypridle-inhibit.sh: $INHIBIT_PIDS"
    exit 1
fi
