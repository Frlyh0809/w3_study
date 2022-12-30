// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/finance/VestingWallet.sol";

contract VestingWallet_v1 is VestingWallet{
    constructor(address beneficiaryAddress, uint64 durationSeconds) VestingWallet(beneficiaryAddress, uint64(block.timestamp), uint64(durationSeconds)) {

    }
    function releaseToken() public virtual{
        require(checkExpiry(),"Time is not up");
        release();

    }
    function checkExpiry() public view returns(bool success){
        uint256 time = VestingWallet.start() + VestingWallet.duration();

        if(time > uint256(block.timestamp)){

            return true;
        }else{
            return false;
        }

    }

}
