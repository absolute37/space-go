#!/bin/sh
DIR=`dirname $0`

docker rm -f database


echo "✅ Start docker ..."
docker-compose -f $DIR/docker-compose.yml up -d --build  database



# docker exec -it sqlserver /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P reallyStrongPwd123 -i /migration/initsql.sql


