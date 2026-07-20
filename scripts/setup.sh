#!/bin/bash

# Create my personal development workspace

WORKSPACE="$HOME/Workspace"

folders=("Projects" "Notes" "Scripts" "Backups" "Temp")

echo "Creating workspace at: $WORKSPACE"

mkdir -p "$WORKSPACE"

for folder in "${folders[@]}"
do
	echo "Creating folder: $folder"
	mkdir -p "$WORKSPACE/$folder"
done
