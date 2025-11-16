// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";
import "../evaluator/IEx14Solution.sol";

contract Ex14 is ExerciseTemplate {

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function validate(address _solution) external {
        IEx14Solution(_solution).callMe();
        _givePoints(msg.sender, 1);
    }
}
