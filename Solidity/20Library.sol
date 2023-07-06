// SPDX-License-Identifier: MIT

pragma solidity ^0.8;
 

library Math{
    function divide(uint _x, uint _y)public pure returns(uint){
        require(_y!=0 , "second parameter should not be 0");
        return _x/_y;
    }
}

// import "/Math.sol"; // to import a library

contract myCont{
    function cal() public pure returns(uint){
        return Math.divide(9, 5);
    }
}