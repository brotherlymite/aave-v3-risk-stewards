// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {RiskStewardsEthereum} from '../../../../scripts/networks/RiskStewardsEthereum.s.sol';
import {IAaveV3ConfigEngine} from 'aave-v3-origin/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';
/**
 * @title CapsUpdates
 * @author brotherlymite
 * - discussion: TODO
 * - deploy-command: make run-script contract=src/contracts/updates/20251016_AaveV3Ethereum_CapsUpdates/AaveV3Ethereum_CapsUpdates_20251016.sol:AaveV3Ethereum_CapsUpdates_20251016 network=mainnet broadcast=false generate_diff=true skip_timelock=false
 */
contract AaveV3Ethereum_CapsUpdates_20251016 is RiskStewardsEthereum {
  function name() public pure override returns (string memory) {
    return 'AaveV3Ethereum_CapsUpdates_20251016';
  }

  function capsUpdates() public pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](2);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3EthereumAssets.WETH_UNDERLYING,
      supplyCap: 10,
      borrowCap: 10
    });
    capsUpdate[1] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3EthereumAssets.USDC_UNDERLYING,
      supplyCap: 5,
      borrowCap: 5
    });

    return capsUpdate;
  }
}
