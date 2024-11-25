// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract PayableContract {

    uint receivedAmount;

    function receivedErher() payable public  {
        receivedAmount = msg.value;
    }

    function showReceivedEther () public view returns (uint) {
        return  receivedAmount;
    }

}