// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

enum externalEnum {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }
contract Enum{
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }
    Status status;
    function get() public view returns(Status){
        return status;
    }

    function set() public {
        status = Status.Cancelled;
    }
    function setStatus(Status _val) public{
        status = _val;
    }
    function reset() public {
        // enum  FuntionalEnum {
        //     Pending,
        //     Shipped,
        //     Accepted,
        //     Rejected,
        //     Cancelled
        // }
        delete status;
    }
    function statusCreate() public pure returns(Status){
        


        Status st;
        st = Status.Rejected;
        return st;
    }
    
}