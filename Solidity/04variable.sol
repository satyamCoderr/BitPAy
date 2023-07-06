// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// variables 
//     1-> State variable
//     2-> Local variable
//     3-> Global variable
            // example of global variables -> block.number, msg.sender, tx.gasprice    these variable can be access from anywhere


contract variables{
    uint public salary = 100; // state variable  this is directly store in block chain or contract storage so it cost  so that we use less the state variable
    // salary = 5; // not allowed to initialize as this

    uint public constant mysallary = 13123123; 
    uint public immutable id = 3425342;
    uint public immutable id1;
    constructor(uint _x){
        salary = 399;
        id1 = _x;
    }
    function setSalary(uint _x) public returns(uint, bool){
        uint local = 6; // local variable   if you declare a local then you have to use in the function else if will gives an warning
        bool flag = false;

        local++;
        flag = true;
        salary = _x;
        return (local, flag);
    }
}