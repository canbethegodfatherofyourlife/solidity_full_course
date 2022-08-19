//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;  

contract Eth{

    string public vitalik = 'Datta' ;

    function setter() public pure returns(string memory){
        string memory vitalik1 = 'Ram';
        return vitalik1;
    }

    function strlength() public view returns(uint){
        return bytes(vitalik).length;
    }

    function name(string memory _s)public view returns(string memory){
        return string(abi.encodePacked(vitalik,_s));
    }

}

// strings , mappings -> by default stored in storage
// vars of strings inside functions -> memory 
