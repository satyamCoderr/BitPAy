// SPDX-License-Identifier: MIT

pragma solidity ^0.8;


contract Event{
    event balance(address indexed acc,string meg,uint val); // maximum three indexing can be make.
    function setData(uint _v) public  {
        emit balance(msg.sender, "has value", _v);
    }
}