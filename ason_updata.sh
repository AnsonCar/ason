#!/usr/bin/env bash

set -e

#!/usr/bin/env bash

set -e

# Get the latest version number from the GitHub API
LATEST_VERSION=$(curl --silent "https://api.github.com/repos/AnsonCar/ason/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

# Get the current version number of the installed ason script
CURRENT_VERSION=$(ason version)

# Compare the latest and current versions
if [ "$LATEST_VERSION" != "$CURRENT_VERSION" ]; then
  echo "A new version of ason is available. Version $LATEST_VERSION is now available to download."
  echo "Do you want to update ason now? (y/n)"
  read answer
  if [ "$answer" = "y" ]; then
    # Download the latest version of ason
    curl -sL "https://github.com/AnsonCar/ason/raw/main/ason.sh" -o "$HOME/bin/ason" && chmod +x "$HOME/bin/ason"
    echo "ason has been updated to version $LATEST_VERSION."
  else
    echo "Skipping ason update."
  fi
else
  echo "You have the latest version of ason."
fi