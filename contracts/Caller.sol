// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ILogic.sol";

contract Caller {
    ILogic public proxy;

    constructor(address _proxyAddress) {
        proxy = ILogic(_proxyAddress);
    }

    function callIncrement() public {
        proxy.increment(); // Calls increment() through the proxy
    }
}