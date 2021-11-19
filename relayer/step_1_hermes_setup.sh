#!/bin/sh

trap 'read -p "run: $BASH_COMMAND"' DEBUG

#----------------------------------------------------
# HERMES - CONFIGURE
#----------------------------------------------------

# Add keys

# Earth key
echo "Add earth tellurian key"
hermes -c ./config.toml keys add earth -f ./earth_tellurian_key.json 

# Mars key
echo "Add mars greenman key"
hermes -c ./config.toml keys add mars -f ./mars_greenman_key.json

# List keys
echo "List keys"
hermes -c ./config.toml keys list earth
hermes -c ./config.toml keys list mars

#----------------------------------------------------
# HERMES - START RELAYER
#----------------------------------------------------

# Open Channel
echo "Open Channel between Earth and Mars"
hermes -c ./relayer/config.toml create channel earth mars --port-a transfer --port-b transfer

# Start the Relayer
echo "Start Relaying using Hermes"
hermes -c ./relayer/config.toml start
