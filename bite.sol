fvferve







  }

  function burn(uint value) external{
    require(balanceOf(msg.sender) >= value, "insufficient funds");
    _balance[msg.sender] -= value;
    _totalSupply -= valu























