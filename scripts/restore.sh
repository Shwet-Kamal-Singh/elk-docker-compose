#!/bin/bash

# Define the backup directory and the data directory
BACKUP_DIR="elk-docker-compose/data_backup"
DATA_DIR="elk-docker-compose/data/elasticsearch"

# Check if a backup file is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <backup_file>"
  exit 1
fi

# Stop the Elasticsearch container
docker-compose stop elasticsearch

# Clear the current data directory
rm -rf $DATA_DIR/*

# Restore the backup
tar -xzvf $1 -C $DATA_DIR

# Restart the Elasticsearch container
docker-compose start elasticsearch

echo "Restore completed successfully from $1"
