// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a new Player and save it to players mapping with the given data


contract User {
    struct Player {
        address playerAddress;
        string username;
        uint256 score;
    }

    mapping(address => Player) public players;

    function createUser(address userAddress, string memory username) external {
        require(players[userAddress].playerAddress == address(0), "User already exists");

        // Create a new player here 👇
    }
}