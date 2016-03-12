#!/bin/bash

cd java && ./build.sh && cd ..
cd cassandra && ./build.sh && cd ..
cd kafka && ./build.sh && cd ..
cd spark && ./build.sh && cd ..
cd zookeeper && ./build.sh && cd ..
cd rabbitmq && ./build.sh && cd ..
