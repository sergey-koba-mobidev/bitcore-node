# Dockerized Bitcore node for Testnet

# First RUN
- Install Docker
- Install Docker Compose
- cd to the project and run `docker-compose build`

# Start
- to start container with bitcore node run `docker-compose up -d`

# Stop
- `docker-compose stop`

# Logs
- `docker-compose logs node`
- or use `docker ps` to find container_id and run `docker attach <container_id>`

# Run commands
- `docker-compose run node <command>`

# Console
- `docker-compose run node /bin/bash`

# API
- http://localhost:3001
- example: http://localhost:3001/insight-api/block-index/0
- example2: http://localhost:3001/insight/address/mzVjXYfGBwphT4t6cBcuGAxQd2DzUnNp9k
