#!/bin/bash
set -o errexit

WORKER_ID=0
PORT=8888

if [[ $# -gt 0 ]]; then
    WORKER_ID=$1
    shift
fi
if [[ $# -gt 0 ]]; then
    PORT=$1
    shift
fi

exec /flake.py --worker_id=$WORKER_ID --port=$PORT
