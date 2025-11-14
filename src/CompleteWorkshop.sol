// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./MyERC20.sol";

interface IEvaluator {
    function submitExercice(address) external;

    function ex1_getTickerAndSupply() external;
    function ex2_testErc20TickerAndSupply() external;
    function ex3_testGetToken() external;
    function ex4_testBuyToken() external;
    function ex5_testDenyListing() external;
    function ex6_testAllowListing() external;
    function ex7_testDenyListing() external;
    function ex8_testTier1Listing() external;
    function ex9_testTier2Listing() external;
    function ex10_allInOne() external;
}

contract CompleteWorkshop {

    IEvaluator public evaluator;
    MyERC20 public token;

    constructor(address evaluatorAddress) {
        evaluator = IEvaluator(evaluatorAddress);
    }

    function completeWorkshop() external {

        evaluator.ex1_getTickerAndSupply();

        token = new MyERC20("TDToken", "TDX", 100 ether);

        evaluator.submitExercice(address(token));

        evaluator.ex2_testErc20TickerAndSupply();
        evaluator.ex3_testGetToken();
        evaluator.ex4_testBuyToken();
        evaluator.ex5_testDenyListing();
        evaluator.ex6_testAllowListing();
        evaluator.ex7_testDenyListing();
        evaluator.ex8_testTier1Listing();
        evaluator.ex9_testTier2Listing();

        evaluator.ex10_allInOne();
    }
}
