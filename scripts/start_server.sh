#!/bin/bash
echo 'Starting server...'
nohup run_application.sh > application.out 2> application.err < /dev/null &
echo 'Server successfully started.'