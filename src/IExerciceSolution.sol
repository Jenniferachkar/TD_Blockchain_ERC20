// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IExerciceSolution {
    function getToken() external;
    function buyToken() external payable;

    function addToAllowList(address user) external;
    function deny(address user) external;

    function setTier(address user, uint8 tier) external;
}
