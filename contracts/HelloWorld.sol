pragma solidity ^0.4.4;
contract HelloWorld {
    uint public balances;
    
    //construction function
    //run only once upon contract deployment

    function HelloWorld() {
       balances = 1000;
    }
}