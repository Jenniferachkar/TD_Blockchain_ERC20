// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex03 is ExerciseTemplate {
    uint256 public storedValue;

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function storeValue(uint256 value) external {
        storedValue = value;
    }
}
