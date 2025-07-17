#!/bin/bash

# Simple Git Auto-Commit Script (Direct conversion from Windows batch)
# Usage: ./simple_git_auto_commit.sh

while true; do
    cd "$HOME/Documents/Github/HAFDIAHMED"
    echo "Automatic commit at $(date)" > commit_message.txt
    git pull
    git add .
    git commit -m "Automatic commit at $(date)"
    git push -f
    sleep 10
done