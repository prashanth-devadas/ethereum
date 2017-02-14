pragma solidity ^0.4.4;
contract HelloWorld {
    
    address public owner;
    mapping(address => uint) balances;

    //constructor function
    //run only once upon contract deployment

    function HelloWorld() {
        owner=msg.sender;
        balances[owner] = 1000;
    
    }

    function transfer(address _to, uint _value) returns (bool tx_state){

        if (balances[msg.sender] < _value) {
            return false;
        }

        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
    }

    function getBalance(address _user) constant returns (uint _balance) {
        return balances[_user];
    }

}