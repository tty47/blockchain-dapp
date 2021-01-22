// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;
pragma abicoder v2;

contract Helpers {
    // helper which return the length of an string
    function getLength(string memory _str) external pure returns (uint) {
        bytes memory bytesStr = bytes(_str);
        return bytesStr.length;
    }
    
    // helper which check if the strings contains a character
    function indexOf(string memory _str, string memory _char) external pure returns (int) {
        bytes memory bytesStr = bytes(_str);
        bytes memory bytesChar = bytes(_char);
        
        for (uint i =0; i < bytesStr.length; i++) {
            if (bytesStr[0] == bytesChar[0]) {
                return int(i);
            }
        }
        return -1;
    }
 
    // helper which concat strings, p.e: abc, def -> abcdef
    function concat(string memory _str1, string memory _str2) external pure returns (string memory) {
        bytes memory bytesStr1 = bytes(_str1);
        bytes memory bytesStr2 = bytes(_str2);
        // define an string with the length str1 + str2
        string memory strNew = new string(bytesStr1.length + bytesStr2.length);
        bytes memory bytesConcat = bytes(strNew);
        uint i;
        uint j = 0;
        
        
        for (i = 0; i < bytesStr1.length; i++) {
            bytesConcat[j] = bytesStr1[i];
            j++;
        }
        
        for (i = 0; i < bytesStr2.length; i++) {
            bytesConcat[j] = bytesStr2[i];
            j++;
        }
        
        return string(bytesConcat);
    }
    
    // remove possition on array
    function splice(uint[] memory myArray, uint posToDelete) external pure returns (uint[] memory) {
        uint[] memory newArray = new uint[](myArray.length-1);
        uint i;
        uint j = 0;

        for (i = 0; i < newArray.length; i++) {
            if (i != posToDelete) {
                newArray[j] = myArray[i];
                j++;
            }
        }
        
        return newArray;
    }
    
    // it needs pragma abicoer v2 to work!
    string [] a = ['a', 'b'];
    
    function returnA() external view returns (string[] memory) {
        return a;
    }
    
}
