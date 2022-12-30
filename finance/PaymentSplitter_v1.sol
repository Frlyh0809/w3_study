// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/finance/PaymentSplitter.sol";

contract PaymentSplitter_v1 is PaymentSplitter {

    address[] private payees = [0x04C0ab5684EAEBecf1aCCe32c0c5a1B07425EB80, 0x0CFB60aa24eE5606CECBAF709801b0Ef78088E5B];
    uint256[] private shares_ = [1, 2];

    constructor() PaymentSplitter(payees, shares_) {

    }

}