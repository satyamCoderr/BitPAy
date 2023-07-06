// SPDX-License-Identifier: MIT

pragma solidity ^0.8;
// Similar to c++
// ternary operator and continue and break is similar to c++
contract conditionals{
    function fun(uint _x, uint _y)public pure returns(string memory, uint){
        string memory val;
        if(_x>100)
            val = "greater";
        else if(_x<100)
            val = "smaller";
        else
            val = "equal";

        uint sum = 0;
        for(uint i = 0; i<_y; i++){
            sum+=i;
        }
        while(_y>0){
            sum+=_y;
            _y--;
        }
        // also do_while loop similar to c/c++
        return (val, sum);
    }
}