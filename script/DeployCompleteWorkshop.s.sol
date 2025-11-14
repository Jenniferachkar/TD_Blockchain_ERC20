// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/CompleteWorkshop.sol";

contract DeployCompleteWorkshop is Script {

    address constant EVALUATOR = 0xB8d4fDEe700263F6f07800AECd702C3D0D74E601;

    function run() external {
        vm.startBroadcast();

        CompleteWorkshop cw = new CompleteWorkshop(EVALUATOR);
        cw.completeWorkshop();

        vm.stopBroadcast();
    }
}
