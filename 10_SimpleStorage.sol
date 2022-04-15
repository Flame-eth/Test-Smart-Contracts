pragma solidity ^0.8.0;

contract SimpleStorage{

    // favorirteNumber will be initailized to zero

    uint256 favoriteNumber;
    
    // bool favoriteBool = false;
    // string favoriteString = "String";
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // bytes32 favoriteBytes = "cat";


    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    
    // People public person = People({favoriteNumber:2, name:"John"});

    function store(uint _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
    function retrieve()public view returns(uint){
        return favoriteNumber;
    }
    function addPerson(string memory _name, uint _favoriteNumber)public{
        people.push(People(favoriteNumber = _favoriteNumber, name: _name));
    }
}