// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// send function // used to send ETH to a address or a contract
    // gas limit of 2300
    // no revert of gas if fail we have to use require to revert

// transfer 
    // gas limit of 2300
    // revert automatic if fail 

// call
    // we can set gas limit
contract SendETH{
    address payable public getter = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    receive() external payable{}

    function checkBal() public view returns(uint){
        return address(this).balance;
    }

    function SEND() public {
        bool isSuccess = getter.send(1000000000000000000); //return true if success else false
        require(isSuccess,"message"); 
    }

    function TRANSFER() public {
        getter.transfer(1000000000000000000); // true if success else false
    }


    function CALL() public {
        // (bool isSuccess, bytes memory data) = getter.call{value:1000000000000000000,gas:2000}("helo"); // true if success else false
        (bool isSuccess,) = getter.call{value:1000000000000000000,gas:2000}("helo");
        require(isSuccess,"message"); 

    }
}