#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    python3 --version
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy note
case $PACKAGE in
    apache2) echo "Apache: the web server that built the open internet" ;;
    mysql-server) echo "MySQL: open source at the heart of millions of apps" ;;
    python3) echo "Python: a powerful open-source programming language" ;;
    *) echo "Unknown package." ;;
esac
