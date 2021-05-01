#!/bin/sh
echo "In start-up script. Starting aac-grid ui..."
cd /app
sh -c "serve -s build -l 3060"

