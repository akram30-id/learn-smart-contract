// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract AddressContract {

    // address = nomor rekening
    // smart contract punya address

    // address payable
    // send & translate

    // address public caller;

    // function getCallerAddres() public returns (address) {
    //     caller = msg.sender;

    //     return caller;
    // }

    uint receivedAmount;

    function getCallerAddress() public view returns (address caller) {
        caller = msg.sender;
    }

    function receiveEther() payable public {
        receivedAmount = msg.value;
    } 

    function sendEther(address payable receiverAddress, uint amount) public {
        receiverAddress.transfer(amount);
    }
}