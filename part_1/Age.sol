// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;

contract Age {
    uint8 age;
    
    // defined public which allow us to get the data without get function
    uint8 public size;
    
    // set the size and store the value
    function setSize(uint8 _newSize) external returns (uint8) {
        size = _newSize;
        return size;
    }
    
    // set the age value
    function setAge(uint8 _newAge) external returns (uint8) {
        age = _newAge;
        return age;
    }
    
    // returns the age value
    function getAge() external view returns (uint8 _ageStored) {
        return age;
    }
}
