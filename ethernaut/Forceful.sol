// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

contract Ff{
    function val() public view returns(uint){
        return address(this).balance;
    }
}

contract Sd{
    function sendVal(address payable Uper) public payable{
        selfdestruct(Uper);
    }
}
//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
