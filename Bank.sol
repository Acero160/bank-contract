// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;

contract Bank{

    // Variables
    mapping (address => uint) balance;

    // Events
    event Transfer (address _from, address _to, uint _amount);

    // Functions
    function addBalance (uint _amount) external returns (uint _balance){

        require (_amount > 0, "Error: The invested amount must be greater than 0.");
        
        return balance[msg.sender] += _amount;
    }

    function getBalance () external view returns (uint _balance){
        return balance[msg.sender];
    }

    function transfer (address _to, uint _amount) external{
        _transfer (msg.sender, _to, _amount);
    }

    function _transfer (address _from, address _to, uint _amount) private{

        require (_amount > 0, "Error: The amount to transfer must be greater than 0.");

        balance[_from] -= _amount;
        balance[_to] += _amount;
        emit Transfer(_from, _to, _amount);
    }
}
