// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";
import "./IEx14Solution.sol";

interface IAllSolutions {
    function solveAll() external;
}

contract Ex15 is ExerciseTemplate {

    constructor(ERC20TD _TDERC20) 
        ExerciseTemplate(_TDERC20) 
    {}

    function askForPoints(address _solution) external {
        uint256 before = TDERC20.balanceOf(msg.sender);

        IAllSolutions(_solution).solveAll();

        uint256 after_ = TDERC20.balanceOf(msg.sender);

        require(after_ > before, "You did not solve everything");

        _givePoints(msg.sender, 100);
    }
}
