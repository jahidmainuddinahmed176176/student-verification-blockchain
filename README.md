# 🎓 Blockchain Student Verification System

A gas-optimized, privacy-preserving student verification system built on Ethereum Sepolia. Students can prove their identity to restaurants (for discounts) and universities (for applications) without revealing personal information.

## 🔧 How It Works

1. **University** hashes `(StudentName + StudentID + SecretNonce)` → generates a unique `leaf` hash
2. **University** stores the hash on-chain using Merkle Tree (batch issuance = low gas)
3. **Student** provides their original data + nonce to generate the same hash
4. **Restaurant / University** verifies the hash against the on-chain root → returns `true` or `false`

## ✨ Features

- ✅ **Privacy-focused** — Real names never touch the blockchain
- ✅ **Gas efficient** — Batch verification using Merkle Trees
- ✅ **Reusable proofs** — Same proof works for restaurants AND masters applications
- ✅ **Zero-cost verification** — `isStudent()` is a view function (no gas for verifiers)

## 🛠️ Tech Stack

| Layer | Technology |
|-------|------------|
| Smart Contract | Solidity (ERC-165 compatible) |
| Test Network | Ethereum Sepolia |
| Frontend | HTML/CSS/JS + Web3.js |
| Wallet | MetaMask |
| Storage | IPFS (optional) |

## 📦 Smart Contract Functions

| Function | Purpose | Gas Cost |
|----------|---------|----------|
| `setMerkleRoot(bytes32 _root)` | University adds a batch of students | ~45,000 gas |
| `isStudent(bytes32[] proof, bytes32 leaf)` | Verify if hash belongs to a student | **FREE** (view) |
| `claimOffer(bytes32[] proof, bytes32 leaf)` | Student claims a restaurant offer | ~30,000 gas |

## 🚀 Live Demo

🔗 [Frontend Application](https://jahidmainuddinahmed176176.github.io/student-verification-blockchain)

## 📋 How to Test (for Restaurant Owners)

1. Install **MetaMask** browser extension
2. Switch network to **Sepolia Testnet**
3. Get free Sepolia ETH from [faucet](https://sepolia-faucet.pk910.de/)
4. Open the [live demo](https://jahidmainuddinahmed176176.github.io/student-verification-blockchain)
5. Connect wallet
6. Paste student hash: `0x21d06a90b8f247ba079b583b3dceea6a27709f9b360b15aa7666306e5d2aad2`
7. Click "Verify" → Returns **✅ VERIFIED**

## 🧪 Sample Student Data (Testing Only)

| Field | Value |
|-------|-------|
| Name | Irfan Ali |
| Student ID | 20240123 |
| Secret Nonce | mango789 |
| **Hash (leaf)** | `0x21d06a90b8f247ba079b583b3dceea6a27709f9b360b15aa7666306e5d2aad2` |

## 📁 Project Structure
student-verification-blockchain/
├── index.html # Frontend (Web3.js + MetaMask)
├── StudentVerify.sol # Smart contract (Solidity)
└── README.md # This file


## 🔗 Contract on Etherscan

`0x801C7B476D1b82D32a0D048a248BFD0159846A26`

[View on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x801C7B476D1b82D32a0D048a248BFD0159846A26)

## 🎯 Future Improvements

- [ ] Add batch verification for 1000+ students
- [ ] Integrate ZK-proofs for complete privacy
- [ ] Add restaurant dashboard with QR code scanning
- [ ] Deploy to Ethereum Mainnet (requires real ETH)

## 📝 License

MIT

## 👨‍💻 Author

[Jahid Mainuddin Ahmed](https://github.com/jahidmainuddinahmed176176)

---

*Built as part of a blockchain thesis project — gas-optimized, privacy-first student verification.*