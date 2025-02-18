// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ETH2 is ERC20 {
    constructor() ERC20("ETH2 as ERC20 token", "ETH2") {
        _mint(msg.sender, 100_000_000 ether);
    }
}
