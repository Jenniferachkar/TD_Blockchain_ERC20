// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

interface Ex12Interface {
    function callMe() external returns (uint256);
}

contract Ex12 is ExerciseTemplate {
    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function attempt(address _contract) external {
        uint256 v = Ex12Interface(_contract).callMe();
        require(v == 123, "Wrong return value");
        _givePoints(msg.sender, 1);
    }
}
