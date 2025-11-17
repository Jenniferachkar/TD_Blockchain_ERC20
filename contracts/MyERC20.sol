// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyERC20 is ERC20 {

    address public owner;

    // Ex5: allowlist
    mapping(address => bool) public whitelist;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) 
        ERC20(_name, _symbol) 
    {
        owner = msg.sender;

        // Mint the initial supply to msg.sender
        _mint(msg.sender, _initialSupply);
    }

    // Ex3: Simple token faucet
    function getToken() external {
        _mint(msg.sender, 100 * 10**decimals());
    }

    // Ex4: buy tokens with ETH
    function buyToken() external payable {
        require(msg.value > 0, "Send ETH first");
        require(whitelist[msg.sender], "Not whitelisted");

        // 1 ETH = 100 tokens (modifiable)
        uint256 amountToMint = msg.value * 100;

        _mint(msg.sender, amountToMint);
    }

    // Ex5: Owner adds addresses to whitelist
    function addToWhitelist(address user) external {
        require(msg.sender == owner, "Only owner");
        whitelist[user] = true;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyERC20 is ERC20 {

    address public owner;

    // Ex5: allowlist
    mapping(address => bool) public whitelist;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) 
        ERC20(_name, _symbol) 
    {
        owner = msg.sender;

        // Mint the initial supply to msg.sender
        _mint(msg.sender, _initialSupply);
    }

    // Ex3: Simple token faucet
    function getToken() external {
        _mint(msg.sender, 100 * 10**decimals());
    }

    // Ex4: buy tokens with ETH
    function buyToken() external payable {
        require(msg.value > 0, "Send ETH first");
        require(whitelist[msg.sender], "Not whitelisted");

        // 1 ETH = 100 tokens (modifiable)
        uint256 amountToMint = msg.value * 100;

        _mint(msg.sender, amountToMint);
    }

    // Ex5: Owner adds addresses to whitelist
    function addToWhitelist(address user) external {
        require(msg.sender == owner, "Only owner");
        whitelist[user] = true;
    }
}
