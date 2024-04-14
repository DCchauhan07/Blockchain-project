// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SetGetContract {
    string public name;
    string public email;
    string public mobile;

    event DetailsSet(string name, string email, string mobile);

    function setDetails(string memory _name, string memory _email, string memory _mobile) external {
        name = _name;
        email = _email;
        mobile = _mobile;
        emit DetailsSet(_name, _email, _mobile);
    }

    function getDetails() external view returns (string memory, string memory, string memory) {
        return (name, email, mobile);
    }
}
