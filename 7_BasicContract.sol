// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint storedData;
    address owner;
    constructor(){
        owner=msg.sender;
    }
    
    function set(uint x) public{
        storedData = x;
        // if(msg.sender==owner){
        //     _;
        // }else {
        //     require(msg.sender==owner, "Only the owner can call this function");
        // }
    }
    function get() public view returns (uint) {
        return storedData;
    }
    
}