// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex06 is ExerciseTemplate {
    uint256 public total;

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function add(uint256 a, uint256 b) external {
        total = a + b;
    }
}
