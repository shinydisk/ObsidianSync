#!/bin/sh

# Variables
COMMIT_MESSAGE="Automatically ObsidianBrain synchronization. 🔁"

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
    echo "#################################"
    exit 1
}

# Banner
print_banner

# Script

## Add files
if git add .; then
    print_success "Files added successfully."
else
    print_error "Failed to add files."
fi

## Commit message
if git commit -m "$COMMIT_MESSAGE"; then
    print_success "The commit message has been successfully entered."
else
    print_error "Failed to commit."
fi

## Push repository
if git push; then
    print_success "It's ok. ✅"
else
    print_error "Failed to push the repository."
fi