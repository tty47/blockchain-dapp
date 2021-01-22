// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6 <0.8.0;

contract PorcTrazzability {
    address zero = 0x0000000000000000000000000000000000000000;
    
    struct Porc {
        // porc identifier
        uint id;
        // farmer identifier
        uint farmerId;
        // veterinary identifier
        uint veterinaryId;
        // seller identifier
        uint sellerId;
        // is vaccinated?
        bool vaccinated;
        // is sold?
        bool sold;
        // race name
        string race;
    }
    
    struct Veterinary {
        // veterinary identifier
        uint id;
        // number of the colleage
        address payable colleageNum;
        // veterinary's name
        string name;
    }
    
    struct Farmer {
        // veterinary identifier
        uint id;
        // number of the colleage
        uint num;
        // Farmer's name
        string name;
    }
    
    struct Seller {
        // veterinary identifier
        uint id;
        // number of the colleage
        uint num;
        // Seller's name
        string name;
    }
    
    mapping(uint => Porc) porcs;
    mapping(address => Veterinary) veterinaries;
    mapping(uint => Farmer) farmers;
    mapping(uint => Seller) sellers;
    uint[] porcsIds;
    
    constructor() {
        Farmer memory f1 = Farmer(1, 61245682, 'Paco');
        Veterinary memory v1 = Veterinary(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 626623227, 'Angel');
        Veterinary memory v2 = Veterinary(0xdD870fA1b7C4700F2BD7f44238821C26f7392148, 737637432, 'Sara');
        Seller memory s1 = Seller(1, 61245685, 'Pepe');
        farmers[1] = f1;
        veterinaries[0x583031D1113aD414F02576BD6afaBfb302140225] = v1;
        veterinaries[0xdD870fA1b7C4700F2BD7f44238821C26f7392148] = v2;
        sellers[1] = s1;
        Porc memory p1 = Porc(1, 1, zero, 0, false, false, 'R1');
        Porc memory p2 = Porc(2, 1, zero, 0, false, false, 'R1');
        porcs[1] = p1;
        porcs[2] = p2;
        porcsIds.push(1);
        porcsIds.push(2);
    }
    
    function getPorcById(uint _porcId) external view returns (
        string memory _race,
        string memory _nameVeterinary,
        string memory _nameSeller,
        string memory _nameFarmer
    ){
        Porc memory p = porcs[_porcId];
        _race = p.race;
        _nameFarmer = farmers[p.farmerId].name;
        _nameVeterinary = veterinaries[p.veterinaryId].name;
        _nameSeller = sellers[p.sellerId].name;
    }
    
    function vaccinate(uint _porcId, uint _veterinaryId) external isVeterinary {
        porcs[_porcId].veterinaryId = msg.sender;
        porcs[_porcId].vaccinated = true;
    }
    
    function sell(uint _porcId, uint _sellerId) external {
        porcs[_porcId].sellerId = _sellerId;
        porcs[_porcId].sold = true;
    }
    
    function createPorc(string memory _race, uint _farmerId) external {
        uint porcId = porcsIds.length + 1;
        Porc memory newPorc = Porc(porcId, _farmerId, zero, 0, false, false, _race);
        porcsIds.push(porcId);
        porcs[porcId] = newPorc;
    }
    
    // here we add the requirements/validators
    modifier isVeterinary() {
        require(veterinaries[msg.sender].colleageNum > 0, "To vaccinate need to be veterinary");
        _; // that means to continue
    }
}
