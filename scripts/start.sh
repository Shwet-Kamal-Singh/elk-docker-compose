#!/bin/bash

# Ensure Docker Compose is installed
if ! command -v docker-compose &> /dev/null
then
    echo "docker-compose could not be found. Please install it to continue."
    exit
fi

# Start the ELK stack
docker-compose up -d

# Wait for services to be healthy
echo "Waiting for services to be healthy..."
sleep 30  # Adjust the sleep time if necessary

# Check the status of the services
docker-compose ps

echo "ELK stack started successfully."
