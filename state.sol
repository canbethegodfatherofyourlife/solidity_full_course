//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;

// state , local , global 

// permanently stored on the storage of the Eth blockchain 
// declared inside contracts, but outside functions 
// pay gas for it 

contract State{

    uint public x; 
    // declaring a state var as public === having a getter function

    function setter() public {
        x = 2;
    }

}
