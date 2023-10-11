// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {AccountKitToken} from "../src/AccountKit.sol";

contract AccountKitTokenTest is Test {
    AccountKitToken public token;

    function setUp() public {
        token = new AccountKitToken();
    }

    function test_mint(address addr) public {
        token.mint(addr);
        assertEq(token.balanceOf(addr), 1.0 * 10 ^ token.decimals());
    }

    function test_name() public {
        assertEq(token.name(), "AccountKitToken");
    }

    function test_symbol() public {
        assertEq(token.symbol(), "ACKT");
    }
}
