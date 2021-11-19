# Hermes - Connecting IBC Enabled Blockchains Demo

## Introduction

In this demo we will be working with the [Hermes IBC Relayer](https://hermes.informal.systems) in order to transfer fungible tokens ([ics-020](https://github.com/cosmos/ics/tree/master/spec/ics-020-fungible-token-transfer)) between two [Starport](https://github.com/tendermint/starport) custom chains.

This demo's primary goal is to better understand the IBC protocol and how packets are relayed from one chain to another using the IBC primitives (client, connections, channels, ports, and packets).

## Pre-requisites

* Starport
* Hermes

Please check the section links above to install them

## Instructions

### Git clone this repo

```
git clone https://github.com/informalsystems/hermes-hackatom-demo

cd hermes-hackatom-demo
```
### Build chains

```
cd chains/earth
starport chain build

cd chains/mars
starport chain build
```

### Start the chains

```
cd chains/earth
starport chain serve -f
```

#### Run this on another terminal:
```
cd chains/mars
staport chain serve -f
```

### Import keys

On another terminal run these commands to add keys to keyring

```
./chains/earth/setup_key.sh

./chains/mars/setup_key.sh
```

### Run the relayer and transfer tokens

Run the steps scripts

```
./relayer/step_1_hermes_setup.sh
```

On another terminal run these:

```
./relayer/step_2_hermes_check_balances.sh

./relayer/step_3_hermes_transfer_tokens.sh
```

## References

* [Interchain Standards](https://github.com/cosmos/ics)
* [IBC Protocol Website](https://ibcprotocol.org)
* [IBC Modules and Relayer in Rust](https://github.com/informalsystems/ibc-rs)
* [Hermes Documentation](https://hermes.informal.systems)
