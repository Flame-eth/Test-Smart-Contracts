pragma solidity ^0.8.0;

contract MyCoin{
    uint coin;
    address public owner;

   
   constructor() {
       owner=msg.sender;
   }


        
    function showBalance()public view returns(uint){
        function mint();
        uint totalCoin;
        totalCoin = newCoin + coin;
        return totalCoin;
    } 




     function mint(uint newCoin)public{
        coin = newCoin;
      require (msg.sender==owner);
    }

}

