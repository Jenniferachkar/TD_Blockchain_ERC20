// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";
import "./ex11b.sol";

contract Ex11 is ExerciseTemplate {
    address public Ex11bAddress;

    constructor(ERC20TD _TDERC20, address _ex11b) 
        ExerciseTemplate(_TDERC20) 
    {
        Ex11bAddress = _ex11b;
    }

    function callMe(uint256 _solution) external {
        require(Ex11b(Ex11bAddress).answer() == _solution, "Wrong value!");
        _givePoints(msg.sender, 1);
    }
}
