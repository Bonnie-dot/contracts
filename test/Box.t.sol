// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "lib/forge-std/src/Test.sol";
import {Box} from "../src/Box.sol";

contract BoxTest is Test {
    Box public box;

    function setUp() public {
        box = new Box(address(this));
    }

    function test_Store() public {
        box.store(42);
        assertEq(box.retrieve(), 42);
    }

    function testFuzz_Store(uint256 x) public {
        box.store(x);
        assertEq(box.retrieve(), x);
    }
}
