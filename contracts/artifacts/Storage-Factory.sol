


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //solidity version

import {SimpleStorage} from "contracts/SimpleStorage.sol";


 
contract StorageFactory{
    SimpleStorage[] public listofsimplestorageContracts;
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofsimplestorageContracts.push(newSimpleStorageContract);
    

    }
}