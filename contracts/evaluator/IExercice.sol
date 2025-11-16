// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

interface IExercice {
    function ex1_getStudentERC20Address() external view returns (address);
    function ex2_getStudentSolutionAddress() external view returns (address);
}
