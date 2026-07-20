#!/bin/bash

# Create my personal development workspace

show_help()
{
    echo "Linux Workspace Manager"
    echo ""
    echo "Usage:"
    echo "  ./setup.sh [workspace-name]"
    echo ""
    echo "Examples:"
    echo "  ./setup.sh"
    echo "      Creates ~/Workspace"
    echo ""
    echo "  ./setup.sh Research"
    echo "      Creates ~/Research"
}

# Colors
RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
RESET="\e[0m"

if [ "$1" == "--help" ]
then
	show_help
	exit 0
fi

WORKSPACE_NAME="${1:-Workspace}"

if [[ ! "$WORKSPACE_NAME" =~ ^[a-zA-Z0-9_-]+$ ]]
then
    echo "Error: Workspace names may contain only letters, numbers, hyphens (-), and underscores (_)."
    exit 1
fi

WORKSPACE="$HOME/$WORKSPACE_NAME"

folders=("Projects" "Notes" "Scripts" "Backups" "Temp")

echo -e "${BLUE}====================================${RESET}"
echo -e "${BLUE} Linux Workspace Manager${RESET}"
echo -e "${BLUE}====================================${RESET}"
echo
echo "Creating workspace:"
echo "  $WORKSPACE"
echo

mkdir -p "$WORKSPACE"

for folder in "${folders[@]}"
do
	if mkdir -p "$WORKSPACE/$folder"
	then
	    echo -e "${GREEN} \u2713 ${RESET} Created $folder"
	else
	    echo -e "${RED} \u274c Failed to create $folder${RESET}"
	fi
done

echo
echo -e "${GREEN} ${WORKSPACE} created successfully!${RESET}"
