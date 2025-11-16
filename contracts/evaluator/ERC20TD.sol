// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20TD is ERC20 {
    address public teacher;

    constructor()
        ERC20("ERC20TD", "TD")
    {
        teacher = msg.sender;
        _mint(msg.sender, 1000000 * 10 ** 18);
    }

    modifier onlyTeacher() {
        require(msg.sender == teacher, "Only teacher");
        _;
    }

    function distributeTokens(address student, uint256 amount) external onlyTeacher {
        _transfer(msg.sender, student, amount);
    }
}
