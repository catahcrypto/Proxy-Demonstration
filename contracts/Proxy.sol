// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Proxy {
    address public implementation; // Address of the logic contract
    uint256 public counter; // Storage variable to be manipulated by Logic contract

    constructor(address _implementation) {
        implementation = _implementation;
    }

    // Fallback function to forward calls to the implementation contract
    fallback() external payable {
        (bool success, ) = implementation.delegatecall(msg.data);
        require(success, "Delegatecall failed");
    }

    // Receive function to handle plain Ether transfers
    receive() external payable {
        // Logic to execute when receiving Ether (if any)
    }


    // Function to update the implementation contract address
    function upgrade(address _newImplementation) public {
        implementation = _newImplementation;
    }

    
}