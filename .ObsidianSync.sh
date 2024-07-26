#!/bin/bash

# Functions for output
print_banner() {
    echo ""
    echo "#########################################################"
    echo "#     🏁 Obsidian synchronization script started. 🏁     #"
    echo "#########################################################"
}

print_success() {
    echo ""
    echo "$1 👌🏽"
    echo "#################################"
}

print_error() {
    echo ""
    echo "Error: $1 ❌"
    exit 1
}

# Add changes to the Git index
git add .
if [ $? -ne 0 ]; then
  print_error -e "❌ ERROR: Unable to add files."
  exit 1
fi

# Commit the changes
echo ""
git commit -m "Automatically ObsidianBrain synchronization. 🔁"
if [ $? -ne 0 ]; then
  echo -e "❌ ERROR: Unable to commit changes. Make sure there are changes to commit."
  exit 1
fi

# Push the changes to the remote repository
git push
if [ $? -ne 0 ]; then
  echo -e "❌ ERROR: Unable to push changes to the remote repository."
  exit 1
fi

echo -e "✅ Synchronization with GitHub completed successfully."
