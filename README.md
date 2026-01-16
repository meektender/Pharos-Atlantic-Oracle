![Pharos Network](https://img.shields.io/badge/Network-Pharos_Atlantic-blue) ![Status](https://img.shields.io/badge/Status-Verified-green) ![Version](https://img.shields.io/badge/Version-3.0_Risk_Weighted-orange)# Pharos Atlantic Oracle Project 🚀
---
### 👨‍💻 Developer meektender
- **Role:** Smart Contract Architect (Season 4)
- **Status:** Active Builder
- #### 📍 V4: Compatibility-Optimized Oracle (LATEST)
**Deployed:** Jan 2026 | **Status:** 🟢 Verified & Tested
**Contract Address:** `0x25395d68f67bb34d6547872b698b0b02be41711d`

**Innovation: "Protocol Alignment"**
This version focuses on infrastructure resilience. I identified a deployment conflict between the standard Shanghai EVM opcodes (PUSH0) and the Pharos Atlantic execution layer. 

**Technical Fix:** I manually reconfigured the compiler to target the **London EVM**, ensuring a successful, stable deployment and 100% verification on Pharoscan. This build maintains all "Risk Dampening" logic from V3 while ensuring cross-chain compatibility.

---

---

## 📍 V3: Risk-Weighted Oracle (CURRENT)
**Deployed:** Jan 2026 | **Status:** Verified & Tested
- **Contract Address:** `[0xB198705CDb3afe063eC1E36Afaa0A52A319DB1d2`
- **Innovation:** This version introduces "Risk Dampening." Unlike standard feeds, this contract can adjust asset value based on a `riskLevel` factor to protect users from flash-crashes.

---

## 🕒 Version History
| Version | Focus | Address |
| :--- | :--- | :--- |
| **V2.0** | Historical Data | `[0x460861776A345d59c3acC2ef9b888f9d8760F929` |
| **V1.0** | Basic Feed | `[0xa2b07c8ad43e261f40b2098afe11b61ca430d29d` |

---

## 🧪 Security & Verification
- All contracts are verified on **Pharoscan**.
- Manual stress-tests performed on `updatePrice` and `setRiskLevel` to ensure mathematical accuracy under dampening.
