// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex01 is ExerciseTemplate {
    address private studentERC20;

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function submitERC20Address(address _studentERC20) external {
        studentERC20 = _studentERC20;
    }

    function ex1_getStudentERC20Address() external view returns (address) {
        return studentERC20;
    }
}
