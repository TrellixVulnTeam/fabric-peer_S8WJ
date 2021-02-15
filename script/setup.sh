#/bin/sh

if [ "binary" = "$1" ]; then
    curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.3.0 1.4.9 -ds
fi

if [ "docker" = "$1" ]; then
    curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.3.0 1.4.9 -bs
    docker build -t hyperledger/fabric-tools:custom -f docker/Dockerfile-cli .
fi
