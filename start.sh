#!/bin/bash

#if [[ "x$PROD" == "x" ]]; then 
#	echo "This script is for starting in production."
#	echo "Use"
#	echo "   mix phx.server"
#	exit
#fi

# TODO - DONE: Enable this script by removing the above.

export MIX_ENV=prod
export PORT=4790

echo "Stopping old copy of app, if any..."

cd /home/elixiruser/web-dev-hw02/

_build/prod/rel/practice/bin/practice stop || true

echo "Starting app..."

_build/prod/rel/practice/bin/practice start

# TODO - DONE: Change "foreground" to "Start"

# TODO - DONE: Add a cron rule or systemd service file
#       to start your app on system boot.

