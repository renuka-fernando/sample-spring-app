#!/bin/bash
echo 'Stopping server...'
kill $(cat application_pid)
echo 'Server successfully stopped.'

rm -f /tmp/sample-spring-app-1.0-SNAPSHOT.jar