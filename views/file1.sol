// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserRegistration {
    struct UserInfo {
        string name;
        string email;
        string phoneNumber;
    }

    UserInfo[] public users;

    event UserRegistered(
        address indexed userAddress,
        string name,
        string email,
        string phoneNumber,
        uint256 timestamp
    );

    function registerUser(
        string memory _name,
        string memory _email,
        string memory _phoneNumber
    ) public {
        // Input validation can be added here

        UserInfo memory newUser = UserInfo(_name, _email, _phoneNumber);
        users.push(newUser);
        emit UserRegistered(msg.sender, _name, _email, _phoneNumber, block.timestamp);
    }

    function getNumberOfUsers() public view returns (uint256) {
        return users.length;
    }
}
