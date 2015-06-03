#! /bin/bash

nohup volt-api --config-file=/etc/volt/volt.conf > volt.log 2>&1 &
