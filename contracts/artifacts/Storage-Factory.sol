


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //solidity version

contract SimpleStorage {
    //basic types: boolean, uint, int,address,bytes
    uint public favoriteNumber;
    uint[] listOfFavoriteNumbers;
    mapping (string =>uint256) public nameToFavouriteNumber;
    struct Person {
        uint hisfavoriteNumber;
        string name;
    }
    Person[] public listofPerson;
    // Person public  pat = Person({hisfavoriteNumber:0, name:"No name"});
    
    function store(uint favorite) public {
        favoriteNumber = favorite;
        // favoriteNumber = favoriteNumber +1;
    }
    function addPerson(string memory _name , uint256 _favoriteNumber) public {
listofPerson.push(Person(_favoriteNumber , _name));
nameToFavouriteNumber[_name]=_favoriteNumber;
    }
    function retrieve() public view returns(uint)  {
        return favoriteNumber;
    }       //view,pure function disallows updating state    

    
}



contract StorageFactory{
    SimpleStorage public simplestorage;
    function createSimpleStorageContract() public {

    }
}