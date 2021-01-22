// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;

contract BasicData {
    // only call from us
    function getAddressBalance(address _addr) external view returns (uint256 _saldo) {
        return _addr.balance;
    }
    
    function addCredit() external payable {
        
    }
     
    function getContractCredit() public view returns (uint256 _saldo) {
        return address(this).balance;
    }
    
    function giveAll(address payable _addr) external {
        // cast to payable
        // payable(_addr).trasfer(getContractCredit());
        _addr.transfer(getContractCredit());
    }
    
}
