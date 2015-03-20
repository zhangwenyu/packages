#!/bin/bash

FILE_NAME="virtmanserver.py"

PID = ps aux | grep $FILE_NAME | grep "python" | grep -v "$$" | grep -v grep | awk '{print $2}'

echo 'find ' $FILE_NAME ' process id: ' $PID

for i in PID
do
	/bin/kill -9 $PID
	echo 'kill pid:' $PID
done
