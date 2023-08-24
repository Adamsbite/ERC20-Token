
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CHTIX {
    string _name; // 1
    string _symbol; // 2
    uint constant DECIMAL = 18; // 3
    uint _totalSupply; // 4
    mapping(address => uint) _balance; // 5
    mapping(address => mapping(address => uint)) _allowance; // 6

    event Transfer(address from, address to, uint value); // 7
    event Approval(address indexed _owner, address indexed _spender, uint256 _value); // 8
    event Minted(address to, uint value); // 9

    constructor(string memory name_, string memory symb_) { // 10
        _name = name_;
        _symbol = symb_;
    }

    function name() public view returns (string memory) { // 11
        return _name;
    }

    function symbol() public view returns (string memory) {  // 12
        return _symbol;
    }

    function decimals() public pure returns (uint) { // 13
        return DECIMAL;
    }

    function totalSupply() public view returns (uint256) { // 14
        return _totalSupply;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) { // 15
        return _balance[_owner];
    }

    function transfer(address _to, uint256 _value) public returns (bool success) { // 16
        require(_to != address(0), "transfer to address ZERO not allowed");
        require(_value > 0, "increase value");
        require(balanceOf(msg.sender) >= _value, "insufficient funds");
        _balance[msg.sender] -= _value;
        _balance[_to] += _value;
        success = true;
        emit Transfer(msg.sender, _to, _value);
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) { // 17
        require(_to != address(0), "transfer to address ZERO not allowed");
        require(_value > 0, "increase value");
        require(balanceOf(_from) >= _value, "insufficient funds");
        require(_value <= allowance(_from, _to), "insufficient allowance");
        _allowance[_from][_to] -= _value;
        _balance[_from] -= _value;
        _balance[_to] += _value;
        success = true;
        emit Transfer(_from, _to, _value);
    }

    function approve(address _spender, uint256 _value) public returns (bool success) { // 18
        _allowance[msg.sender][_spender] = _value;
        success = true;
        emit Approval(msg.sender, _spender, _value);
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) { // 19
        return _allowance[_owner][_spender];
    }

    function mint(address _to, uint value) external { // 20
        require(_to != address(0), "transfer to address ZERO not allowed");
        _totalSupply += value;
        _balance[_to] += value;
        emit Minted(_to, value);
    }

    function burn(uint value) external { // 21
        require(balanceOf(msg.sender) >= value, "insufficient funds");
        _balance[msg.sender] -= value;
        _totalSupply -= value;
        // Additional logic for handling the remaining 10% of burned tokens
    }
}
