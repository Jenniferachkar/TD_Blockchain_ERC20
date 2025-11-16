// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex05 is ExerciseTemplate {
    uint256 public counter;

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function increment() external {
        counter++;
    }
}
