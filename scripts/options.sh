#!/bin/bash

# DESCRIPTION
# Processes command line options.

# Option selection.
# Parameters:
# $1 = The selected option.
process_option() {
  case $1 in
    'all')
      source scripts/config.sh
      source scripts/system.sh
      source scripts/apps.sh
      source scripts/npm.sh
      break;;
    'apps')
      source scripts/system.sh
      source scripts/apps.sh
      break;;
    'config')
      source scripts/config.sh
      break;;
    'npm')
      source scripts/system.sh
      source scripts/npm.sh
      break;;
    'system')
      source scripts/system.sh
      break;;
      
    'q')
      break;;
    *)
      break;;
  esac
}

export -f process_option