// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// bytes store hexadecimal digits
// 1 byte = 8 bits
// 1 hexadecimal needs 4bit memory to store
// so we can store 2 hexadecimal digits in 1 byte

// bytes1 -> means 1 byte
// bytes2 -> means 2 byte
// bytes2 -> means 3 byte till 32 in fixed bytes

contract Bytes{
    bytes5 public temp1;
    bytes7 public temp2;
    bytes public dy; //dynamic bytes

    function setValue() public{
        temp1 = "abcde";
        temp2 = "12abcde";
        dy = "abcde";
    }

    function getDigit() public view returns(bytes1, uint){
        // temp1[4]= "t"; // modification in fixed size bytes is not possible
        return (temp1[3], temp1.length);


    }
    function dynamicBytes() public {
        //These function is for dynamic bytes only
        dy.push("c");
        dy.push("c");
        dy.push("c");
        dy.pop();
        dy[1] = "y"; // modification in fixed size bytes is possible
    }
    function changeInDy() public view returns(bytes memory){
        return dy;
    }
}