// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20PresetMinterPauser.sol";

contract ERC20WithMinerReward is ERC20 {
    constructor() ERC20("Reward", "RWD") {}

    function mintMinerReward() public {
        // _mint(block.coinbase, 1000);
        _mint(msg.sender, 1000);
    }
}


contract MinerRewardMinter {
    ERC20PresetMinterPauser _token;

    constructor(ERC20PresetMinterPauser token) {
        _token = token;
    }

    function mintMinerReward() public {
        _token.mint(block.coinbase, 1000);
    }
}