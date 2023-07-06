// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Hash{
    function hashKeccak256(uint _x, string calldata _name,address _add) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_x, _name, _add));
    }

    function hashSHA256(uint _x, string calldata _name,address _add) public pure returns (bytes32){
        return sha256(abi.encodePacked(_x, _name, _add));
    }

//abi,encode()
    function hashRipemd160(uint _x, string calldata _name,address _add) public pure returns (bytes20){
        return ripemd160(abi.encodePacked(_x, _name, _add));
    }
}