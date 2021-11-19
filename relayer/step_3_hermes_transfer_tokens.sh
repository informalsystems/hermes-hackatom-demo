#!/bin/sh

trap 'read -p "run: $BASH_COMMAND"' DEBUG

#----------------------------------------------------
# HERMES - TRANSFER TOKENS
#----------------------------------------------------

# Fungible token transfer 
echo "Transfer tokens from Earth to Mars"
hermes -c ./config.toml tx raw ft-transfer mars earth transfer channel-0 100 --timeout-height-offset 10 --denom ecoin -n 1

