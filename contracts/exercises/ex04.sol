// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex04 is ExerciseTemplate {
    uint256 public value;

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function deposit() external payable {
        value += msg.value;
    }
}
