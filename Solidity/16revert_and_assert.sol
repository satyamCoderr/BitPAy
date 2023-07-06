// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

constact Revert{
    address public owner = msg.sender;
    uint public age = 25;
    


    error throwEroor(string , address); 

    function checkRevert(uint _x) public {
        age = age+_x;
        if(_x<5){
            return revert("message") // similar to require
        }
        if(_x<8){
            return revert throwEroor("message", msg.address);
        }
    }

    function Assert() public view {
        // it used for security purpose and bug tracking
        assert(owner == msg.sender) //if true then ok 
    }
    
}