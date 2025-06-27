# 🚀 BEP-20 Token Project – DELToken42

## 📌 Project Overview

This project is part of a school assignment to design and deploy a custom BEP-20 token on the Binance Smart Chain **Testnet**, using **Remix IDE** and **Solidity**. The goal is to understand the structure of blockchain-based tokens, how smart contracts work, and the process of deployment and interaction.

---

## 💡 Token Information

- **Token Name**: DEL42
- **Token Symbol**: DEL42
- **Total Supply**: [e.g., 1000000 (1 million tokens)]  
- **Decimals**: [e.g., 18]  
- **Standard**: BEP-20 (Binance Smart Chain)  
- **Network**: BSC Testnet  
- **Deployed With**: Remix IDE + MetaMask (using tBNB for gas)

---

## 🧠 Design Choices & Justification

### 🔠 Token Name & Symbol
- The name DELToken42 includes "42" as required.
- Symbol DEL42 is short, readable, and reflects the token name.

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

