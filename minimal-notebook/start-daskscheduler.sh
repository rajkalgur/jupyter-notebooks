#!/bin/bash

set -x
pip install "tornado<6"
set -eo pipefail

exec /opt/app-root/bin/start.sh dask-scheduler $DASK_SCHEDULER_ARGS "$@"
