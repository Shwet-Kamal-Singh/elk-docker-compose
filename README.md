# ELK Docker Compose Setup

This repository provides a complete setup for running the ELK stack (Elasticsearch, Logstash, and Kibana) using Docker Compose. The setup includes necessary configurations, certificates for SSL, and scripts for managing the ELK stack.

## Repository Structure

```plaintext
elk-docker-compose/
│   .env                          # Environment variables file
│   docker-compose.yml            # Docker Compose file
│   elasticsearch.yml             # Elasticsearch configuration file
│   kibana.yml                    # Kibana configuration file
│   LICENSE                       # License file
│   README.md                     # Documentation and usage instructions
│
├───certs                         # SSL certificates for Elasticsearch, Kibana, and Logstash
│   ├───elastic
│   │       cert.pem
│   │       fullchain.pem
│   │       privkey.pem
│   │
│   ├───kibana
│   │       cert.pem
│   │       fullchain.pem
│   │       privkey.pem
│   │
│   └───logstash
│           cert.pem
│           fullchain.pem
│           privkey.pem
│
├───data                          # Data directory for Elasticsearch
│   └───elasticsearch
├───logs                          # Log files for Elasticsearch, Kibana, and Logstash
│       elasticsearch.log
│       kibana.log
│       logstash.log
│
├───logstash                      # Logstash configuration directory
│   └───pipeline
│           additional_pipeline.conf
│           logstash.conf
│
└───scripts                       # Management scripts
        backup.sh                 # Script for backing up Elasticsearch data
        restore.sh                # Script for restoring Elasticsearch data
        start.sh                  # Script to start the ELK stack

Elasticsearch: https://www.elastic.co/docs
Logstash: https://www.elastic.co/guide/en/logstash/current/index.html
Kibana: https://www.elastic.co/guide/en/kibana/current/index.html
Docker Compose: https://docs.docker.com/compose/
