#!/bin/bash

# Ensure a commit message is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a commit message."
    echo "Usage: ./commit.sh \"Your commit message\""
    exit 1
fi

MESSAGE="$1"

# Ensure the gallery index is updated
python3 .git/hooks/pre-commit

git add .
git commit -m "$MESSAGE"
git push origin main
