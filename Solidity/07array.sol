// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Array{
    uint [5] public arr = [1,2,3,4,5];
    uint [5] arr2 ;
    uint[] arr4 =[1,12]; //dinamic array not size specified
    constructor(){
        arr2 = [1,2,3,4,5];
    }
    function initializeArr(uint _x) public {
        for(uint i = 0; i<arr.length; i++){
            arr[i] = _x;
        }
    }


    function createArr() public pure returns(uint8[] memory){
        // uint [] memory array = new uint[5];
         uint8 [] memory array1 = new uint8[](5);
         for(uint8 i = 1; i<=array1.length;i++)
            array1[i-1] = i;
         return array1;
    }
    
    function array() public{
        uint temp = arr[3]; // to access the value of array at index 3
        arr[3] = 10; // this will update the value of array at index 3
        delete arr[4]; // it makes the value of index 4 to it's default value

        // These functions is for dynamic array which cannot be make local dynamic array
        // uint [] memory arr5 = new uint[];
        arr4.push(1);
        arr4.pop();
    }
    function getLength() public view returns(uint){
        return arr.length;
    }


}