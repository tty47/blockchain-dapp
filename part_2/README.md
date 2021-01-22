# Dapp

This project creates a new Dapp which use the blockchain to store data.

## Setup a local node:
To develop in local, we need to install the following.

### Need to be install:

```npm
npm install -g @vue/cli truffle
npm install -g solc@0.7.6
```

Setup a local node:
[Ganache](https://www.trufflesuite.com/ganache)

## Development mode

In order to create new accounts for development execute:

```npm
truffle develop
```

## Migrations

To apply migrations inside the blockchain use inside truffle:

```npm
migrate
```

## Deployment

In order to use the ganache development network, you have to execute:

```bash
truffle migrate --network development
```


# Use VueJS as frontend



npm install web3  