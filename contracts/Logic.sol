// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";


contract Logic {
    uint256 public counter; // Note: This is only a placeholder for demonstration.

    function increment() public {
        counter += 1;
        console.log("Logic_v1 counter incremented");
    }
}
