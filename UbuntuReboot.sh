#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or use sudo"
  exit 1
fi

# Confirm reboot
read -p "Are you sure you want to reboot the system? (y/N): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
  echo "Rebooting the system..."
  reboot
else
  echo "Reboot canceled."
  exit 0
fi