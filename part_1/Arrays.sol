// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;

contract Arrays {
    uint[5] nums;
    uint[] numsLengthNotSetted;
    
    function initArray() external {
        for (uint i = 0; i < nums.length; i++) {
            nums[i] = i;
        }
        delete nums[2];
    }
    
    function getNums() external {
        for (uint i = 0; i < 4; i++) {
            numsLengthNotSetted.push(i);
        }
        delete nums[1];
        numsLengthNotSetted.pop();
    }
}
