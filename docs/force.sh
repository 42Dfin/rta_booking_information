#!/bin/bash

# Get the last modification time of results.json
mod_time=$(stat -c %y results.json)

# Format the time as YYYY-MM-DD HH:MMAM/PM
formatted_time=$(date -d "$mod_time" +"%Y-%m-%d %I:%M%p")

# Write the formatted time to update-time.txt
echo "$formatted_time" > update-time.txt
