// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

interface IAI {
    function nofitySwapIn(
        address caller,
        bool xForY,
        uint128 amountIn,
        uint128 amountOut,
        uint128 reserveX,
        uint128 reserveY
    ) external;
    function nofityBondingCurveComplete(address pool, address tokenX, address tokenY) external;
}
