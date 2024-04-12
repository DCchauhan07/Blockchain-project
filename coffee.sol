//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Transactions {

    //Address --> Contract -- deposit
    function deposit() external payable {
    }

    function getAddress() external view returns(address) {
        return address(this);
    }

}