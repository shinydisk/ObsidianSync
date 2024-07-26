#!/bin/sh

# Variables
VAULT_DIR="."
REPO_URL="git@github.com:shinydisk/ObsidianSync.git"
COMMIT_MESSAGE="Automatically ObsidianBrain synchronization. 🔁"

# Script
cd "$VAULT_DIR" || { echo "The directory $VAULT_DIR does not exist. ❌"; exit 1; }
echo "--------------------------------------------------------------------"
echo ""

git add .
echo "--------------------------------------------------------------------"
echo ""

if git diff-index --quiet HEAD --; then
    echo ""
    echo "No changes to synchronize. 🙅🏽‍♂️"
    echo "--------------------------------------------------------------------"
    echo ""
else

    git commit -m "$COMMIT_MESSAGE"

    git push origin main

    echo ""
    echo "Automatically ObsidianBrain synchronization is done. ✅"
    echo "--------------------------------------------------------------------"
    echo ""
fi
