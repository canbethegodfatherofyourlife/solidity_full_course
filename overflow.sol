//SPDX-License-Identifier: Unlicense 

pragma solidity ^0.5.0;  

contract Eth{

    uint8 public x = 255;
    uint8 public y = 0;

    function setter() public{
        x = x +1 ;
    }

    function setter1() public{
        y = y - 1 ;
    }
}

// overflow ->  x  to y 
// add 1 to y -> x 
// underflow -> 
// subtract 1 from x to y 

// in current version this has been fixed 
