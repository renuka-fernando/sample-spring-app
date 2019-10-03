#!/bin/bash
echo 'Starting server...'
nohup java -Dname=mitrai-sample-spring-app -jar /tmp/sample-spring-app-1.0-SNAPSHOT.jar > /tmp/application.out 2> /tmp/application.err < /dev/null &
echo 'Server successfully started.'