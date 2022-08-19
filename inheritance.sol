//SPDX-License-Identifier: Unlicense
pragma solidity <=0.8.9 >=0.8.0; 

contract Nit{

    struct Student{
        uint age;
        string name;
        string degree;
        uint yearsofexp;
        bool employed;
    }

    mapping(uint => Student) public register;

    uint public x;

    function add(uint a,uint b)public view virtual returns(uint){
        uint c = a+b+x;
        return c;
    }
}

contract Iit is Nit{

    uint public y = 5;

    function add(uint a,uint b)public view virtual override returns(uint){
        uint c = a+b+x+y;
        return c;
    }
}

contract Mit is Iit{
    uint public z = 10;
    function add(uint a,uint b)public view override returns(uint){
        uint c = a+b+x+y+z;
        return c;
    }
}

// virtual - so that contracts inheriting it can customize the functions 
// to update - override
