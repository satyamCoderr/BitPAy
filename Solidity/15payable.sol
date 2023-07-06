// SPDX-License-Identifier: MIT

pragma solidity ^0.8;


contract Payable{

    // payable is always write before the visiblity-public in this case;
    address payable public owner = payable(msg.sender); // if make payable to address then anyone can send ether to the this address

    // If you make a function as payable you cannot make that function as view or pure because it changes in blockchain
    function getEth() payable public{ // if we make a function as the it mean we can send ether to this contract in which it is decleared

    }
    function checkBal() public view returns(uint){
        return address(this).balance;  // Here (this) mean contract in which it is written it and whole function return ether present in this constact
    }
}