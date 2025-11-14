// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "./IExerciceSolution.sol";

contract MyERC20 is ERC20, Ownable, IExerciceSolution {

    mapping(address => bool) public allowList;
    mapping(address => uint8) public tierOf;

    uint256 public price = 0.01 ether;

    constructor(
        string memory name_,
        string memory symbol_,
        uint256 initialSupply
    ) ERC20(name_, symbol_) {
        _mint(msg.sender, initialSupply);
    }

    // EX 3 - getToken()
    function getToken() external override {
        require(allowList[msg.sender], "Not allowed");
        _mint(msg.sender, 10 ether);
    }

    // EX 4 - buyToken()
    function buyToken() external payable override {
        require(allowList[msg.sender], "Not allowed");

        uint256 tokens;

        if (tierOf[msg.sender] == 1) {
            tokens = (msg.value / price) * 1;
        } 
        else if (tierOf[msg.sender] == 2) {
            tokens = (msg.value / price) * 2;
        } 
        else {
            revert("Tier not allowed");
        }

        _mint(msg.sender, tokens);
    }

    // EX 5-6 Allow List
    function addToAllowList(address user) external override onlyOwner {
        allowList[user] = true;
    }

    function deny(address user) external override onlyOwner {
        allowList[user] = false;
    }

    // EX 7-8-9 Tier System
    function setTier(address user, uint8 tier) external override onlyOwner {
        tierOf[user] = tier;
    }
}
