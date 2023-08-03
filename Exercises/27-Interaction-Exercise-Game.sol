// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 2️⃣ Set up a connection to the User Contract throught IUser in constructor
// 3️⃣ Call the createUser function with the correct inputs

interface IUser {
    function createUser(address userAddress, string memory username) external;
}

contract Game {
    uint public gameCount;
    IUser public userContract;

    constructor(address _userContractAddress) {
        // CODE HERE
    }

    function startGame(string memory username) external {
        // Create a user in the User contract
        gameCount++;
    
        // CODE HERE
    }
}