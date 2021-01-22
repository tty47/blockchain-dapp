// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;
// needed if we return the whole struct
//pragma abicoder v2;

contract Structs {
    
    // define the person struct fields
    struct Person {
        string name;
        string lastname;
        uint birthdate;        
    }
    
    // we can return a person, or return multiple values
    //function createPerson() external pure returns (Person memory) {
    function createPerson() internal pure returns (string memory, string memory, uint) {
        Person memory p = Person({
            name: 'jr',
            lastname: 'manes',
            birthdate: 1611247914
        });
        
        return (p.name, p.lastname, p.birthdate);
    }
    
    // function which initialize the struct person
    function initPerson() external pure returns (string memory, string memory, uint) {
        (string memory _n, string memory _ln, uint _d) = createPerson();
        Person memory p = Person(_n, _ln, _d);
        return (p.name, p.lastname, p.birthdate);
    }
    
}
