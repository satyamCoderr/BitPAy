// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

//FAllBACK
    // 1- It is execution when a non-exitent functionContract is called on the contrackt.
    // 2- It is required to be marked external
    // 3- It has no name
    // 4- It has no arguments
    // 5- It can not return any thing
    // 5- It can be define one per contract
    // 6- By default is Recieve on data ,If it is not marked as payable and receives data in the form of bytes and data. it will throw exception if contract receives ether
    // 7- It's main use is to directly send the ETH to contract
    

// Recieve
    // 1- It can only get ETH not data
    // 2- Recieve has to always payable 


contract FallBack_recieve{
    fallback() payable external {

    }

    receive() external payable{

    }
}