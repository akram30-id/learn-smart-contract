// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract BasicCSyntaxContract {
    uint storedData;

    // storedData setter
    function set(uint x) public  {
        storedData = x;
    }

    // storedData getter
    function get() public view returns (uint) {
        return storedData;
    }
}