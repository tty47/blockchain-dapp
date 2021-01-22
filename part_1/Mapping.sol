// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;

contract Sugus {
    // create a new mapping and set it as public, providing a new getter
    mapping(string => string) public sugusPerFlavour;
    
    // create a new sugus in mapping
    function addSugus(string memory flavour, string memory color) external {
        sugusPerFlavour[flavour] = color;
    }
    
    // delete a sugus per its flavour
    function delSugusPerFlavour(string memory flavour) external {
        delete sugusPerFlavour[flavour];
    }
    
}
