# **Deploying an ERC-721 Smart Contract on Monad Testnet Using Foundry and Catapulta**

This guide walks you through setting up a development environment, deploying an ERC-721 smart contract on the Monad testnet, and verifying it using Catapulta.

---

## **Prerequisites**
Ensure you have the following installed and configured:

- **Windows 10/11 with WSL2 enabled**
- **Ubuntu** (or another Linux distribution via WSL)
- **VSCode** (recommended for editing)
- **Foundry** (Install via `curl -L https://foundry.paradigm.xyz | bash`)
- **Catapulta CLI** (Install globally via `npm install -g catapulta`)
- **Monad Testnet RPC URL**: `https://testnet-rpc.monad.xyz`
- **A deployer account with MON Testnet tokens** (Catapulta will sponsor your deploy if needed)
- **Catapulta API Key**: Create a [Catapulta](https://catapulta.sh/) account and obtain your API key, then set it in your environment:
    ```bash
    export CATAPULTA_API_KEY=your_api_key_here
    ```

---

## **Setting Up the Environment in WSL**

1. **Install WSL (if not already installed)**:
   Open PowerShell as Administrator and run:
   ```powershell
   wsl --install
   ```
   Then, install Ubuntu from the Microsoft Store if needed.

2. **Install Foundry**:
   ```bash
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```

3. **Clone the Repository & Install Dependencies**:
   ```bash
   git clone https://github.com/DaemonBSD/monad-nft-project.git
   cd monad-nft-project
   forge install
   ```

---

## **Deploying the Contract Using Catapulta**

Run the following command to deploy your ERC-721 contract on the Monad testnet using Catapulta (with sponsorship for gas fees):

```bash
npx catapulta script script/Deploy.s.sol --network monadTestnet --sponsor
```

After a successful deployment, the terminal will display a **Deployment Report URL**, which includes:
- Contract Address
- Transaction Details
- A Button for **Contract Verification**

Example output:
```
✅ Deployment successfully broadcasted to Monad Testnet network.

Deployment report:
- Monad Testnet deployment:
  - Status : Success ✅
  - UUID   : c0aa2b79-de9a-420d-a5e0-e90daaf32189
  - Report URL : https://catapulta.sh/project/67b680daf8a0c04f73416832/op/c0aa2b79-de9a-420d-a5e0-e90daaf32189
```

Click the **Report URL** to view your deployment details.

---

## **Verifying the Contract**

If you did not verify your contract directly through Catapulta, you can manually verify it using Foundry:

```bash
forge verify-contract \
  --rpc-url https://testnet-rpc.monad.xyz \
  --verifier sourcify \
  --verifier-url 'https://sourcify-api-monad.blockvision.org' \
  0xYourContractAddress \
  src/Pixel20Penguin.sol:Pixel20Penguin
```

---

## **Pushing the Project to GitHub**
To share your project, push it to GitHub:

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/DaemonBSD/monad-nft-project.git
git push -u origin main
```

---

## **Monad Testnet Ecosystem**
Here we go devnads :pepe_typing:, straight to the point, TESTNET IS LIVE.  
- Try it out here: [Monad Testnet](https://testnet.monad.xyz/)  
- If you're confused go here: [Monad Testnet Onboarding Guide](https://monad.xyz/post/monad-testnet-onboarding-guide)  
- If you're a devnad, go here: [Monad Developer Docs](https://developers.monad.xyz/)  
- If you wanna check out the ecosystem, go here: [Monad Ecosystem](https://monad.xyz/ecosystem)  
- If you wanna see the validators in action, go here: [Monad Validators](https://www.gmonads.com/)  
- If you wanna check the chain, go here: [Monad Explorer](https://monad-testnet.socialscan.io/)  

---

## **Final Considerations**
- If you encounter issues with dependencies, ensure you run:
  ```bash
  forge install
  forge build
  ```
- You can interact with your contract using Foundry's `cast` tool:
  ```bash
  cast call 0xYourContractAddress "ownerOf(uint256)" 1 --rpc-url https://testnet-rpc.monad.xyz
  ```

This tutorial provides a **fast and efficient** way to deploy and verify smart contracts on Monad Testnet using Foundry and Catapulta.

Happy coding! 🚀

---

## **Contact Information**
For questions, feedback, or collaboration opportunities, feel free to reach out:
- **Twitter/X:** [DaemonB2D](https://x.com/DaemonB2D)

