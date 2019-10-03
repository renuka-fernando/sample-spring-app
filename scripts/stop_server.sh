#!/bin/bash
echo 'Stopping server...'
kill echo $(ps aux | grep 'mitrai-sample-spring-app' | awk '{print $2}')
echo 'Server successfully stopped.'

rm -f /tmp/sample-spring-app-1.0-SNAPSHOT.jar