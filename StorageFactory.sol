// SPDX-License-Identifier: Blank

pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function buildSimpleStorageCon() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // using a function from SimpleStorage Contract
    function storeNumberForSimple (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // We need:
        // Contract Address and
        // App Binary Interface (contract's abi)
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);

    }

    // using another function from SimpleStorage Contract
    function getNumberFromSimple (uint256 _simpleStorageIndex) public view returns (uint256) {
        
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}