#!/bin/bash
set -e
STAGE=${1:-dev}
source config/${STAGE}_config.env
echo "🚀 Deploying stage=$STAGE on port=$SERVER_PORT"

cd test-repo-for-devops
mvn clean package -DskipTests=true

cd target
nohup java -jar *.jar --server.port=${SERVER_PORT} --server.address=0.0.0.0 > ../../app.log 2>&1 &
echo "✅ Application started successfully (logs -> app.log)"
