# 🚀 BEP-20 Token Project – RAFFLE42

## 📌 Project Overview

This project is part of a school assignment to design and deploy a custom BEP-20 token on the Binance Smart Chain **Testnet**, using **Remix IDE** and **Solidity**. The goal is to understand the structure of blockchain-based tokens, how smart contracts work, and the process of deployment and interaction.

---

## 💡 Token Information

- **Token Name**: RAFFLE42
- **Token Symbol**: RAF42
- **Total Supply**: 1000000
- **Decimals**: 18  
- **Standard**: BEP-20 (Binance Smart Chain)  
- **Network**: BSC Testnet  
- **Deployed With**: Remix IDE + MetaMask (using tBNB for gas)

---

## 🧠 Design Choices & Justification
The fungible token will be use as payment to participate in a raffle and the contract is able to save a register of all the tickets and select a winner selecting a random token/ticket and reset the register for a new raffle.
- 1 token = 1 ticket
- Random winner selection
- Reset register for new ruffles

### 🔠 Token Name & Symbol
- The name RAFFLE42 includes "42" as required and the main use of the token itself.
- Symbol RAF42 is short, readable, and reflects the token name.

### ⚙️ Technical Stack
- **Blockchain Platform**: Binance Smart Chain (Testnet)  
- **Programming Language**: Solidity (version ^0.8.x)  
- **Development Environment**: Remix IDE in-browser  
- **Wallet**: MetaMask connected to BSC Testnet  
- **Deployment Token**: tBNB (Testnet BNB, no real money used)

### 📦 Token Behavior
- Total supply is minted at deployment and assigned to the deployer’s address.
- The token follows all required BEP-20 standards including:
  - `name()`
  - `symbol()`
  - `decimals()`
  - `totalSupply()`
  - `balanceOf()`
  - `transfer()`
  - `approve()`
  - `transferFrom()`
  - `allowance()`
- Raffle participants are able to buy tokens
- Token owners can add tokens to the raffle
- The deployer will be able start the winner selection
- When a winner is selected the register is clean for new raffles
---

## 🚀 How to Deploy the Token

### 🛠 Prerequisites
- MetaMask with BSC Testnet configured
- tBNB in your wallet (from a BSC faucet)
- Remix IDE (https://remix.ethereum.org)

### 🔄 Steps
1. Open Remix IDE and create a new Solidity file (e.g., `MyToken42.sol`).
2. Paste the smart contract code (see `MyToken42.sol`).
3. Compile the contract with Solidity version 0.8.x.
4. Connect MetaMask to Remix (Injected Provider – MetaMask).
5. Deploy the contract to BSC Testnet.
6. Verify the contract if needed (optional).
7. "Buy" tokens
8. Add the tokens to the raffle
9. With the deployer wallet select a winner

---

## 🧪 Testing & Interaction

After deployment:
- Use Remix to call `balanceOf()` and `transfer()` functions.
- Use MetaMask or BSCScan Testnet to view token activity.

---

## 📎 Notes

- This project is built purely for educational purposes.
- No real money was used at any point; only testnet resources were utilized.
- Complies with all technical and behavioral guidelines provided.

---

## 👤 Author

- **Name**: Daniel Expósito López
- **School**: 42 Madrid
- **Class / Course**: outcorer proyect - Tokenizer

---

## 📚 Resources

- [BSC Docs – BEP-20](https://docs.bnbchain.org/smart-chain/developer/BEP20)
- [Solidity Language Docs](https://docs.soliditylang.org/)
- [Remix IDE](https://remix.ethereum.org)
- [BSC Testnet Faucet](https://testnet.bnbchain.org/faucet-smart)

