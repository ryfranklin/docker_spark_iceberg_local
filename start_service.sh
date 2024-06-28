#!/bin/bash

# Load environment variables from a file
if [ -f .env ]; then
  export $(grep -v "^#" .env | xargs)
fi

docker-compose up