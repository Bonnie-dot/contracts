// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {Script, console} from "lib/forge-std/src/Script.sol";
import {Box} from "../src/Box.sol";
import {Counter} from "../src/Counter.sol";

contract MyScript is Script {
    function setUp() public {}

    function run() external {
        console.log("Deploying Box contract...");
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        Box box = new Box(vm.envAddress("ADDRESS"));
        vm.stopBroadcast();
        console.log("Box contract deployed at address: ", address(box));
    }
}
