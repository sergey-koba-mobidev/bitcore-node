FROM node:4.8

# Install ZeroMQ, python 2.7+ (needed for zmq), python3, pip3, python3 plugin
RUN apt-get update -qq && apt-get install \
  -y build-essential libzmq3-dev python python3 python3-pip

# Install bitcore
RUN npm install -g bitcore@4.1.0

# Install pm2 for auto monitoring of bitcore process
RUN npm install -g pm2

# Copy node json config
COPY ./configs/bitcore-node.json /root/.bitcore/

# Copy bitcoin.conf
COPY ./configs/bitcoin.conf /root/.bitcore/data/
