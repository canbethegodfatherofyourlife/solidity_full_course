//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;  

// view -> reads data from state variables , won't alter the values 
// pure -> neither read or write data from state variables 

contract Block{

    uint age = 10;

    function getAge() public view returns(uint){
        return age;
    }

    function getAge1() public pure returns(uint){
        uint age1 = 11;
        return age1;
    }
}
