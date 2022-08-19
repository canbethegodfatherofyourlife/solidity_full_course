//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;    

// within funcs 
// don't cost gas 

contract Num{

    uint public age = 10;
    string public a = 'Ravi';

    function local() public{
        uint age1 = 11;
        string memory b = 'Ram';

        age = 12;
        a = 'Raj';
    }
}
