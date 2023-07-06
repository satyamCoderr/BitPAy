// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Election{
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }
    mapping(uint=>Candidate) public candidates;
    uint public candidatesCount;
    mapping (address=>bool) public voters;
    event votedEvent(
        uint indexed _candidateId
    );
    constructor(){
        AddCandidate("Abhishek Kumar");
        AddCandidate("Vivek Kumar");
        AddCandidate("Ankit Kumar");
    }

    function AddCandidate(string memory name)public{
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, name, 0);
    }
    function vote(uint candidateId) public {
            require(!voters[msg.sender]);
            require(candidateId>0 && candidateId <= candidatesCount);
            voters[msg.sender] = true;
            candidates[candidateId].voteCount++;
            emit votedEvent(candidateId);
    }


}