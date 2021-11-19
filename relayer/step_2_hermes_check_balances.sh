#!/bin/sh

trap 'read -p "run: $BASH_COMMAND"' DEBUG

#----------------------------------------------------
# HERMES - QUERY BALANCES
#----------------------------------------------------

# Query Balances

echo "Query balance - tellurian (earth)"
earthd --node tcp://localhost:26659 query bank balances $(earthd --home $HOME/.earth keys show tellurian -a)

echo "Query balance - greenman (mars)"
marsd --node tcp://localhost:26559 query bank balances $(marsd --home $HOME/.mars keys show greenman -a)

# Show Denom Trace
echo "Show denom trace"
marsd query ibc-transfer denom-traces --home ~/.mars --node http://localhost:26559

