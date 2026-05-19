
<div align="center">

![Blockchain Student Verification](https://img.shields.io/badge/Blockchain-Ethereum-blue?style=for-the-badge&logo=ethereum)
![Solidity](https://img.shields.io/badge/Solidity-^0.8.0-363636?style=for-the-badge&logo=solidity)
![Sepolia](https://img.shields.io/badge/Network-Sepolia-3b82f6?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

# 🎓 Blockchain Student Verification System

### Zero-Knowledge • Gas Optimized • Privacy First

[![Live Demo](https://img.shields.io/badge/Live_Demo-8B5CF6?style=for-the-badge&logo=githubpages&logoColor=white)](https://jahidmainuddinahmed176176.github.io/student-verification-blockchain)
[![Contract](https://img.shields.io/badge/View_Contract-Etherscan-3b82f6?style=for-the-badge&logo=etherscan)](https://sepolia.etherscan.io/address/0x801C7B476D1b82D32a0D048a248BFD0159846A26)

</div>


---

## 🚀 Live Demo

👉 **[Click Here to Test the System](https://jahidmainuddinahmed176176.github.io/student-verification-blockchain)**

### Test Credentials (Valid Student)

```json
{
  "name": "Irfan Ali",
  "studentId": "20240123", 
  "secretNonce": "mango789",
  "hash": "0x21d06a90b8f247ba079b583b3dceea6a27709f9b360b15aa7666306e5d2aad2"
}
```

---




## 📌 Overview

A **gas-efficient, privacy-preserving** student verification system built on **Ethereum Sepolia**.  
Students prove their identity without revealing personal data — perfect for:

✅ Restaurant student discounts  
✅ Masters program applications  
✅ University exam hall access  
✅ Any service requiring student verification

---

## 🔧 How It Works

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Student   │     │ University  │     │ Restaurant  │
└──────┬──────┘     └──────┬──────┘     └──────┬──────┘
       │                   │                   │
       │ Name + ID + Nonce │                   │
       │ ─────────────────>│                   │
       │                   │                   │
       │                   │ Hash → Merkle Tree│
       │                   │ ─────────────────>│
       │                   │     Blockchain    │
       │                   │                   │
       │ Provide proof     │                   │
       │ ─────────────────────────────────────>│
       │                   │                   │
       │                   │    Verify proof   │
       │                   │<──────────────────│
       │                   │    ✅ / ❌        │
```

**Step-by-step:**

1. **Student** shares `(Name + ID + SecretNonce)` with university
2. **University** hashes the data → generates unique `leaf`
3. **University** stores leaf on-chain (Merkle Tree = low gas)
4. **Student** provides same data → generates same hash
5. **Verifier** checks if hash exists on blockchain → instant result

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🔒 **Privacy** | No personal data stored — only cryptographic hashes |
| ⛽ **Gas Efficient** | Batch verification via Merkle Trees |
| ♻️ **Reusable** | One proof works for any verifier |
| 🆓 **Free Verification** | `isStudent()` is a view function — no gas for verifiers |
| 🎨 **Modern UI** | Dark theme with particle animations |
| 🔗 **Web3 Integrated** | MetaMask connection ready |

---

## 🛠️ Tech Stack

<div align="center">

| Layer | Technology |
|-------|------------|
| **Smart Contract** | Solidity 0.8.34 |
| **Blockchain** | Ethereum Sepolia (Testnet) |
| **Frontend** | HTML5 + CSS3 + JavaScript |
| **Web3 Library** | Web3.js |
| **Wallet** | MetaMask |
| **Version Control** | Git + GitHub |

</div>

---

## 📦 Smart Contract Functions

```solidity
// Add a batch of students (university only)
function setMerkleRoot(bytes32 _root) external

// Verify if a student exists — FREE (no gas)
function isStudent(bytes32[] memory proof, bytes32 leaf) 
    public view returns (bool)

// Student claims an offer (small gas cost)
function claimOffer(bytes32[] memory proof, bytes32 leaf) external
```


## 📋 How to Test (For Restaurant Owners)

1. **Install MetaMask** from [metamask.io](https://metamask.io)
2. **Switch network** to Sepolia Testnet
3. **Get free ETH** from [Sepolia Faucet](https://sepolia-faucet.pk910.de)
4. **Open** [Live Demo](https://jahidmainuddinahmed176176.github.io/student-verification-blockchain)
5. **Click "Verify Student"** → Connect MetaMask
6. **Paste hash** `0x21d06a90b8f247ba079b583b3dceea6a27709f9b360b15aa7666306e5d2aad2`
7. **Result:** ✅ VERIFIED!

---

## 🔗 Contract Information

| Property | Value |
|----------|-------|
| **Address** | `0x801C7B476D1b82D32a0D048a248BFD0159846A26` |
| **Network** | Ethereum Sepolia (Chain ID: 11155111) |
| **Explorer** | [View on Etherscan](https://sepolia.etherscan.io/address/0x801C7B476D1b82D32a0D048a248BFD0159846A26) |

```


