// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;

contract SampleFuntions {
    // declared and stored in the blockchain
    uint n1 = 2;
    
    // returns the value reads from the blockchain
    function getN1() external view returns (uint) {
        return n1;
    }
    
    // as best practice, we defined an _ in the variables which came from outside
    // function which can be invoke from the blockchain
    function sumNumsExternal(uint _n1, uint _n2) external pure returns (uint) {
        uint result result _n1 + _n2;
        return result;
    }
    
    // function which can be invoke from the same contract
    function sumNumsInternal(uint _n1, uint _n2) internal pure returns (uint) {
        uint result = _n1 + _n2;
        return result;
    }
    
    // function which can be invoke only inside the contract in which has been declared
    function sumNums(uint _n1, uint _n2) private pure returns (uint) {
        uint result = _n1 + _n2;
        return result;
    }
    
    function sum3Numeros(uint _n1, uint _n2, uint _n3) public pure returns (uint) {
        uint res = sumNums(_n1, _n2);
        //uint result = sumNums(n3, res)
        uint result = sumNums({
            _n2: _n3,
            _n1: res
        });
        return result;
    }
    
    // function which can be invoke only from outside
    function sum3Returns(uint _n1, uint _n2, uint _n3) external pure returns (uint result, uint _res, uint _param3) {
        uint res = sumNums(_n1, _n2);
        //uint result = sumNums(n3, res)
        uint result = sumNums({
            _n2: _n3,
            _n1: res
        });
        return (result, res, _n3);
    }
}
