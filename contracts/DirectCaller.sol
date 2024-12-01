// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DirectCaller {
    address public proxy;

    constructor(address _proxyAddress) {
        proxy = _proxyAddress;
    }

    function callIncrement() public {
        (bool success, ) = proxy.call(abi.encodeWithSignature("increment()"));
        require(success, "Call to increment failed");
    }
}