# Solidity with VueJS - Dapp

This project creates a new Dapp which use the blockchain to store data.
It has an smart contract with a counter, using the broswer, you will be able to communicate aginst the blockchain to store data.

---
## Setup a local node:
To develop in local, we need to install the following.

Setup a local node use *[Ganache](https://www.trufflesuite.com/ganache)*

### Need to be install:

```npm
npm install -g @vue/cli truffle
npm install -g solc@0.7.6
```
[Visual Studio Code](https://code.visualstudio.com/)

[NodeJS (versión LTS)](https://nodejs.org/en/)

[Chrome](https://www.google.com/chrome/)

[Metamask](https://metamask.io/)

[Ganache](https://www.trufflesuite.com/ganache)


---
## Development mode

In order to create new accounts for development execute:

```npm
truffle develop
```
---
## Migrations

To apply migrations inside the blockchain use inside truffle:

```npm
migrate
```

Once you have deployed, execute this to redeploy:

```npm
truffle migrate --reset 
```

---
## Deployment

In order to use the ganache development network, you have to execute:

```bash
truffle migrate --network development
```
---

# Use VueJS as frontend

Library to communicate with a provider

```bash
npm install web3  
```
To start the server in the browser: http://localhost:8080
```npm
npm run serve
```


### Remember

* Change the var counterAddr everytime you deploy the contract


---
Jose Ramon Mañes