#!/bin/bash

export DESKTOP_SESSION=ubuntu
# export KDE_FULL_SESSION=
export GNOME_DESKTOP_SESSION_ID=this-is-deprecated
export XDG_CURRENT_DESKTOP=ubuntu:GNOME
export DISPLAY=:1
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

SCRIPT_DIR=$(cd $(dirname $0); pwd)
LOG_FILE=$SCRIPT_DIR/himawari.log
HIMAWARI_PY=$SCRIPT_DIR/.venv/bin/himawaripy

date | tee -a $LOG_FILE
$HIMAWARI_PY -o +9 -l 8 -d 2 2>&1 | tee -a $LOG_FILE
