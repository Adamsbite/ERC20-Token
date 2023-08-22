# ERC20-Token n


2. Compile the contract using a Solidity compiler of your choice.

3. Deploy the contract to the Ethereum network of your choice.

4. Interact with the contract using the provided functions:

- `name()`: Returns the name of the token.
- `symbol()`: Returns the symbol of the token.
- `decimals()`: Returns the number of decimal places used by the token.
- `totalSupply()`: Returns the total supply of the token.
- `balanceOf(address _owner)`: Returns the token balance of a specific address.
- `transfer(address _to, uint256 _value)`: Transfers tokens from the sender's address to the specified address.
- `transferFrom(address _from, address _to, uint256 _value)`: Transfers tokens from a specified address to another address.
- `approve(address _spender, uint256 _value)`: Approves a specified address to spend a specified amount of tokens on behalf of the sender.
- `allowance(address _owner, address _spender)`: Returns the amount of tokens that a specified address is allowed to spend on behalf of another address.
- `mint(address _to, uint value)`: Mints new tokens and assigns them to the specified address.
- `burn(uint value)`: Burns a specified amount of tokens from the sender's address.

## License

This contract is released under the MIT License. See [LICENSE](LICENSE) for more information.
