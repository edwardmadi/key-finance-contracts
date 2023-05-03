// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.19;

import "./uniswap/IUniswapV3Staker.sol";
import "./ILpStaker.sol";

interface ILpRewardHelper {
    function claimableRewards(ILpStaker lpStaker, uint256[] memory tokenId) external view returns (uint256);
    function claimableReward(ILpStaker lpStaker, uint256 tokenId) external view returns (uint256);
    function collectibleFees(ILpStaker lpStaker, uint256[] memory tokenIds) external view returns (uint256 tokensOwed0, uint256 tokensOwed1);
    function collectibleFee(ILpStaker lpStaker, uint256 tokenId) external view returns (uint256 tokensOwed0, uint256 tokensOwed1);
}