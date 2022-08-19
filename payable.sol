//SPDX-License-Identifier: Unlicense
pragma solidity <=0.8.9 >=0.8.0;  

contract Pay{

    address payable public owner;

    constructor()payable{
        owner = payable(msg.sender);
    }

    function deposit() public payable{

    }

    function notPayable() public{

    }

    function balance() public view returns(uint){
        return address(this).balance;
    }

    function transfer() public{
        owner.transfer(1 ether);
    }

}
// function to deposit ether to this contract
// 1 ether -> contract to the owner
