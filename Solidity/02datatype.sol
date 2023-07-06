// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// Data Type
    // 1-> Values
    //     1-> bool
    //     2-> int -> uint/ uint8/ uint16/ uint32/ uint256
                // int range from -2^255 to 2^255
                // uint 2^255
    //     3-> address 
                // takes 20bit and store value in hexadecimal
    //     4-> bytes32 / bytes8 -> bytes1 to bytes32
                // it also store value in hexadecimal


    // 2-> References
        // 1-> string
        // 2-> array
        // 3-> enum
        // 4-> struct
        // 5-> mapping


    contract valueType{
        bool public boolTemp = true;
        uint public uintTemp = 243;
        int public intTemp = -43;
        address public add = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        bytes32 public b32;
        string str = "adsf";
        int public typecast = int(uintTemp);//type casting

        function Type() public view returns(string memory){
                return type typecast;
        }


    }


    // Visiblity
        
        // 1-> private 
                // contrain in which it is
        // 2-> internal  -> protected in c++
                // contract in which it is and derived contract
        // 3-> External  -> only for function it cannot be used for state variable
                // not in contract in which it is and derived contract
        // 4-> public
                // anywhere
        
        
        
        //state variable is by default internal
        //function is by default public in older version but in new version you have to provide visiblity there is no default value

        // top-down gas cost increase and security decrease