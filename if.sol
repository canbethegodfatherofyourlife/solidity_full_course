//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 

contract IfElse{

    function jeePredictor(uint _a)public pure returns(string memory){
        string memory a;

        if(_a >=90){
            a = 'Will get into IIT';
        }else if(_a>=80 && _a <= 90){
            a = 'Might get into IIT';
        }else{
            a= 'Will not get into IIT';
        }

        return a;
    }
}
