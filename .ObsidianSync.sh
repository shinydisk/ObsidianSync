#!/bin/bash

# Add changes to the Git index
git add .
if [ $? -ne 0 ]; then
  echo -e "❌ \e[31mError: Unable to add files.\e[0m"
  exit 1
fi

# Commit the changes
git commit -m "Automatically ObsidianBrain synchronization."
if [ $? -ne 0 ]; then
  echo -e "❌ \e[31mError: Unable to commit changes. Make sure there are changes to commit.\e[0m"
  exit 1
fi

# Push the changes to the remote repository
git push
if [ $? -ne 0 ]; then
  echo -e "❌ \e[31mError: Unable to push changes to the remote repository.\e[0m"
  exit 1
fi

echo -e "✅ \e[32mSynchronization with GitHub completed successfully.\e[0m"
