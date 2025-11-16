// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex08 is ExerciseTemplate {
    uint256 public lastValue;

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function submit(uint256 v) external {
        lastValue = v;
    }
}
