#!/bin/bash

# Check for out-of-date packages using pip
outdated_packages=$(pip list --outdated --format=columns)

# Remove the header line from the output
outdated_packages=$(echo "$outdated_packages" | tail -n +3)

# Check if there are any outdated packages
if [ -n "$outdated_packages" ]; then
  echo "Out-of-date packages found:"
  echo "$outdated_packages"
  exit 1
else
  echo "All packages are up to date."
  exit 0
fi