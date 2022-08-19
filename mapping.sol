//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 

// like dict -> efficient lookup 

// key - value pairs
// key can't be dynamic array , enum, struct, mapping 

contract Mapping{

    mapping(string => uint) public rank;

    // mapping(uint => mapping(uint => string)) public ss;

    // function collegePredictor() public{
    //     rank['IIT Guwahati'] = 1;
    //     rank['IIT Bombay'] = 2;
    //     rank['IIT Kgp'] = 3;
    // }

    mapping(string => bool) public exist;
    string[] public colleges;

    function setRank(string memory _college,uint _rank)public{
        rank[_college]  = _rank;

        if(!exist[_college]){
            exist[_college] = true;
            colleges.push(_college);
        }
    }
}
