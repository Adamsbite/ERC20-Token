 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract menty {
    // The contract name is "menty"

    // The function name is "add", and it takes two input arguments: x and y of type uint (unsigned integer)
    // The "pure" keyword indicates that this function does not modify the contract's state and only returns a value
    // The "external" keyword indicates that this function can be called externally, not from within the contract
    function added(uint x, uint y) external pure returns (uint) {
        // The function returns the sum of x and y
        return x + y;
    }

     function add( ) external pure returns (uint) {
         uint age = 4;
         uint mendy = 44;
         uint adddd = age + mendy;
         return adddd;

     }
    function adding(uint age, uint mendy) external pure returns (uint) {
    uint adddd = age + mendy;
    return adddd;
}
    function calculateArea(uint length, uint width) external pure returns (uint) {
    return (length * width);
}  

// pragma solidity >=0.4.22 <0.9.0; 
 
    function return_example() public pure returns(uint, uint, uint, string memory){
      uint num1 = 10;
      uint num2 = 16;
      uint sum = num1 + num2;
      uint prod = num1 * num2;
      uint diff = num2 - num1;
      string memory message = "Multiple return values";
      return (sum, prod, diff, message);
   }

   // I'm a comment!
// SPDX-License-Identifier: MIT

 

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;


// PATRIC COLLINS VIDEOSSSSSSSSSSSSSS
 
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}




