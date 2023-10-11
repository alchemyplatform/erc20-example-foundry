# ERC-20 Example with Foundry

This is a simple ERC-20 token based off the tutorial: https://www.youtube.com/watch?v=fNMfMxGxeag

It is used to demonstrate the power of gasless minting using Account Abstraction.

## Build and Test

Reference: https://book.getfoundry.sh/projects/working-on-an-existing-project

These are commands you can use to start developing:

```
forge install --no-commit
forge build
forge test
```

Reference: https://book.getfoundry.sh/projects/creating-a-new-project

These are the commands I used to create this project on this repo from scratch. Ignore flags as necessary:

```
mkdir <YOUR-PROJECT-FOLDER>
cd <YOUR-PROJECT-FOLDER>
forge init --force
forge install openzeppelin/openzeppelin-contracts
forge build
forge test
```

## Deploy

Reference: https://book.getfoundry.sh/forge/deploying

1. Set your environment variables by running:

```
export ALCHEMY_RPC_URL=<YOUR-ALCHEMY-RPC-URL>
export WALLET_PRIVATE_KEY=<YOUR-WALLET-PRIVATE-KEY>
export ETHERSCAN_API_KEY=<YOUR-ETHERSCAN-API-KEY>
```

2. Deploy and Verify the Contract using:

```
forge create <CONTRACT-NAME> --rpc-url=$ALCHEMY_RPC_URL \
    --private-key=$WALLET_PRIVATE_KEY \
    --etherscan-api-key=$ETHERSCAN_API_KEY \
    --verify
```

If you need testnet tokens for the EOA wallet deploying this contract, use: https://sepoliafaucet.com.
If you need an etherscan API key, use: https://etherscan.io/myapikey.

If successfully deployed, you will see the deploying wallet's address, the contract's address as well as the transaction hash printed to your terminal.

Don't forget to remove the sensitive variables you exported:

```
unset ALCHEMY_RPC_URL
unset WALLET_PRIVATE_KEY
unset ETHERSCAN_API_KEY
```
