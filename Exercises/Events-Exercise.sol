// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract EventExample {
    // 1️⃣ Add an event called "NewUserRegistered" with 2 arguments
    // 👉 user as address type
    // 👉 username as string type
    // CODE HERE 👇
    
    struct User {
        string username;
        uint256 age;
    }
    
    mapping(address => User) public users;
    
    function registerUser(string memory _username, uint256 _age) public {
        User storage newUser = users[msg.sender];
        newUser.username = _username;
        newUser.age = _age;
        
        // 2️⃣ Emit the event with msg.sender and username as the inputs
        // CODE HERE 👇

    }
}
