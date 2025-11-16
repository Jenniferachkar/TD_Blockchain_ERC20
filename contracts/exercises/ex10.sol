// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex10 is ExerciseTemplate {

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function ping() external {
        _givePoints(msg.sender, 1);
    }
}
