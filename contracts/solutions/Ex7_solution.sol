// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Ex7_solution {
    uint256 public received;

    receive() external payable {
        received = msg.value;
    }
}
