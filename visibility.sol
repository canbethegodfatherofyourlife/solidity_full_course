//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;    


// Public -> Outside, Within, Derived, Other Contracts
// Private -> Within 
// External -> Outside, Derived,Other Contracts
// Internal -> Within, Derived

contract Polygon{

    function f1() public pure returns(uint){
        f4();
        return 1;
    }

    function f2() external pure returns(uint){
        return 2;
    }

    function f3() internal pure returns(uint){
        return 3;
    }

    function f4() private pure returns(uint){
        return 4;
    }
}

contract Btc{

    // object creation
    // Contract_Name instance = new ContractName()

    Polygon poly = new Polygon();
    uint public y = poly.f4();
}
