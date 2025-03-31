#!/bin/bash

# Check if script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "❌ Error: This script must be run as root!"
    exit 1
fi

# Check if username and password are provided
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <username> <password>"
    exit 1
fi

USERNAME=$1
PASSWORD=$2

# Check if user already exists
if id "$USERNAME" &>/dev/null; then
    echo "⚠️ User '$USERNAME' already exists!"
    exit 1
fi

# Create user and set password
useradd -m -s /bin/bash "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd

# Expire password to force change on first login
passwd --expire "$USERNAME"

echo "✅ User '$USERNAME' created successfully!"
