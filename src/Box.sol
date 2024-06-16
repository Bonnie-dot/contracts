// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {console} from "lib/forge-std/src/Script.sol";
contract Box is Ownable {
    uint256 private value;

    constructor(address initialOwner) Ownable(initialOwner) {
        console.log("Box contract deployed by: ", initialOwner);
    }

    event ValueChanged(uint256 newValue);

    function store(uint256 newValue) public onlyOwner {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieve() public view returns (uint256) {
        return value;
    }
}
