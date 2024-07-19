#!/bin/bash

echo "#### post-create-command.sh: $(date) - start"

set -e

env

me=$(basename "$0")

echo "#### post-create-command.sh: $(date) - me is $(me)"

ln -s /usr/local/share/nvm/versions/node/v20.15.1/bin/node /usr/bin/node

# wget https://dlcdn.apache.org/thrift/0.20.0/thrift-0.20.0.tar.gz
# tar -xzf thrift-0.20.0.tar.gz
cd thrift-0.20.0/

# https://github.com/apache/thrift/blob/3caf963e489a88710484ff3f7adae5f7d2dc5b34/.github/workflows/build.yml#L11-L34

./configure \
    --without-cpp \
    --without-c_glib \
    --without-kotlin \
    --without-python \
    --without-ruby \
    --without-haxe \
    --without-netstd \
    --without-perl \
    --without-php \
    --without-php_extension \
    --without-dart \
    --without-erlang \
    --without-go \
    --without-d \
    --without-nodets \
    --without-lua \
    --without-rs \
    --without-swift

make

make install

cd ..

echo "#### post-create-command.sh: $(thrift --version)"

echo "#### post-create-command.sh: $(date) - end"
