// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Define a Tweet Struct with author, content, timestamp, likes
// 2️⃣ Add the struct to array
// 3️⃣ Test Tweets

contract Twitter {

    // define our struct
    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    // add our code
    mapping(address => Tweet[] ) public tweets;

    function createTweet(string memory _tweet) public {
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);
    }

    function getTweet(address _owner, uint _i) public view returns (Tweet memory) {
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public view returns (Tweet[] memory ){
        return tweets[_owner];
    }

}