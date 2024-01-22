#!/bin/bash
set -eux

shdir="scripts"

run_scripts() {
    mode=$1
    scripts=$2

    if [ "$mode" == "foreground" ]; then
        for bashfile in "${scripts[@]}"; do
			echo -e "\nExecuting $bashfile ...\n"
    		source "$shdir/$bashfile"
        done
    elif [ "$mode" == "background" ]; then
		pid_array=()
		bashfile_array=()
        for bashfile in "${scripts[@]}"; do
			echo -e "\nExecuting $bashfile ...\n"

			mkdir -p "$shdir/$bashfile-dir"
			pushd "$shdir/$bashfile-dir"
		    source "../$bashfile" &
			popd

			pid_array+=("$!")
			bashfile_array+=("$bashfile")
        done
		# wait for all scripts to finish
		for i in "${!pid_array[@]}"; do
			pid=${pid_array[$i]}
			bashfile=${bashfile_array[$i]}
			echo "PID = $pid"
			echo "BASHFILE = $bashfile"
		    wait "$pid" || (echo "Process $shdir/$bashfile exited with ERRORCODE: $?" && exit -1)
			rm -rf "$shdir/$bashfile-dir"
		done
    else
        echo "Invalid mode: $mode"
        exit 1
    fi
}

# Current directory might not be the same as the install.sh
# So change to the directory of install.sh
pushd "$(dirname "$0")"

json_data=$(cat $shdir/run_order.json)

for config in $(echo "$json_data" | jq -c '.[]'); do
    mode=$(echo "$config" | jq -r '.mode')
    scripts=($(echo "$config" | jq -r '.scripts[]'))

    echo "Executing the following scripts in $mode mode:"
    echo "Scripts: ${scripts[@]}"
    run_scripts "$mode" $scripts
done

popd