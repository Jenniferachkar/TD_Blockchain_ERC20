// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Ex8_solution {
    uint256 public last;

    function submit(uint256 v) external {
        last = v;
    }
}
