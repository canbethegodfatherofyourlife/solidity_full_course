//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;  


contract Req{
    
    uint public u =5;

    function add(uint _u) public view returns(uint){

        uint c = u + _u;
        assert(c <= 127);
        return c;
    }
}
