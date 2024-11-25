// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayContract {
    
    uint[] public dynamicArray;
    uint[3] public fixedArray = [1,2,3];

    function addToArray(uint _value) public {
        dynamicArray.push(_value);
    }

    function getElement(uint _index) public view returns (uint) {
        require(_index < dynamicArray.length, "Index out of bonds");
        return dynamicArray[_index];
    }

    function iterateArray() public view returns (uint[] memory) {
        uint[] memory tempArray = new uint[](dynamicArray.length);
        for (uint i = 0; i < dynamicArray.length; i++) 
        {
            tempArray[i] = dynamicArray[i];
        }

        return  tempArray;
    }

}