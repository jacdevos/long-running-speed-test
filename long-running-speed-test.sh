#!/bin/bash

# Number of minutes to run the test
MINUTES=10

for ((i=1; i<=MINUTES; i++))
do
    echo "Running test $i of $MINUTES"
    speedtest-cli --no-upload --single --simple 2>/dev/null
    if [ $i -lt $MINUTES ]; then
        sleep 60  # Wait for 1 minute
    fi
done

echo "Completed all tests."