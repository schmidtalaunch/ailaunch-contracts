// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {TransferHelper} from "./libraries/TransferHelper.sol";
import {ERC20} from "./ERC20.sol";

contract BondingCurve is Initializable {
    modifier checkDeadline(uint256 deadline) {
        _;
    }

    modifier lock() {
        _;
    }

    function initialize(
        string memory name,
        string memory symbol,
        address _tradingFeeReceiver,
        address _listingFeeReceiver,
        address _tokenY,
        address _creator,
        bytes calldata
    ) external initializer returns (address) {}

    function exactIn(
        bool xForY,
        uint128 amountIn,
        uint128 amountOutMin,
        bytes32 message,
        bytes memory signature,
        uint256 deadline
    ) external payable lock checkDeadline(deadline) {}

    function update(
        bool xForY,
        uint128 reserveIn,
        uint128 reserveOut
    ) internal {}

    function pay(address token, address to, uint256 amount) internal {}

    function addLiquidity() internal {}

    function skim() external {}

    function getInitHash() internal pure returns (bytes32) {
        bytes memory bytecode = type(ERC20).creationCode;
        return keccak256(abi.encodePacked(bytecode));
    }

    function computeAddress() internal view returns (address token) {
        token = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            hex"ff",
                            address(this),
                            keccak256(abi.encode(address(this))),
                            ERC20_INIT_CODE_HASH
                        )
                    )
                )
            )
        );
    }

    receive() external payable {}
}
