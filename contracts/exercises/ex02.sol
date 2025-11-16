// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "../evaluator/exerciseTemplate.sol";

contract Ex02 is ExerciseTemplate {
    address private studentSolution;

    constructor(ERC20TD _TDERC20) ExerciseTemplate(_TDERC20) {}

    function submitEx2(address _solution) external {
        studentSolution = _solution;
    }

    function ex2_getStudentSolutionAddress() external view returns (address) {
        return studentSolution;
    }
}
