// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract UserStorage {
    struct Profile {
        uint256 id;
        bytes32 username;
    }

    mapping(uint256 => Profile) profiles;

    uint256 latestUserId = 0;

    function createUser(bytes32 _username) public returns (uint256) {
        latestUserId++;

        profiles[latestUserId] = Profile(latestUserId, _username);

        return latestUserId;
    }
}
