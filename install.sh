#!/bin/bash

set -eux

shdir="scripts"

for bashfile in $(cat $shdir/run_order.txt); do
    echo -e "\nExecuting $bashfile ...\n"
    bash "$shdir/$bashfile" &
    # Store the background process ID in an array for later checking
    pid_array+=($!)
done

# Wait for all background processes to finish and check their exit statuses
for pid in "${pid_array[@]}"; do
    wait "$pid" || exit $?
done
