//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 


// boolean - T/F 
// user defined dtype 
// assign integral value to a name 

contract Enum{

    enum status{ single, engaged, complicated }

    status public s1 = status.single;       // 0
    status public s2 = status.engaged;      // 1 
    status public s3 = status.complicated;  // 2

    function relAdvisor() public{
        if(s3 == status.complicated){
            s3 = status.single;
        }
    }

}

// it helps to improve code readibility
// the set shouldn't be large 
