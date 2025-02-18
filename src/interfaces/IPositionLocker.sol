// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

interface IPositionLocker {
    function deposit(address owner, uint256 tokenId, uint256 unlockAt) external;
}
