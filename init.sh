#!/usr/bin/env bash

GRADLE_FILE="settings.gradle"
INCLUDE_LINE=$(grep "^include " "$GRADLE_FILE" | tail -n 1)
INCLUDE_LINE=${INCLUDE_LINE#include }
INCLUDE_LINE=${INCLUDE_LINE//', '/ }

for repo in $INCLUDE_LINE; do
    repo=${repo//\'/}
    ./clone.sh "$repo"
done

echo "Done cloning repositories."
