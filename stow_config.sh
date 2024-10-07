#!/bin/bash

# Define an array of package names
packages=(
  "bash"
  "gtk-3.0"
  "i3"
  "i3blocks"
  "terminator"
  "nvim"
  "fonts"
  "scripts"
)

# Check if the first argument is "remove" to use the -D flag
stow_flag="-t"
if [ "$1" == "remove" ]; then
  stow_flag="-D -t"
fi

# Loop through each package and run stow or unstow with -D
for package in "${packages[@]}"; do
  if [ "$1" == "remove" ]; then
    echo "Unstowing $package..."
  else
    echo "Stowing $package..."
  fi

  stow $stow_flag "$HOME" "$package"

  if [ $? -eq 0 ]; then
    if [ "$1" == "remove" ]; then
      echo "$package unstowed successfully."
    else
      echo "$package stowed successfully."
    fi
  else
    if [ "$1" == "remove" ]; then
      echo "Error unstowing $package."
    else
      echo "Error stowing $package."
    fi
  fi
done

echo "All done!"

