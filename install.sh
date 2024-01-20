#!/bin/bash

set -eux

shdir="scripts"

run_scripts() {
    mode=$1
    scripts=$2

    if [ "$mode" == "foreground" ]; then
        for bashfile in "${scripts[@]}"; do
			echo -e "\nExecuting $bashfile ...\n"
    		bash "$shdir/$bashfile"
        done
    elif [ "$mode" == "background" ]; then
		pid_array=()
        for bashfile in "${scripts[@]}"; do
			echo -e "\nExecuting $bashfile ...\n"
		    bash "$shdir/$bashfile" &
		    pid_array+=($!)
        done
		for pid in "${pid_array[@]}"; do
		    wait "$pid" || exit $?
		done
    else
        echo "Invalid mode: $mode"
        exit 1
    fi
}

json_data=$(cat $shdir/run_order.json)

for config in $(echo "$json_data" | jq -c '.[]'); do
    mode=$(echo "$config" | jq -r '.mode')
    scripts=($(echo "$config" | jq -r '.scripts[]'))

    echo "Executing the following scripts in $mode mode:"
    echo "Scripts: ${scripts[@]}"
    run_scripts "$mode" $scripts
done
