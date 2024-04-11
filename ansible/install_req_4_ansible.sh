#!/usr/bin/env bash
# скрипт для установки коллекций ансибла 

REQUIREMENTS_PATH="./requirements.yml"

if [ -f "$REQUIREMENTS_PATH" ]; then
  echo "Installing collections from $REQUIREMENTS_PATH..."
  ansible-galaxy collection install -r $REQUIREMENTS_PATH
else
  echo "$REQUIREMENTS_PATH does not exist."
fi