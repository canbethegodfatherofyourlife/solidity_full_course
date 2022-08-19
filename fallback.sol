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

    fallback() external payable{
        owner.transfer(msg.value);
    }

    receive() external payable{
        owner.transfer(msg.value);
    }

}

// when a non-existent function is called
// It is required to be marked external.
// It has no name.
// It has no arguments
// It can not return any thing.
// It can be defined one per contract.
// If not marked payable, it will throw exception if contract receives plain ether without data.

// ether sent 
// |
// msg.data is empty 
// | 
// yes -> receive exists? yes -> receive()
//                        no -> fallback()
// no -> fallback()
