// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1. Create a Twitter Contract ✅
// 2. Create a mapping between user and tweet ✅
// 3. Add function to create a tweet and save it in mapping ✅
// 4. Create a function to get Tweet ✅
// 5. Add array of tweets ✅

contract Twitter {

    // add our code
    mapping(address => string[] ) public tweets;

    function createTweet(string memory _tweet) public {
        tweets[msg.sender].push(_tweet);
    }

    function getTweet(address _owner, uint _i) public view returns (string memory) {
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public view returns (string[] memory ){
        return tweets[_owner];
    }

}