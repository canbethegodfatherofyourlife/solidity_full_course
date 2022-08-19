//SPDX-License-Identifier: Unlicense
pragma solidity <=0.8.9 >=0.8.0; 

contract SendMoney{
    error InvalidAmt (uint256 sentAmt, uint256 minRequiredAmt,address _addr);
    
    uint public minReqAmt;
    mapping(address => uint) public balances;

    constructor(uint _minReqAmt){
        minReqAmt = _minReqAmt;
    }

    function send() public payable{
        // require(minReqAmt <= msg.value,'Send atleast minReqAmt');
        if (msg.value < minReqAmt) {
            revert InvalidAmt({
                sentAmt: msg.value,
                minRequiredAmt: minReqAmt,
                _addr: msg.sender
            });
        }
        balances[msg.sender] += msg.value;
    }
}
