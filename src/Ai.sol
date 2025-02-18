// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {IBondingCurve} from "./interfaces/IBondingCurve.sol";
import {IERC20Burnable, IERC20} from "./interfaces/IERC20Burnable.sol";

contract Ai is OwnableUpgradeable, UUPSUpgradeable {
    function initialize(
        address _tradingFeeReceiver,
        address _listingFeeReceiver,
        address _implementation,
        uint256 _feeAmount,
        uint256 _feeChat
    ) external initializer {}

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function clonePool(
        address implementation,
        string memory name,
        string memory symbol,
        address tokenY,
        bytes calldata data
    ) external returns (address) {}

    function predictCompetitionAddress(
        address _implementation,
        address _sender,
        uint256 _nonce
    ) external view returns (address) {}

    function attachAgent(address token, bytes32 data) external {}

    function chat(address token, bytes32 data) external {}

    function nofitySwapIn(
        address caller,
        bool xForY,
        uint128 amountIn,
        uint128 amountOut,
        uint128 reserveX,
        uint128 reserveY
    ) external {}

    function nofityBondingCurveComplete(
        address pool,
        address tokenX,
        address tokenY
    ) external {}

    receive() external payable {}
}
