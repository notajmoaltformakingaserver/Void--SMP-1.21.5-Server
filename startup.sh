#!/bin/bash

echo "Starting Velocity proxy..."
cd velocity
java -jar velocity-3.5.0-all.jar &
sleep 3  # wait a few seconds for port 25567 to open
cd ..

echo "Starting Limbo..."
cd limbo
java -jar server.jar &
sleep 2
cd ..

echo "Starting Paper server..."
cd server
java -jar server.jar

echo "[JmoCorp]: Hi console!"