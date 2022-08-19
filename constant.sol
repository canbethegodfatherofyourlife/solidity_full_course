//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 

contract NonConstant{
    uint public num = 9;
}

// 131391

contract Constant{
    uint public constant Num = 9;
}

// 105657
