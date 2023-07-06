// SPDX-License-Identifier: MIT

pragma solidity ^0.8;
// We cam create array of struct and enum
// memory key word is used make local variable 
// storage to 

struct outer{ // accesibel to any where in this file
        string name;
        uint age;
        address acc;
    }
contract Struct{
    struct Emp{
        string name;
        uint age;
        address acc;
    }

    Emp public emp;

    function setValue()public{
        emp.name = "Abhi";
        emp.age = 21;
        emp.acc=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }

    function getValue() public view returns(Emp memory){
        return emp;
    }
    function createNew(string memory _name, uint _age, address _acc)public pure returns(Emp memory, Emp memory){
        Emp memory emp1 = Emp(_name, _age, _acc);
        Emp memory emp2 = Emp({name : _name, age :_age, acc : _acc});
        return (emp1, emp2);
    }

    function update()public{

        // This will not change in state variable even it is reference type
        // Emp memory new_emp = emp;
        // new_emp.name ="Abhi";


        Emp storage new_emp = emp;
        new_emp.name = "Hwllo";
    }

}

contract Struct1{
    struct Emp1{
        string name;
        uint age;
        address acc;
    }

    Emp1 public emp;


}