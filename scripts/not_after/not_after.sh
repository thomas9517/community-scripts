#!/bin/sh

# Check if a date argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <date> [<time>]"
  exit 1
fi

# Parse the input date and time
input_date="$1"
input_time="${2:-00:00:00}" # Default time is midnight if not provided

# Combine the date and time
input_datetime="$input_date $input_time"

# Convert the input datetime to a Unix timestamp
input_timestamp=$(date -d "$input_datetime" +%s 2>/dev/null)

# Validate the input datetime
if [ $? -ne 0 ]; then
  echo "Invalid date or time format. Please use a valid format (e.g., YYYY-MM-DD HH:MM:SS)."
  exit 1
fi

# Get the current Unix timestamp
current_timestamp=$(date +%s)

# Compare the timestamps
if [ "$current_timestamp" -gt "$input_timestamp" ]; then
  exit 1
else
  exit 0
fi
