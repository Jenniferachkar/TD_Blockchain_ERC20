// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Ex1_solution {
    // Just return this contract address as your "ERC20 address"
    function getERC20Address() external view returns (address) {
        return address(this);
    }
}
