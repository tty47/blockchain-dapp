// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;

contract Counter {
    // set as public to being able to know the amount
    uint public account;

    constructor(uint _account){
        account = _account;
    }

    function increment() external {
        account++;
    }

    function decrement() external {
        account--;
    }

}