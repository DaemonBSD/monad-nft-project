// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "forge-std/Script.sol";
import {Pixel20Penguin} from "../src/Pixel20Penguin.sol";

contract DeployScript is Script {
    function run() public {
        // Read the deployer's private key from the environment (set as PRIVATE_KEY or DEPLOYER_KEY)
        uint256 deployerKey = vm.envUint("DEPLOYER_KEY");
        
        vm.startBroadcast(deployerKey);
        // Deploy the contract, using msg.sender as the initialOwner
        Pixel20Penguin nft = new Pixel20Penguin(msg.sender);
        vm.stopBroadcast();
    }
}
