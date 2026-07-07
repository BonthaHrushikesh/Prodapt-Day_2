#!/bin/bash

# Creating directory structure
mkdir hrushi1
mkdir hrushi1/src
mkdir hrushi1/docs
mkdir hrushi1/scripts

# Creating files
touch hrushi1/src/main.txt
touch hrushi1/src/config.txt
touch hrushi1/docs/readme.txt
touch hrushi1/scripts/run.sh

# Copy file
cp hrushi1/src/main.txt hrushi1/docs/main_copy.txt

# Move file
mv hrushi1/docs/main_copy.txt hrushi1/src/

# Rename file
mv hrushi1/src/config.txt hrushi1/src/settings.txt

# Search for specific files
find hrushi1 -name "*.txt"
find hrushi1 -name "run.sh"

# Set execute permission on script
chmod +x hrushi1/scripts/run.sh

# Compress project into a .tar.gz archive
tar -czvf hrushi1_backup.tar.gz hrushi1

# Create new location for extraction
mkdir hrushi1_restore

# Extract archive to new location
tar -xzvf hrushi1_backup.tar.gz -C hrushi1_restore

# Verify final structure
find hrushi1_restore
