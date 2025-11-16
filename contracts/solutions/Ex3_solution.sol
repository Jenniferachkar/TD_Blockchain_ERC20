// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Ex3_solution {
    uint256 public value;

    function store(uint256 v) external {
        value = v;
    }
}
