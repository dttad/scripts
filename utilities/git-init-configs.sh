#!/bin/bash

# Set your Git username
git config --global user.name "Your Name"

# Set your Git email address
git config --global user.email "your.email@example.com"

# Enable color in Git outputs
git config --global color.ui true

# Set the default text editor for Git to nano
git config --global core.editor nano

# Set the default merge tool for Git to kdiff3
git config --global merge.tool kdiff3

# Set Git to use the rebase option by default when pulling
git config --global pull.rebase true

# Set Git to use the --signoff option by default when committing
git config --global commit.gpgsign true

# Set the default push behavior for Git to simple
git config --global push.default simple

echo "Git configuration completed successfully."
