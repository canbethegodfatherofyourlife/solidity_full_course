//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 

contract MappingStruct{

    address public owner;

    struct Student{
        uint age;
        string name;
        string degree;
        uint yearsofexp;
        bool employed;
    }

    constructor(){
        owner = msg.sender;
    }

    modifier ageRestrict(uint a){
        require(a >= 18,'We allow only 18+ people');
        _;
    }

    modifier owner1(){
        require(owner == msg.sender,'Only owners can call it!');
        _;
    }

    mapping(uint => Student) public register;

    function setVal(uint _roll,uint _age,string memory _name,string memory _degree,
    uint _yearsofexp,bool _employed) public ageRestrict(_age) owner1() {

        register[_roll] = Student(_age,_name,_degree,_yearsofexp,_employed);
    }
}


// modifier -> visibility-> internal 
// code of modifier will be run before executing the function
// restrict access and also, filter out based on diff operation
