// SPDX-License-Identifier: MIT

pragma solidity ^0.8;


//solidity is case-sensetive language

contract ownable{
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner , "not owner");
        _;
    }

    function setOwner(address _newOwner) public onlyOwner{
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }
    function onlyOwnerCanAccess()public onlyOwner{

    }

    function anyoneCanAccess() public{

    }
}

//smart contract
// compiler compile into ABI BYTE code
// ABI -> abstract binary interface responsible to communication betweeen different or current smart contract
// Byte c0de -> the code goes to to EVM - ethereum vartual machine 

//Test link - Rinkeby and Rapsten
// Live ethereum