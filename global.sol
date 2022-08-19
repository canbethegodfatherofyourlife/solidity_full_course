//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;  

contract Global{

   function global() public view returns(uint,uint,address){
       return ( block.timestamp, block.number, msg.sender);
   }
}

