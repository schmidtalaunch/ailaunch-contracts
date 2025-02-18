// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

interface IBondingCurve {
    function initialize(
        string memory name,
        string memory symbol,
        address _tradingFeeReceiver,
        address _listingFeeReceiver,
        address _tokenY,
        address _creator,
        bytes calldata data
    ) external returns (address);
}
