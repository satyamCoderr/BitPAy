// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Require{
    address public owner;
    uint public age = 25;
    constructor(){
        owner = msg.sender;
    }
    // modifier is the special function which provide reusablity
    modifier onlyOwner(){
        require(msg.sender == owner , "not owner");
        _; // This indicate that run the funtion where it is used  and then continue the modifier function
        
        
        // code
    }

    // public view onlyOwner This are function signature 
    function Mod()public view onlyOwner returns(address){// modifier run first
            return msg.sender;
    }





    modifier onlyOwner1(uint _x){
       _x+=5;
        _;
    }
    // passing argument in parameter
    function Mod1(uint _x)public pure onlyOwner1(_x) returns(uint){
            return _x;
    }



    function setOwner(address _newOwner) public {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }
    function checkRequire(uint _x) public {
        age = _x;
        // require used for the error handling and validation
        require(_x>2, "error message");// if given condition is false then error message is shown and function stop there and also revert back all the changes made my that function else execution coontinue
    }
}