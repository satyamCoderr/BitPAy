// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// we can pass calldata variable to memory or calldata variable of the other function but we cannot pass memory variable to calldata variable of another function.
contract _string{
    string str = "Hello";
                            // calldata is used for taking input. it similar to memory except that we cannot change the value of input in the function but in case of memory we can change the value
    function _helloS(string calldata _x) public pure returns(string memory){
        // string local = "hiiii";  this is not valid because string is by default store in storage so it should be state variables
        string memory local = _x ;// now string will be store in memory and treated as the local variable
        return local;
    }
}