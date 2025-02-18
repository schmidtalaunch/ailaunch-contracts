// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {INonfungiblePositionManager} from "./interfaces/INonfungiblePositionManager.sol";

contract PositionLocker {
    constructor(address posmAddress) {}

    function deposit(
        address owner,
        uint256 tokenId,
        uint256 unlockAt
    ) external {}

    function collectAllFees(
        uint256 tokenId
    ) external returns (uint256 amount0, uint256 amount1) {}

    function retrieveNFT(uint256 tokenId) external {}

    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
