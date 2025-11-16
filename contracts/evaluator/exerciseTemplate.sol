// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "./ERC20TD.sol";

contract ExerciseTemplate {
    ERC20TD TDERC20;

    constructor(ERC20TD _TDERC20) {
        TDERC20 = _TDERC20;
    }

    function _givePoints(address student, uint256 amount) internal {
        TDERC20.distributeTokens(student, amount);
    }
}
