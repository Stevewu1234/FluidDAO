// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
* @title IOSG ERC20 token
*/
contract IOSGToken is ERC20,Ownable {
    /**
    * @dev 部署合约
    * @param _initialSupply token总发行量(精度为18)
    * @param _name token名称
    * @param _symbol token简称
    */
    constructor(
        uint256 _initialSupply,
        string memory _name,
        string memory _symbol)
    ERC20(_name, _symbol) {
        _mint(msg.sender, _initialSupply);
    }

    /**
    * @dev 给用户增发
    * @param _userAddress 收款人地址
    * @param _supply token发放量(精度为18)
    */
    function mint(address _userAddress, uint256 _supply) public onlyOwner {
        _mint(_userAddress, _supply);
    }
}

