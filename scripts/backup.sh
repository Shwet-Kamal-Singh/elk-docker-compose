#!/bin/bash

# Define the backup directory and the data directory
BACKUP_DIR="elk-docker-compose/data_backup"
DATA_DIR="elk-docker-compose/data/elasticsearch"

# Create the backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Stop the Elasticsearch container to ensure data consistency
docker-compose stop elasticsearch

# Create a timestamped backup
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
tar -czvf $BACKUP_DIR/elasticsearch_backup_$TIMESTAMP.tar.gz -C $DATA_DIR .

# Restart the Elasticsearch container
docker-compose start elasticsearch

echo "Backup completed successfully at $BACKUP_DIR/elasticsearch_backup_$TIMESTAMP.tar.gz"
