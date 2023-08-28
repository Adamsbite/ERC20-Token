 // SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


// A token that can be transfered from one person to the other
// it should have a name
// it should maximum supply
// it should have initial supply
// total supply
// symbol 
// owner
// balanceOf
//allowance
//minting
//burnable
//event

contract CHTIX{

    string _name;
    string _symbol;
    uint constant DECIMAL = 18;
    uint _totalSupply;
// return the balance of user which is the address
    mapping(address => uint) _balance;
    // owner => spender => value
    mapping(address => mapping(address => uint)) _allowance;

    event Transfer(address from, address to, uint value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    event Minted(address to, uint value);
