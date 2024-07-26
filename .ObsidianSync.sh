#!/bin/bash

# Functions for output
print_banner() {
    echo ""
    echo "####################################################################"
    echo "#          🏁 Obsidian synchronization script started. 🏁          #"
    echo "####################################################################"
}
print_check() {
    echo ""
    echo "-----------------------------------------------------------------"
    echo "$1"
}
print_success() {
    echo ""
    echo "##################################################################"
    echo "#               $1               #"
    echo "##################################################################"
    echo ""
}
print_error() {
    echo ""
    echo "-----------------------------------------------------------------"
    echo "$1"
    exit 1
}

# Start the script
print_banner

# Change to the Obsidian Vault directory
cd . || print_error "❌ Failed to navigate to the Obsidian Vault directory."

# Add all changes to git
print_check "👌🏽 Adding changes to git."
git add . || print_error "❌ Failed to add changes to git."

# Commit the changes
print_check "👌🏽 Committing changes."
git commit -m "Update vault" || print_error "❌ Failed to commit changes."

# Pull the latest changes from the remote repository
print_check "👌🏽 Pulling latest changes from the remote repository."
git pull origin main --rebase || print_error "❌ Failed to pull changes from the remote repository."

# Push the changes to the remote repository
print_check "👌🏽 Pushing changes to the remote repository."
git push origin main || print_error "❌ Failed to push changes to the remote repository."

# Script completed successfully
print_success "✅ Obsidian Vault synchronized successfully!"
