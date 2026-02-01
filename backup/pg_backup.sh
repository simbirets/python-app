#!/bin/bash

set -e

if [ "$1" = "test_mode" ]; then
  echo "Test mode: checking connection to PostgreSQL"
  if pg_isready -h localhost -p 5432 -U myuser -d myapp; then
    echo "Connection OK"
    exit 0
  else
    echo "Connection failed"
    exit 1
  fi
fi

echo "Backing up PostgreSQL database"
echo "Backup logic would run here"
