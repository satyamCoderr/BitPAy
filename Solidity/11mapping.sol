//SPDX-License-Identifier: MIT

pragma solidity ^0.8;
// Map cannot decleare out side of the contract

contract Map{
    struct Data{
        string name;
        uint age;
    }
    mapping (address=>Data) public emp_id;
    function set(address _a, string memory _n, uint _age) public{
        emp_id[_a] = Data(_n,_age);
    }
    function getOne(address _a)public view returns(Data memory){
        return emp_id[_a];
    }

    // mapping cannot be returned as this but you can create a struct which contain mapping data then you can return using instance of struct
    // function get() public view returns(mapping(address=>Data) memory){
    //     return emp_id;
    // }

}