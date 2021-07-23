#!/bin/bash

LOG_FILE=/var/log/cron/kannkyo/himawari.log

date | tee -a $LOG_FILE
/home/kannkyo/.local/bin/himawaripy -o +9 -l 8 -d 2 2>&1 | tee -a $LOG_FILE
