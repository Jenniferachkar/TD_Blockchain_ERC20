// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Ex6_solution {
    uint256 public total;

    function add(uint256 a, uint256 b) external {
        total = a + b;
    }
}
