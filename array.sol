//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 

// fixed size 
// dynamic sized array

contract FixedArray{

    uint[4] public arr = [10,20,30];

    // 10,20,30,0

    function updateEle(uint index,uint num)public{
        arr[index] = num;
    }
}

contract Array{
    uint[] public arr;

    function addEle(uint num)public{
        arr.push(num);
    }
    function delEle()public{
        arr.pop();
    }

    function removeEle() public{
        delete arr[1];
    }

    function actuallyremove(uint index)public{
        for(uint i=index;i<arr.length-1;i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

}

// 1 2 3 -> push 
// 1 2 

// 1 2 3 
// 1 0 3 

// 1 0 3 
// 1 3

// 1 3 
