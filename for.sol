//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 


// for , while , do while 

contract Loop{
    
    uint public count = 10;
    uint public a = 1;
    uint public b = 2;
    uint public c = 3;

    function increment() public returns(string memory){

        // for(initialization,termination,operation){
        //     ....activity...
        // }

        for(uint x;x <= count;x++){
            a++ ;
        }

        // initialization
        // while(termination){
        //     operation
        //     activity
        // }

        uint y;
        while(y<= count){
            b++ ;
            y++ ;
        }

        // initialization
        // do{
        //     operation
        //     activity
        // }while(termination)


        do{
            c++ ;
            count++ ;
        }while(count == 10);

        
    }
}

// do while -> activity is done and then termination condition is checked
