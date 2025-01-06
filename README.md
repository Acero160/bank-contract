# Bank Smart Contract  

This repository contains a simple **Bank Smart Contract** implemented in Solidity. It simulates basic banking operations, allowing users to manage their balances and perform secure transactions on the Ethereum blockchain.  

## Features  

1. **Deposit Funds:**  
   - Users can add funds to their account balance.  

2. **Check Balance:**  
   - Users can view their current account balance.  

3. **Transfer Funds:**  
   - Users can securely transfer funds to other accounts within the contract.  

4. **Event Notifications:**  
   - The contract emits a `Transfer` event for every successful transaction, providing transparency and traceability.  

## Contract Overview  

The contract uses a `mapping` data structure to store account balances:  
- **Key:** Ethereum address of the user.  
- **Value:** The balance associated with the address.  

### Functions  

1. **addBalance(uint _amount):**  
   - Adds the specified `_amount` to the sender's account balance.  
   - Returns the updated balance.  

2. **getBalance():**  
   - Returns the balance of the sender's account.  

3. **transfer(address _to, uint _amount):**  
   - Allows a user to transfer `_amount` to another Ethereum address (`_to`).  
   - Internally calls the `_transfer` function for execution.  

4. **_transfer(address _from, address _to, uint _amount) (Private):**  
   - Updates balances for the sender (`_from`) and recipient (`_to`).  
   - Emits a `Transfer` event with the details of the transaction.  

### Events  

- **Transfer(address _from, address _to, uint _amount):**  
   - Triggered whenever a transfer is successfully executed.  
   - Logs the sender, recipient, and amount of the transaction.  

## Security  

- Transactions are managed securely, with balances updated atomically to prevent inconsistencies.  
- Only the balance of the sender (`msg.sender`) can be accessed or modified.  

## Getting Started  

### Requirements  

- A Solidity development environment (e.g., Remix, Hardhat).  
- An Ethereum wallet with test ether for deploying and interacting with the contract.  

### Deployment and Interaction  

1. Deploy the contract on an Ethereum-compatible blockchain or test network.  
2. Use the following functions to interact with the contract:  
   - **Deposit funds:** Call `addBalance` with the desired amount.  
   - **Check balance:** Call `getBalance` to view your current account balance.  
   - **Transfer funds:** Call `transfer` with the recipient's address and amount to initiate a transaction.  

## Notes  

This smart contract demonstrates the foundational logic of a decentralized banking system. It is a great starting point for understanding how blockchain technology can be used to manage financial transactions securely and transparently.
