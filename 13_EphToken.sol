pragma solidity ^0.8.0;

contract ephToken{

    mapping (address => uint) public balance;
    address payable wallet;

    constructor (address payable _wallet){
        wallet = _wallet;
    } 

    event Purchase (
        address _buyer,
        uint _amount
    );
    // fallback function
    // function()payable external receive{
    //     buyToken();
    // }

        

    function buy1Token()public payable{
        // to buy 1 token
        balance[msg.sender] ++;
        // to send ether
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }


function buyMoreToken(uint _amount)public payable{
        // to buy 1 token
        // uint _amount;
        balance[msg.sender] += _amount;
        // to send ether
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }





}