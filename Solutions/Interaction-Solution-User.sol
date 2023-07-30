// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract User {
    struct Player {
        address playerAddress;
        string username;
        uint256 score;
    }

    mapping(address => Player) public players;

    function createUser(address userAddress, string memory username) external {
        require(players[userAddress].playerAddress == address(0), "User already exists");

        Player storage newPlayer = players[userAddress];
        newPlayer.playerAddress = userAddress;
        newPlayer.username = username;
        newPlayer.score = 0;
    }
}