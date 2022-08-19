//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;  


contract Req{
    address public addr = msg.sender;
    uint public c =5;

    function add(uint a,uint b) public returns(uint){

        c = c+4;
        require(a>2);
        require(b>2);
        uint d = a+b+c;
        return d;
    }
}
