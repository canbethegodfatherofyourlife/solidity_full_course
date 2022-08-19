//SPDX-License-Identifier: Unlicense
pragma solidity <=0.8.9 >=0.8.0;  

import './Library.sol';

contract Add{

    using SafeMath for uint;

    function testAdd(uint x,uint y)public pure returns(uint){
        return x.add(y);
    }
}

contract TestArray{

    using Array for uint[];

    uint[] public arr;

    function testArray()public{
        for(uint i=0;i<3;i++){
            arr.push(i);
        }

        arr.remove(1);
    }
}
