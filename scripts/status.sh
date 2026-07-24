#!/bin/bash

WORKSPACE="$HOME/Workspace"
RED="\e[31m"
GREEN="\e[32m"
RESET="\e[0m"
LINE="================================="

show_header()
{
	echo "${LINE}"
	echo " Linux Workspace Status"
	echo "${LINE}"
	echo
	echo "Workspace:"
	echo " $WORKSPACE"
}
echo

show_workspace_status()
{
	if [ -d "$WORKSPACE" ]
	then
		echo -e "${GREEN}\u2713${RESET} Workspace exists"
	else
		echo -e "${RED}\u274c${RESET} Workspace not found"
		echo
		echo "Exiting..."
        	exit 1
	fi

	echo
}

show_folders()
{
    echo "Folders:"

    for folder in $(find "$WORKSPACE" -mindepth 1 -type d)
    do
        echo -e " ${GREEN}\u2713${RESET} $(basename "$folder")"
    done
echo
}


show_system_info()
{
	echo "Current User:"
	echo "$(whoami)"
	echo
	HOST_NAME=$(hostname)

	echo "Host:"
	echo "${HOST_NAME}"
	echo

	CURRENT_DIR=$(pwd)

	echo "Current Directory:"
	echo "${CURRENT_DIR}"
	echo

	CURRENT_DATE=$(date)

	echo "Date:"
	echo "${CURRENT_DATE}"
echo
}

show_folder_sizes()
{
	echo "Folder Sizes:"

	for folder in $(find "$WORKSPACE" -mindepth 1 -type d)
	do
		SIZE=$(du -sh "$folder" | cut -f1)

		echo " Folder: $(basename "${folder}")"
		echo " Size: $SIZE"
		echo
	done
}

show_header
show_workspace_status
show_folders
show_system_info
show_folder_sizes
