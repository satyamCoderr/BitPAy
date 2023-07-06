//SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract base{
    function fun() public pure returns(string memory){
        return "base fun";
    }
    function fun1() public pure returns(string memory){
        return "base fun1";
    }
    function fun3() public pure virtual returns(string memory){ // virtual keyword allow us to override this function 
        return "base fun2";
    }
    function fun4() public pure returns(string memory){
        return "base fun3";
    }
} 
contract derived is base{
    function fun3() public pure virtual override returns(string memory){ // override indicate that this is a overrided function

        return "derived fun3";
    }
}
contract derived1 is derived{
    function fun3() public pure override returns(string memory){ // override indicate that this is a overrided function
            return "derived1 fun3";
        }
}

contract A{
    uint public a = 5;
    
    constructor(){
        a = 5;
    }


    function setA() public{
        a = 6;
    }
}


contract B{
    uint public b = 55;
    constructor(){
        b = 35;
    }


    function setB() public{
        b = 36;
    }
}

contract C is A, B{ // if both base class is not derived from any other class then it ok you can write here in any order ex ->  contract C is A, B  OR contract C is B, A

}


contract E{
    uint public a = 5;
    constructor(){
        a = 5;
    }


    function setA() public{
        a = 6;
    }
}
contract F is  E{
    uint public b = 55;
    constructor(){
        b = 35;
    }


    function setB() public{
        b = 36;
    }
}

contract H is E, F{ // if  base class is derived from any other class then we have to write the order of the class from most base class to most derived class ex ->  contract H is E, F   not as contract H is F, E
                    // The properities of the right class is inherit first in depth first order the goes in left direction if one of properties is all ready inherited before due to DFS then in is not inherit again 

    
}


contract multi is base, derived{
    function fun3() public pure override(base, derived) returns(string memory){ // if multiple base class has same function then we have to overrite that function in this way
            return "derived fun3";
    }


    function ParentFunCall() public pure {
        base.fun3(); // goes direct to contract base and call that fun3() of contract base;
        super.fun3(); // start checking from right to left on inheritence and check and call the first fun3() found ex - check in derived contract then check in base contract ....... derived->base
    }
}



contract AX{
    uint public a = 5;
    string public name;
    uint public age;
    constructor(string memory _name,uint _age ){
        a = 5;
        name = _name;
        age=_age;
    }


    function setA() public{
        a = 6;
    }
}


contract BX{
    uint public b = 55;
    string public com;
    uint public sal;
    constructor(string memory _com,uint _sal){
        b = 35;
        com = _com;
        sal=_sal;
    }


    function setB() public{
        b = 36;
    }
}

contract CX is AX("A", 19),BX("sa",43){ // passing static values to base classes

}
contract CXA is AX,BX{
    constructor() AX("A", 19) BX("sa",43){ // passing static values to base classes

    }
}

 // order of cuntructor order = order of inheritence written ex- for this AX -> BX -> CXB
 // left to right
contract CXB is AX,BX{
   
    constructor(string memory _name,uint _age,string memory _com,uint _sal) AX(_name, _age) BX(_com, _sal) { // passing dynamic and static values to base classes

    }
}